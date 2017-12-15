.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
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
    .line 2177
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2178
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 2182
    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->access$000(I)Ljava/lang/Object;

    move-result-object v1

    .line 2183
    .local v1, "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_d4

    .line 2285
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_c
    :goto_c
    :sswitch_c
    return-void

    .line 2185
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_d
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_23

    .line 2186
    # getter for: Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x11001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2193
    :goto_1b
    # getter for: Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_c

    .line 2188
    :cond_23
    const-string v3, "WifiManager"

    const-string v4, "Failed to set up channel connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    # setter for: Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Landroid/net/wifi/WifiManager;->access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1b

    .line 2199
    :sswitch_2e
    const-string v3, "WifiManager"

    const-string v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    # setter for: Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Landroid/net/wifi/WifiManager;->access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 2203
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_c

    .line 2210
    :sswitch_40
    if-eqz v1, :cond_c

    .line 2211
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_c

    .line 2219
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_4a
    if-eqz v1, :cond_c

    .line 2220
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_c

    .line 2224
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_52
    if-eqz v1, :cond_c

    .line 2225
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WpsResult;

    .local v2, "result":Landroid/net/wifi/WpsResult;
    move-object v3, v1

    .line 2226
    check-cast v3, Landroid/net/wifi/WifiManager$WpsCallback;

    iget-object v4, v2, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$WpsCallback;->onStarted(Ljava/lang/String;)V

    .line 2228
    # getter for: Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2229
    :try_start_65
    # getter for: Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$400()Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2230
    monitor-exit v4

    goto :goto_c

    :catchall_70
    move-exception v3

    monitor-exit v4
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_70

    throw v3

    .line 2234
    .end local v2    # "result":Landroid/net/wifi/WpsResult;
    :sswitch_73
    if-eqz v1, :cond_c

    .line 2235
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    goto :goto_c

    .line 2239
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_7b
    if-eqz v1, :cond_c

    .line 2240
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    goto :goto_c

    .line 2244
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_85
    if-eqz v1, :cond_c

    .line 2245
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    goto :goto_c

    .line 2249
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_8d
    if-eqz v1, :cond_c

    .line 2250
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    goto/16 :goto_c

    .line 2254
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_98
    if-eqz v1, :cond_c

    .line 2255
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 2256
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v0, :cond_ac

    .line 2257
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget v4, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto/16 :goto_c

    .line 2259
    .restart local v1    # "listener":Ljava/lang/Object;
    :cond_ac
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_c

    .line 2263
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_b4
    if-eqz v1, :cond_c

    .line 2264
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_c

    .line 2270
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_bf
    if-eqz v1, :cond_c

    .line 2271
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto/16 :goto_c

    .line 2276
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_ca
    if-eqz v1, :cond_c

    .line 2277
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto/16 :goto_c

    .line 2183
    nop

    :sswitch_data_d4
    .sparse-switch
        0x11000 -> :sswitch_d
        0x11002 -> :sswitch_c
        0x11004 -> :sswitch_2e
        0x25002 -> :sswitch_40
        0x25003 -> :sswitch_4a
        0x25005 -> :sswitch_40
        0x25006 -> :sswitch_4a
        0x25008 -> :sswitch_40
        0x25009 -> :sswitch_4a
        0x2500b -> :sswitch_52
        0x2500c -> :sswitch_7b
        0x2500d -> :sswitch_73
        0x2500f -> :sswitch_8d
        0x25010 -> :sswitch_85
        0x25012 -> :sswitch_40
        0x25013 -> :sswitch_4a
        0x25015 -> :sswitch_98
        0x25016 -> :sswitch_b4
        0x70002 -> :sswitch_bf
        0x70003 -> :sswitch_ca
        0x70005 -> :sswitch_bf
        0x70006 -> :sswitch_ca
    .end sparse-switch
.end method
