.class Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPUFrequencyRequest"
.end annotation


# instance fields
.field mGPUReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 9
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 293
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 286
    new-instance v0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$1;-><init>(Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Ljava/lang/Runnable;

    .line 294
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .registers 7

    .prologue
    .line 315
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 317
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 318
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mType:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$502(Z)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1f
    .catchall {:try_start_3 .. :try_end_1d} :catchall_24

    .line 323
    :goto_1d
    :try_start_1d
    monitor-exit v2

    .line 324
    return-void

    .line 320
    :catch_1f
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_1d

    .line 323
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
    .line 297
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPU : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 299
    :try_start_29
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPU : doFrequencyRequest::  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_29 .. :try_end_4f} :catchall_81

    .line 301
    :try_start_4f
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 302
    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_6c

    .line 303
    const/4 v1, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$502(Z)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6a} :catch_7c
    .catchall {:try_start_4f .. :try_end_6a} :catchall_81

    .line 311
    :goto_6a
    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_81

    .line 312
    return-void

    .line 305
    :cond_6c
    :try_start_6c
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$502(Z)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7b} :catch_7c
    .catchall {:try_start_6c .. :try_end_7b} :catchall_81

    goto :goto_6a

    .line 308
    :catch_7c
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7d
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    goto :goto_6a

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_81
    move-exception v1

    monitor-exit v2
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_81

    throw v1
.end method
