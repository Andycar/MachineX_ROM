.class Landroid/net/wifi/RttManager$ServiceHandler;
.super Landroid/os/Handler;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 439
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 440
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 443
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_b4

    .line 466
    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/RttManager;->getListener(I)Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/wifi/RttManager;->access$200(I)Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_5c

    .line 468
    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid listener key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v0    # "listener":Ljava/lang/Object;
    :goto_28
    :pswitch_28
    return-void

    .line 445
    :pswitch_29
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_3f

    .line 446
    # getter for: Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {}, Landroid/net/wifi/RttManager;->access$000()Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x11001

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 453
    :goto_37
    # getter for: Landroid/net/wifi/RttManager;->sConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Landroid/net/wifi/RttManager;->access$100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_28

    .line 448
    :cond_3f
    const-string v1, "RttManager"

    const-string v2, "Failed to set up channel connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    # setter for: Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/RttManager;->access$002(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_37

    .line 458
    :pswitch_4a
    const-string v1, "RttManager"

    const-string v2, "Channel connection lost"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    # setter for: Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/RttManager;->access$002(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 462
    invoke-virtual {p0}, Landroid/net/wifi/RttManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_28

    .line 471
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_5c
    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_c2

    .line 489
    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 477
    :pswitch_96
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V

    .line 478
    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/wifi/RttManager;->access$300(I)Ljava/lang/Object;

    goto :goto_28

    .line 481
    :pswitch_9f
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportFailure(Ljava/lang/Object;Landroid/os/Message;)V

    .line 482
    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/wifi/RttManager;->access$300(I)Ljava/lang/Object;

    goto :goto_28

    .line 485
    :pswitch_a8
    check-cast v0, Landroid/net/wifi/RttManager$RttListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    .line 486
    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/wifi/RttManager;->access$300(I)Ljava/lang/Object;

    goto/16 :goto_28

    .line 443
    :pswitch_data_b4
    .packed-switch 0x11000
        :pswitch_29
        :pswitch_6
        :pswitch_28
        :pswitch_6
        :pswitch_4a
    .end packed-switch

    .line 474
    :pswitch_data_c2
    .packed-switch 0x27202
        :pswitch_9f
        :pswitch_96
        :pswitch_a8
    .end packed-switch
.end method

.method reportFailure(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 7
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 501
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    .line 502
    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 503
    .local v0, "bundle":Landroid/os/Bundle;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    .end local p1    # "listener":Ljava/lang/Object;
    iget v2, p2, Landroid/os/Message;->arg1:I

    const-string v3, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    .line 504
    return-void
.end method

.method reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 6
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 495
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    .line 496
    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    .line 497
    .local v0, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    .end local p1    # "listener":Ljava/lang/Object;
    iget-object v2, v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    invoke-interface {p1, v2}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    .line 498
    return-void
.end method
