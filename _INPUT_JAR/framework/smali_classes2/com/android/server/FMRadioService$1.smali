.class Lcom/android/server/FMRadioService$1;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0xa

    .line 230
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 231
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-nez v3, :cond_be

    .line 232
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 233
    .local v1, "stream":I
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 235
    .local v2, "volume":I
    const-string v3, "*** mReceiver: VOLUME_CHANGED_ACTION"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 242
    .local v0, "current_stream_volume":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   current_stream_volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 245
    if-eq v1, v5, :cond_82

    if-ne v1, v8, :cond_8a

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_8a

    :cond_82
    if-ne v2, v0, :cond_8a

    .line 247
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 254
    .end local v0    # "current_stream_volume":I
    .end local v1    # "stream":I
    .end local v2    # "volume":I
    :cond_8a
    :goto_8a
    const-string v3, "com.android.fm.volume_lock"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 255
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a7

    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v3

    if-ne v3, v8, :cond_b2

    .line 256
    :cond_a7
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const-string v4, "com.android.fm.return_back_volume"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/FMRadioService;->mReturnBackVolume:I
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$402(Lcom/android/server/FMRadioService;I)I

    .line 258
    :cond_b2
    const-string v3, "Volume Locked..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$002(Lcom/android/server/FMRadioService;Z)Z

    .line 265
    :cond_bd
    :goto_bd
    return-void

    .line 249
    :cond_be
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_8a

    .line 260
    :cond_c7
    const-string v3, "com.android.fm.volume_unlock"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 261
    const-string v3, "Volume Unlocked..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mReturnBackVolume:I
    invoke-static {v3, v6}, Lcom/android/server/FMRadioService;->access$402(Lcom/android/server/FMRadioService;I)I

    .line 263
    iget-object v3, p0, Lcom/android/server/FMRadioService$1;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->volumeLock:Z
    invoke-static {v3, v7}, Lcom/android/server/FMRadioService;->access$002(Lcom/android/server/FMRadioService;Z)Z

    goto :goto_bd
.end method
