.class Landroid/media/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 370
    iput-object p1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    .line 371
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 376
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_98

    .line 425
    :goto_5
    :pswitch_5
    return-void

    .line 378
    :pswitch_6
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->onRcDisplayClear()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$900(Landroid/media/MediaFocusControl;)V

    goto :goto_5

    .line 383
    :pswitch_c
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/PlayerRecord;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/MediaFocusControl;->onRcDisplayUpdate(Landroid/media/PlayerRecord;I)V
    invoke-static {v1, v0, v2}, Landroid/media/MediaFocusControl;->access$1000(Landroid/media/MediaFocusControl;Landroid/media/PlayerRecord;I)V

    goto :goto_5

    .line 387
    :pswitch_18
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->onReevaluateRemote()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$1100(Landroid/media/MediaFocusControl;)V

    goto :goto_5

    .line 391
    :pswitch_1e
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteVolumeObserver;

    # invokes: Landroid/media/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    invoke-static {v1, v2, v0}, Landroid/media/MediaFocusControl;->access$1200(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_5

    .line 396
    :pswitch_2a
    const-string v1, "MediaFocusControl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_RCC_SET_PLAY_ITEM: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # invokes: Landroid/media/MediaFocusControl;->onSetRemoteControlClientPlayItem(ILjava/lang/Long;)V
    invoke-static {v1, v2, v0}, Landroid/media/MediaFocusControl;->access$1300(Landroid/media/MediaFocusControl;ILjava/lang/Long;)V

    goto :goto_5

    .line 402
    :pswitch_5e
    const-string v0, "MediaFocusControl"

    const-string v1, "MSG_RCC_GET_NOW_PLAYING_ENTRIES: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->onGetRemoteControlClientNowPlayingEntries()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$1400(Landroid/media/MediaFocusControl;)V

    goto :goto_5

    .line 407
    :pswitch_6b
    const-string v0, "MediaFocusControl"

    const-string v1, "MSG_RCC_SET_BROWSED_PLAYER: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->onSetRemoteControlClientBrowsedPlayer()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$1500(Landroid/media/MediaFocusControl;)V

    goto :goto_5

    .line 413
    :pswitch_78
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/MediaFocusControl;->access$1600(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_5

    .line 418
    :pswitch_86
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->onReevaluateRemoteControlDisplays()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$1700(Landroid/media/MediaFocusControl;)V

    goto/16 :goto_5

    .line 422
    :pswitch_8d
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto/16 :goto_5

    .line 376
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_18
        :pswitch_5
        :pswitch_1e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_78
        :pswitch_86
        :pswitch_8d
        :pswitch_6b
        :pswitch_2a
        :pswitch_5e
    .end packed-switch
.end method
