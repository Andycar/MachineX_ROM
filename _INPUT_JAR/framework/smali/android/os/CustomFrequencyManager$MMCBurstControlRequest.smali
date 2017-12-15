.class Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MMCBurstControlRequest"
.end annotation


# instance fields
.field mMCBurstModeReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 9
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 561
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 562
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 565
    new-instance v0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;-><init>(Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mMCBurstModeReleaser:Ljava/lang/Runnable;

    .line 563
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .registers 5

    .prologue
    .line 587
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 589
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mMCBurstModeReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    const-string v1, "CustomFrequencyManager"

    const-string v3, "MMCBurstControlRequest.cancelFrequencyRequest"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/os/ICustomFrequencyManager;->restoreMMCBurstRate(Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1e
    .catchall {:try_start_3 .. :try_end_1c} :catchall_23

    .line 595
    :goto_1c
    :try_start_1c
    monitor-exit v2

    .line 596
    return-void

    .line 592
    :catch_1e
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_1c

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .registers 9

    .prologue
    .line 573
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMCBurstControlRequest : doFrequencyRequest:: mFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTimeoutMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 576
    :try_start_35
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 577
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_55

    .line 578
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mMCBurstModeReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_55} :catch_57
    .catchall {:try_start_35 .. :try_end_55} :catchall_5c

    .line 583
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v2

    .line 584
    return-void

    .line 580
    :catch_57
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_55

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5c
    move-exception v1

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    throw v1
.end method
