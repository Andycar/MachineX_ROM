.class Landroid/net/ConnectivityManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityManager.CallbackHandler"


# instance fields
.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V
    .registers 6
    .param p2, "looper"    # Landroid/os/Looper;
    .param p4, "refCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "cm"    # Landroid/net/ConnectivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Landroid/net/ConnectivityManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2612
    .local p3, "callbackMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    iput-object p1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    .line 2613
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2614
    iput-object p3, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    .line 2615
    iput-object p4, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2616
    iput-object p5, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCm:Landroid/net/ConnectivityManager;

    .line 2617
    return-void
.end method

.method private getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 4
    .param p1, "req"    # Landroid/net/NetworkRequest;

    .prologue
    .line 2746
    iget-object v1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2747
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    monitor-exit v1

    return-object v0

    .line 2748
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "c"    # Ljava/lang/Class;

    .prologue
    .line 2743
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2621
    const-string v7, "ConnectivityManager.CallbackHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CM callback handler got msg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_188

    .line 2740
    :goto_1f
    return-void

    .line 2624
    :pswitch_20
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2626
    .local v6, "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2627
    .local v1, "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_3a

    .line 2628
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    goto :goto_1f

    .line 2630
    :cond_3a
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for PRECHECK message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2635
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_42
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2637
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2638
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_5c

    .line 2639
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    goto :goto_1f

    .line 2641
    :cond_5c
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for AVAILABLE message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2646
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_64
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2648
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2649
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_80

    .line 2650
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7, v8}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    goto :goto_1f

    .line 2653
    :cond_80
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for LOSING message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2658
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_88
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2661
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2662
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_a3

    .line 2663
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    goto/16 :goto_1f

    .line 2665
    :cond_a3
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for LOST message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 2670
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_ac
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2672
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    .line 2673
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v8, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2674
    :try_start_b8
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v1, v0

    .line 2675
    monitor-exit v8
    :try_end_c3
    .catchall {:try_start_b8 .. :try_end_c3} :catchall_ca

    .line 2676
    if-eqz v1, :cond_cd

    .line 2677
    invoke-virtual {v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    goto/16 :goto_1f

    .line 2675
    :catchall_ca
    move-exception v7

    :try_start_cb
    monitor-exit v8
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v7

    .line 2679
    :cond_cd
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for UNAVAIL message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 2684
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_d6
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2686
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2687
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_f9

    .line 2688
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Network;

    .line 2689
    .local v4, "network":Landroid/net/Network;
    const-class v7, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 2692
    .local v2, "cap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v4, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto/16 :goto_1f

    .line 2694
    .end local v2    # "cap":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    :cond_f9
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for CAP_CHANGED message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 2699
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_102
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    .line 2701
    .restart local v6    # "request":Landroid/net/NetworkRequest;
    invoke-direct {p0, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getCallbacks(Landroid/net/NetworkRequest;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 2702
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v1, :cond_125

    .line 2703
    const-class v7, Landroid/net/Network;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Network;

    .line 2704
    .restart local v4    # "network":Landroid/net/Network;
    const-class v7, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 2707
    .local v3, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v1, v4, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto/16 :goto_1f

    .line 2709
    .end local v3    # "lp":Landroid/net/LinkProperties;
    .end local v4    # "network":Landroid/net/Network;
    :cond_125
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for IP_CHANGED message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 2714
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :pswitch_12e
    const-class v7, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v7}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkRequest;

    .line 2715
    .local v5, "req":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    .line 2716
    .restart local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v8, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2717
    :try_start_13a
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v1, v0

    .line 2718
    monitor-exit v8
    :try_end_145
    .catchall {:try_start_13a .. :try_end_145} :catchall_15f

    .line 2719
    if-eqz v1, :cond_162

    .line 2720
    iget-object v8, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v8

    .line 2721
    :try_start_14a
    iget-object v7, p0, Landroid/net/ConnectivityManager$CallbackHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_159

    .line 2722
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    .line 2724
    :cond_159
    monitor-exit v8

    goto/16 :goto_1f

    :catchall_15c
    move-exception v7

    monitor-exit v8
    :try_end_15e
    .catchall {:try_start_14a .. :try_end_15e} :catchall_15c

    throw v7

    .line 2718
    :catchall_15f
    move-exception v7

    :try_start_160
    monitor-exit v8
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_15f

    throw v7

    .line 2726
    :cond_162
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "callback not found for CANCELED message"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 2731
    .end local v1    # "callbacks":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v5    # "req":Landroid/net/NetworkRequest;
    :pswitch_16b
    const-string v7, "ConnectivityManager.CallbackHandler"

    const-string v8, "Listener quiting"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1f

    .line 2736
    :pswitch_17b
    iget-object v8, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkCapabilities;

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V
    invoke-static {v8, v7, v9}, Landroid/net/ConnectivityManager;->access$100(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    goto/16 :goto_1f

    .line 2622
    :pswitch_data_188
    .packed-switch 0x80001
        :pswitch_20
        :pswitch_42
        :pswitch_64
        :pswitch_88
        :pswitch_ac
        :pswitch_d6
        :pswitch_102
        :pswitch_12e
        :pswitch_16b
        :pswitch_17b
    .end packed-switch
.end method
