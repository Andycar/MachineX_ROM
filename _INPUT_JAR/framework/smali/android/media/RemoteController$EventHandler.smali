.class Landroid/media/RemoteController$EventHandler;
.super Landroid/os/Handler;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method public constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "rc"    # Landroid/media/RemoteController;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 835
    iput-object p1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    .line 836
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 837
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 841
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_80

    .line 868
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_22
    return-void

    .line 843
    :pswitch_23
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    # invokes: Landroid/media/RemoteController;->onNewPendingIntent(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v2, v0}, Landroid/media/RemoteController;->access$1100(Landroid/media/RemoteController;ILandroid/app/PendingIntent;)V

    goto :goto_22

    .line 846
    :pswitch_2f
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteController$PlaybackInfo;

    # invokes: Landroid/media/RemoteController;->onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V
    invoke-static {v1, v2, v0}, Landroid/media/RemoteController;->access$1200(Landroid/media/RemoteController;ILandroid/media/RemoteController$PlaybackInfo;)V

    goto :goto_22

    .line 849
    :pswitch_3b
    iget-object v0, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/RemoteController;->onNewTransportInfo(II)V
    invoke-static {v0, v1, v2}, Landroid/media/RemoteController;->access$1300(Landroid/media/RemoteController;II)V

    goto :goto_22

    .line 852
    :pswitch_45
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    # invokes: Landroid/media/RemoteController;->onNewMetadata(ILandroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Landroid/media/RemoteController;->access$1400(Landroid/media/RemoteController;ILandroid/os/Bundle;)V

    goto :goto_22

    .line 855
    :pswitch_51
    iget-object v2, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v0, :cond_5d

    :goto_59
    # invokes: Landroid/media/RemoteController;->onClientChange(IZ)V
    invoke-static {v2, v3, v0}, Landroid/media/RemoteController;->access$1500(Landroid/media/RemoteController;IZ)V

    goto :goto_22

    :cond_5d
    move v0, v1

    goto :goto_59

    .line 858
    :pswitch_5f
    iget-object v2, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_69

    :goto_65
    # invokes: Landroid/media/RemoteController;->onDisplayEnable(Z)V
    invoke-static {v2, v0}, Landroid/media/RemoteController;->access$1600(Landroid/media/RemoteController;Z)V

    goto :goto_22

    :cond_69
    move v0, v1

    goto :goto_65

    .line 862
    :pswitch_6b
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/PlaybackState;

    # invokes: Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    invoke-static {v1, v0}, Landroid/media/RemoteController;->access$800(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    goto :goto_22

    .line 865
    :pswitch_75
    iget-object v1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaMetadata;

    # invokes: Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    invoke-static {v1, v0}, Landroid/media/RemoteController;->access$900(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    goto :goto_22

    .line 841
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
        :pswitch_45
        :pswitch_51
        :pswitch_5f
        :pswitch_6b
        :pswitch_75
    .end packed-switch
.end method
