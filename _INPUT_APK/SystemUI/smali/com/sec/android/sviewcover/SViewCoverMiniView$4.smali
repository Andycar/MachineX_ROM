.class Lcom/sec/android/sviewcover/SViewCoverMiniView$4;
.super Landroid/database/ContentObserver;
.source "SViewCoverMiniView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverMiniView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x6

    .line 374
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 375
    const-string v0, "SViewCoverMiniView"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    return-void
.end method
