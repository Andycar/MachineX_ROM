.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
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
    .line 754
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 755
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 758
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_100

    .line 781
    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/wifi/WifiScanner;->access$200(I)Ljava/lang/Object;

    move-result-object v0

    .line 783
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_5c

    .line 784
    const-string v2, "WifiScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid listener key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v0    # "listener":Ljava/lang/Object;
    :goto_28
    :pswitch_28
    return-void

    .line 760
    :pswitch_29
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3f

    .line 761
    # getter for: Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {}, Landroid/net/wifi/WifiScanner;->access$000()Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x11001

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 768
    :goto_37
    # getter for: Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Landroid/net/wifi/WifiScanner;->access$100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_28

    .line 763
    :cond_3f
    const-string v2, "WifiScanner"

    const-string v3, "Failed to set up channel connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    # setter for: Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/wifi/WifiScanner;->access$002(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_37

    .line 773
    :pswitch_4a
    const-string v2, "WifiScanner"

    const-string v3, "Channel connection lost"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    # setter for: Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/wifi/WifiScanner;->access$002(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 777
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto :goto_28

    .line 787
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_5c
    const-string v2, "WifiScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_10e

    .line 825
    :pswitch_7b
    const-string v2, "WifiScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 793
    :pswitch_96
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    goto :goto_28

    .line 796
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_9c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 797
    .local v1, "result":Landroid/net/wifi/WifiScanner$OperationResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v2, v1, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    iget-object v3, v1, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    .line 798
    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/wifi/WifiScanner;->access$300(I)Ljava/lang/Object;

    goto/16 :goto_28

    .line 802
    .end local v1    # "result":Landroid/net/wifi/WifiScanner$OperationResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_b0
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_28

    .line 806
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_bf
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 807
    .local v1, "result":Landroid/net/wifi/ScanResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_28

    .line 810
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_ca
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/net/wifi/WifiScanner$ScanListener;->onPeriodChanged(I)V

    goto/16 :goto_28

    .line 813
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_d3
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/net/wifi/WifiScanner$BssidListener;->onFound([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_28

    .line 817
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_e2
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onChanging([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_28

    .line 821
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_f1
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onQuiescence([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_28

    .line 758
    :pswitch_data_100
    .packed-switch 0x11000
        :pswitch_29
        :pswitch_6
        :pswitch_28
        :pswitch_6
        :pswitch_4a
    .end packed-switch

    .line 790
    :pswitch_data_10e
    .packed-switch 0x27005
        :pswitch_b0
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_d3
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_e2
        :pswitch_f1
        :pswitch_96
        :pswitch_9c
        :pswitch_ca
        :pswitch_bf
    .end packed-switch
.end method
