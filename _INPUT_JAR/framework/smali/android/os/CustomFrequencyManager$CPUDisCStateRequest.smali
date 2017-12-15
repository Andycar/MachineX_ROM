.class public Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CPUDisCStateRequest"
.end annotation


# instance fields
.field mCPUDisCStateReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 9
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 607
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 608
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 601
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$1;-><init>(Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Ljava/lang/Runnable;

    .line 609
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .registers 6

    .prologue
    .line 626
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 628
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->enableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_19
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    .line 633
    :goto_17
    :try_start_17
    monitor-exit v2

    .line 634
    return-void

    .line 630
    :catch_19
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_17

    .line 633
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .registers 9

    .prologue
    .line 612
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPUDisCStateRequest : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 615
    :try_start_29
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->disableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 616
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_47

    .line 617
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_47} :catch_49
    .catchall {:try_start_29 .. :try_end_47} :catchall_4e

    .line 622
    :cond_47
    :goto_47
    :try_start_47
    monitor-exit v2

    .line 623
    return-void

    .line 619
    :catch_49
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_47

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v1

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_4e

    throw v1
.end method
