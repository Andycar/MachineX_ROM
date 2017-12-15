.class Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LCDFrameRateRequest"
.end annotation


# instance fields
.field mFrameRateReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 9
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 376
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 379
    new-instance v0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$1;-><init>(Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Ljava/lang/Runnable;

    .line 377
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .registers 6

    .prologue
    .line 409
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 411
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$702(Z)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1d
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 417
    :goto_1b
    :try_start_1b
    monitor-exit v2

    .line 418
    return-void

    .line 414
    :catch_1d
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_1b

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .registers 9

    .prologue
    .line 387
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDFrameRate : doFrequencyRequest:: requestLCDFrameRate - mFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTimeoutMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 392
    :try_start_35
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCDFrameRate : doFrequencyRequest:: requestLCDFrameRate - mFrequency = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTimeoutMs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 396
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_82

    .line 397
    const/4 v1, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$702(Z)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_80} :catch_92
    .catchall {:try_start_35 .. :try_end_80} :catchall_97

    .line 405
    :goto_80
    :try_start_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_97

    .line 406
    return-void

    .line 399
    :cond_82
    :try_start_82
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mFrameRateReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$702(Z)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_91} :catch_92
    .catchall {:try_start_82 .. :try_end_91} :catchall_97

    goto :goto_80

    .line 402
    :catch_92
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    :try_start_93
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_80

    .line 405
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_97
    move-exception v1

    monitor-exit v2
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_97

    throw v1
.end method
