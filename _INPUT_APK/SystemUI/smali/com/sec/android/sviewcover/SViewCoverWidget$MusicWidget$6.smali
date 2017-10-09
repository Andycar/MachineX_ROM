.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$6;
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
    .line 3289
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3293
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3294
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    .line 3296
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.musicplus.action.SVIEWCOVER_PLAYLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3297
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3299
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$4100(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3305
    :goto_0
    return-void

    .line 3301
    :catch_0
    move-exception v0

    .line 3302
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
