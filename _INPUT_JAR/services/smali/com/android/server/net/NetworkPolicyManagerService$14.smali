.class Lcom/android/server/net/NetworkPolicyManagerService$14;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 2523
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2526
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1a0

    .line 2622
    :pswitch_9
    const/16 v17, 0x0

    :goto_b
    return v17

    .line 2528
    :pswitch_c
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 2529
    .local v15, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 2530
    .local v16, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 2531
    .local v6, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v6, :cond_43

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkPolicyListener;

    .line 2533
    .local v7, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v7, :cond_40

    .line 2535
    :try_start_3b
    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_192

    .line 2531
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2540
    .end local v7    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2541
    const/16 v17, 0x1

    goto :goto_b

    .line 2544
    .end local v3    # "i":I
    .end local v6    # "length":I
    .end local v15    # "uid":I
    .end local v16    # "uidRules":I
    :pswitch_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v11, v17

    check-cast v11, [Ljava/lang/String;

    .line 2545
    .local v11, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 2546
    .restart local v6    # "length":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6e
    if-ge v3, v6, :cond_8a

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkPolicyListener;

    .line 2548
    .restart local v7    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v7, :cond_87

    .line 2550
    :try_start_84
    invoke-interface {v7, v11}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_87} :catch_195

    .line 2546
    :cond_87
    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 2555
    .end local v7    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2556
    const/16 v17, 0x1

    goto/16 :goto_b

    .line 2559
    .end local v3    # "i":I
    .end local v6    # "length":I
    .end local v11    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_9b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2561
    .local v4, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2564
    :try_start_b7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_f8

    .line 2566
    .local v5, "imsIface":Ljava/lang/String;
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/IConnectivityManager;

    move-result-object v17

    const/16 v19, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v10

    .line 2567
    .local v10, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_d3} :catch_eb
    .catchall {:try_start_bc .. :try_end_d3} :catchall_f8

    move-result-object v5

    .line 2571
    .end local v10    # "lp":Landroid/net/LinkProperties;
    :goto_d4
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_fb

    .line 2587
    :goto_e6
    monitor-exit v18

    .line 2588
    const/16 v17, 0x1

    goto/16 :goto_b

    .line 2568
    :catch_eb
    move-exception v2

    .line 2569
    .local v2, "e":Landroid/os/RemoteException;
    const-string v17, "NetworkPolicy"

    const-string v19, "Failed to retrive IMS link properties"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d4

    .line 2587
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "imsIface":Ljava/lang/String;
    :catchall_f8
    move-exception v17

    monitor-exit v18
    :try_end_fa
    .catchall {:try_start_d4 .. :try_end_fa} :catchall_f8

    throw v17

    .line 2579
    .restart local v5    # "imsIface":Ljava/lang/String;
    :cond_fb
    :try_start_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_fb .. :try_end_108} :catch_19c
    .catchall {:try_start_fb .. :try_end_108} :catchall_f8

    .line 2584
    :goto_108
    :try_start_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_11a
    .catchall {:try_start_108 .. :try_end_11a} :catchall_f8

    goto :goto_e6

    .line 2591
    .end local v4    # "iface":Ljava/lang/String;
    .end local v5    # "imsIface":Ljava/lang/String;
    :pswitch_11b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-eqz v17, :cond_14f

    const/4 v14, 0x1

    .line 2592
    .local v14, "restrictBackground":Z
    :goto_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 2593
    .restart local v6    # "length":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_133
    if-ge v3, v6, :cond_151

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkPolicyListener;

    .line 2595
    .restart local v7    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v7, :cond_14c

    .line 2597
    :try_start_149
    invoke-interface {v7, v14}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_14c
    .catch Landroid/os/RemoteException; {:try_start_149 .. :try_end_14c} :catch_198

    .line 2593
    :cond_14c
    :goto_14c
    add-int/lit8 v3, v3, 0x1

    goto :goto_133

    .line 2591
    .end local v3    # "i":I
    .end local v6    # "length":I
    .end local v7    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v14    # "restrictBackground":Z
    :cond_14f
    const/4 v14, 0x0

    goto :goto_124

    .line 2602
    .restart local v3    # "i":I
    .restart local v6    # "length":I
    .restart local v14    # "restrictBackground":Z
    :cond_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2603
    const/16 v17, 0x1

    goto/16 :goto_b

    .line 2606
    .end local v3    # "i":I
    .end local v6    # "length":I
    .end local v14    # "restrictBackground":Z
    :pswitch_162
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2610
    .local v8, "lowestRule":J
    const-wide/16 v18, 0x3e8

    :try_start_170
    div-long v12, v8, v18

    .line 2611
    .local v12, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12, v13}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_181
    .catch Landroid/os/RemoteException; {:try_start_170 .. :try_end_181} :catch_19a

    .line 2615
    .end local v12    # "persistThreshold":J
    :goto_181
    const/16 v17, 0x1

    goto/16 :goto_b

    .line 2618
    .end local v8    # "lowestRule":J
    :pswitch_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2619
    const/16 v17, 0x1

    goto/16 :goto_b

    .line 2536
    .restart local v3    # "i":I
    .restart local v6    # "length":I
    .restart local v7    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v15    # "uid":I
    .restart local v16    # "uidRules":I
    :catch_192
    move-exception v17

    goto/16 :goto_40

    .line 2551
    .end local v15    # "uid":I
    .end local v16    # "uidRules":I
    .restart local v11    # "meteredIfaces":[Ljava/lang/String;
    :catch_195
    move-exception v17

    goto/16 :goto_87

    .line 2598
    .end local v11    # "meteredIfaces":[Ljava/lang/String;
    .restart local v14    # "restrictBackground":Z
    :catch_198
    move-exception v17

    goto :goto_14c

    .line 2612
    .end local v3    # "i":I
    .end local v6    # "length":I
    .end local v7    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v14    # "restrictBackground":Z
    .restart local v8    # "lowestRule":J
    :catch_19a
    move-exception v17

    goto :goto_181

    .line 2580
    .end local v8    # "lowestRule":J
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v5    # "imsIface":Ljava/lang/String;
    :catch_19c
    move-exception v17

    goto/16 :goto_108

    .line 2526
    nop

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_53
        :pswitch_9
        :pswitch_9
        :pswitch_9b
        :pswitch_11b
        :pswitch_162
        :pswitch_185
    .end packed-switch
.end method
