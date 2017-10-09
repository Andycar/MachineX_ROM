.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V
    .locals 0

    .prologue
    .line 3268
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 3272
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3900(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3273
    const/4 v0, 0x3

    .line 3274
    .local v0, "streamType":I
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$4000(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->isAllSoundOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3276
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3900(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 3282
    :goto_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3283
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    .line 3285
    .end local v0    # "streamType":I
    :cond_0
    return-void

    .line 3278
    .restart local v0    # "streamType":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3900(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$3900(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method
