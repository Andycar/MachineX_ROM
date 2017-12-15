.class Landroid/hardware/location/GeofenceHardwareImpl$1;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .registers 2

    .prologue
    .line 531
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 537
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e2

    .line 633
    :goto_5
    return-void

    .line 539
    :pswitch_6
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 540
    .local v8, "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 541
    :try_start_f
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 542
    .local v0, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_29

    .line 544
    if-eqz v0, :cond_23

    .line 546
    :try_start_1e
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v8, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_2c

    .line 549
    :cond_23
    :goto_23
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto :goto_5

    .line 542
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1

    .line 547
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catch_2c
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 552
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "geofenceId":I
    :pswitch_46
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 553
    .restart local v8    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 554
    :try_start_4f
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 555
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_7a

    .line 557
    if-eqz v0, :cond_74

    .line 559
    :try_start_5e
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v8, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_1df

    .line 561
    :goto_63
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 562
    :try_start_6a
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 563
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_7d

    .line 565
    :cond_74
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto :goto_5

    .line 555
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_7a
    move-exception v1

    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v1

    .line 563
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_7d
    move-exception v1

    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v1

    .line 569
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v8    # "geofenceId":I
    :pswitch_80
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 570
    .restart local v8    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 571
    :try_start_89
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 572
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_a4

    .line 574
    if-eqz v0, :cond_9d

    .line 576
    :try_start_98
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v8, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_9d} :catch_1dc

    .line 579
    :cond_9d
    :goto_9d
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_5

    .line 572
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_a4
    move-exception v1

    :try_start_a5
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v1

    .line 583
    .end local v8    # "geofenceId":I
    :pswitch_a7
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 584
    .restart local v8    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 585
    :try_start_b0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 586
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_b0 .. :try_end_bd} :catchall_cb

    .line 588
    if-eqz v0, :cond_c4

    .line 590
    :try_start_bf
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v8, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_c4} :catch_1d9

    .line 593
    :cond_c4
    :goto_c4
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_5

    .line 586
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_cb
    move-exception v1

    :try_start_cc
    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v1

    .line 597
    .end local v8    # "geofenceId":I
    :pswitch_ce
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    move-object v9, v1

    check-cast v9, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .line 598
    .local v9, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 599
    :try_start_dc
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$200(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 602
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$300()Z

    move-result v1

    if-eqz v1, :cond_13a

    const-string v1, "GeofenceHardwareImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeofenceTransistionCallback: GPS : GeofenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$200(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Transition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$400(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$500(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_13a
    monitor-exit v2
    :try_end_13b
    .catchall {:try_start_dc .. :try_end_13b} :catchall_15b

    .line 608
    if-eqz v0, :cond_154

    .line 610
    :try_start_13d
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$200(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v1

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$400(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v2

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$500(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    move-result-wide v4

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mMonitoringType:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_13d .. :try_end_154} :catch_1d6

    .line 616
    :cond_154
    :goto_154
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_5

    .line 606
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_15b
    move-exception v1

    :try_start_15c
    monitor-exit v2
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    throw v1

    .line 620
    .end local v9    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :pswitch_15e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    move-object v0, v1

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 621
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$300()Z

    move-result v1

    if-eqz v1, :cond_183

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence callback reaped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_183
    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 623
    .local v11, "monitoringType":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 624
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_18d
    :try_start_18d
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_1d0

    .line 625
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 626
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 627
    .restart local v8    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3, v11}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    .line 628
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 624
    .end local v8    # "geofenceId":I
    :cond_1cd
    add-int/lit8 v10, v10, 0x1

    goto :goto_18d

    .line 631
    :cond_1d0
    monitor-exit v2

    goto/16 :goto_5

    :catchall_1d3
    move-exception v1

    monitor-exit v2
    :try_end_1d5
    .catchall {:try_start_18d .. :try_end_1d5} :catchall_1d3

    throw v1

    .line 614
    .end local v10    # "i":I
    .end local v11    # "monitoringType":I
    .restart local v9    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :catch_1d6
    move-exception v1

    goto/16 :goto_154

    .line 591
    .end local v9    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    .restart local v8    # "geofenceId":I
    :catch_1d9
    move-exception v1

    goto/16 :goto_c4

    .line 577
    :catch_1dc
    move-exception v1

    goto/16 :goto_9d

    .line 560
    :catch_1df
    move-exception v1

    goto/16 :goto_63

    .line 537
    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_6
        :pswitch_46
        :pswitch_80
        :pswitch_a7
        :pswitch_15e
    .end packed-switch
.end method
