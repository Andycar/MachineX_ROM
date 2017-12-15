.class Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUCoreControlRequest"
.end annotation


# instance fields
.field mCPUCoreReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 9
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 431
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 424
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$1;-><init>(Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Ljava/lang/Runnable;

    .line 432
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .registers 7

    .prologue
    .line 453
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 455
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mType:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$802(Z)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1f
    .catchall {:try_start_3 .. :try_end_1d} :catchall_24

    .line 461
    :goto_1d
    :try_start_1d
    monitor-exit v2

    .line 462
    return-void

    .line 458
    :catch_1f
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_1d

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .registers 9

    .prologue
    .line 435
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPUCoreControlRequest : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 438
    :try_start_29
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 439
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_46

    .line 440
    const/4 v1, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$802(Z)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_44} :catch_56
    .catchall {:try_start_29 .. :try_end_44} :catchall_5b

    .line 449
    :goto_44
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_5b

    .line 450
    return-void

    .line 442
    :cond_46
    :try_start_46
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$802(Z)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_55} :catch_56
    .catchall {:try_start_46 .. :try_end_55} :catchall_5b

    goto :goto_44

    .line 446
    :catch_56
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    :try_start_57
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_44

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5b
    move-exception v1

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5b

    throw v1
.end method
