.class Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SysBusFrequencyRequest"
.end annotation


# instance fields
.field mSysBusReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 9
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 337
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 330
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$1;-><init>(Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    .line 338
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .registers 7

    .prologue
    .line 360
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 362
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 363
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mType:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 364
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$602(Z)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1f
    .catchall {:try_start_3 .. :try_end_1d} :catchall_24

    .line 368
    :goto_1d
    :try_start_1d
    monitor-exit v2

    .line 369
    return-void

    .line 365
    :catch_1f
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_1d

    .line 368
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
    .line 341
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SysBus : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 344
    :try_start_29
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SysBus : doFrequencyRequest::  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 347
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_6c

    .line 348
    const/4 v1, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$602(Z)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6a} :catch_7c
    .catchall {:try_start_29 .. :try_end_6a} :catchall_81

    .line 356
    :goto_6a
    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_81

    .line 357
    return-void

    .line 350
    :cond_6c
    :try_start_6c
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$602(Z)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7b} :catch_7c
    .catchall {:try_start_6c .. :try_end_7b} :catchall_81

    goto :goto_6a

    .line 353
    :catch_7c
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7d
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_6a

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_81
    move-exception v1

    monitor-exit v2
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_81

    throw v1
.end method
