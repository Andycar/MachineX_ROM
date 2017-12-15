.class final Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtendedDisplayListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/display/ExtendedDisplayListener;


# direct methods
.method public constructor <init>(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/ExtendedDisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 588
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 589
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mListener:Landroid/hardware/display/ExtendedDisplayListener;

    .line 590
    return-void

    .line 588
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public clearEvents()V
    .registers 2

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 599
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 603
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6c

    .line 617
    :goto_5
    return-void

    .line 605
    :pswitch_6
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage SIDESYNC_CHANGED= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mListener:Landroid/hardware/display/ExtendedDisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/ExtendedDisplayListener;->onConnectionStatusChanged(I)V

    goto :goto_5

    .line 609
    :pswitch_28
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage EVENT_QOSLEVEL_CHANGED= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mListener:Landroid/hardware/display/ExtendedDisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/ExtendedDisplayListener;->onQoSLevelChanged(I)V

    goto :goto_5

    .line 613
    :pswitch_4a
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage EVENT_BRIDGE_STATUS_CHANGED= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mListener:Landroid/hardware/display/ExtendedDisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/ExtendedDisplayListener;->onBridgeStatusChanged(I)V

    goto :goto_5

    .line 603
    :pswitch_data_6c
    .packed-switch 0x4
        :pswitch_6
        :pswitch_28
        :pswitch_4a
    .end packed-switch
.end method

.method public sendDisplayEvent(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .prologue
    .line 593
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 594
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 595
    return-void
.end method
