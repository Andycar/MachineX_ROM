.class Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUDVFSControlRequest"
.end annotation


# instance fields
.field mCPUDVFSReleaser:Ljava/lang/Runnable;

.field mCallingID:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 13
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 476
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 477
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 469
    const/4 v3, -0x1

    iput v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    .line 470
    new-instance v3, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;

    invoke-direct {v3, p0}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;-><init>(Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;)V

    iput-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    .line 479
    packed-switch p2, :pswitch_data_46

    .line 484
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : invalid type"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    .line 507
    :cond_1c
    :goto_1c
    return-void

    .line 489
    :pswitch_1d
    invoke-virtual {p1}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    .line 490
    .local v2, "supportedFrequency":[I
    if-nez v2, :cond_2d

    .line 491
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : getSupportedFrequency : null"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    goto :goto_1c

    .line 496
    :cond_2d
    const/4 v0, 0x0

    .line 497
    .local v0, "bFound":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    array-length v3, v2

    if-ge v1, v3, :cond_3a

    .line 498
    aget v3, v2, v1

    if-ne p3, v3, :cond_37

    .line 499
    const/4 v0, 0x1

    .line 497
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 502
    :cond_3a
    if-nez v0, :cond_1c

    .line 503
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : invalid frequency"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mInvalidParam:Z

    goto :goto_1c

    .line 479
    :pswitch_data_46
    .packed-switch 0x6
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized cancelFrequencyRequest(I)V
    .registers 5
    .param p1, "callingID"    # I

    .prologue
    .line 549
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 550
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/os/ICustomFrequencyManager;->releasePersistentDVFSLock(ILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    .line 554
    :goto_13
    monitor-exit p0

    return-void

    .line 551
    :catch_15
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_13

    .line 549
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public cancelFrequencyRequestImpl()V
    .registers 6

    .prologue
    .line 538
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 540
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 541
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_19
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    .line 545
    :goto_17
    :try_start_17
    monitor-exit v2

    .line 546
    return-void

    .line 542
    :catch_19
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_17

    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public declared-synchronized doFrequencyRequest(I)V
    .registers 7
    .param p1, "callingID"    # I

    .prologue
    .line 531
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mType:I

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v4}, Landroid/os/ICustomFrequencyManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 535
    :goto_e
    monitor-exit p0

    return-void

    .line 532
    :catch_10
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_e

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .registers 9

    .prologue
    .line 510
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPUDVFSControlRequest : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 513
    :try_start_29
    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5f

    .line 514
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 515
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_4b

    .line 516
    const/4 v1, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$902(Z)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_49} :catch_57
    .catchall {:try_start_29 .. :try_end_49} :catchall_5c

    .line 526
    :goto_49
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_5c

    .line 527
    return-void

    .line 518
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_57
    .catchall {:try_start_4b .. :try_end_56} :catchall_5c

    goto :goto_49

    .line 523
    :catch_57
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    :try_start_58
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_49

    .line 526
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5c
    move-exception v1

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5c

    throw v1

    .line 521
    :cond_5f
    :try_start_5f
    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    invoke-virtual {p0, v1}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->doFrequencyRequest(I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_57
    .catchall {:try_start_5f .. :try_end_64} :catchall_5c

    goto :goto_49
.end method
