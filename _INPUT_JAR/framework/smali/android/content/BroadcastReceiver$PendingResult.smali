.class public Landroid/content/BroadcastReceiver$PendingResult;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingResult"
.end annotation


# static fields
.field public static final TYPE_COMPONENT:I = 0x0

.field public static final TYPE_REGISTERED:I = 0x1

.field public static final TYPE_UNREGISTERED:I = 0x2


# instance fields
.field mAbortBroadcast:Z

.field mFinished:Z

.field final mInitialStickyHint:Z

.field final mOrderedHint:Z

.field mResultCode:I

.field mResultData:Ljava/lang/String;

.field mResultExtras:Landroid/os/Bundle;

.field final mSendingUser:I

.field final mToken:Landroid/os/IBinder;

.field final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;I)V
    .registers 9
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Ljava/lang/String;
    .param p3, "resultExtras"    # Landroid/os/Bundle;
    .param p4, "type"    # I
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "userId"    # I

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 252
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 254
    iput p4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    .line 255
    iput-boolean p5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    .line 256
    iput-boolean p6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    .line 257
    iput-object p7, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    .line 258
    iput p8, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    .line 259
    return-void
.end method


# virtual methods
.method public final abortBroadcast()V
    .registers 2

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 350
    return-void
.end method

.method checkSynchronousHint()V
    .registers 4

    .prologue
    .line 440
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz v1, :cond_9

    .line 447
    :cond_8
    :goto_8
    return-void

    .line 443
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 446
    const-string v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public final clearAbortBroadcast()V
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 359
    return-void
.end method

.method public final finish()V
    .registers 4

    .prologue
    .line 366
    iget v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    if-nez v1, :cond_1f

    .line 367
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 368
    .local v0, "mgr":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/QueuedWork;->hasPendingWork()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 379
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Landroid/content/BroadcastReceiver$PendingResult$1;

    invoke-direct {v2, p0, v0}, Landroid/content/BroadcastReceiver$PendingResult$1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/app/IActivityManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 397
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_1a
    :goto_1a
    return-void

    .line 389
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_1b
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_1a

    .line 391
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_1f
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    .line 394
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 395
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_1a
.end method

.method public final getAbortBroadcast()Z
    .registers 2

    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    return v0
.end method

.method public final getResultCode()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    return v0
.end method

.method public final getResultData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultExtras(Z)Landroid/os/Bundle;
    .registers 4
    .param p1, "makeMap"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 316
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_6

    move-object v1, v0

    .line 318
    .end local v0    # "e":Landroid/os/Bundle;
    .local v1, "e":Landroid/os/Bundle;
    :goto_5
    return-object v1

    .line 317
    .end local v1    # "e":Landroid/os/Bundle;
    .restart local v0    # "e":Landroid/os/Bundle;
    :cond_6
    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "e":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "e":Landroid/os/Bundle;
    iput-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    :cond_f
    move-object v1, v0

    .line 318
    .end local v0    # "e":Landroid/os/Bundle;
    .restart local v1    # "e":Landroid/os/Bundle;
    goto :goto_5
.end method

.method public getSendingUserId()I
    .registers 2

    .prologue
    .line 433
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return v0
.end method

.method public sendFinished(Landroid/app/IActivityManager;)V
    .registers 8
    .param p1, "am"    # Landroid/app/IActivityManager;

    .prologue
    .line 408
    monitor-enter p0

    .line 409
    :try_start_1
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z

    if-eqz v0, :cond_10

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Broadcast already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 412
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_d

    .line 415
    :try_start_13
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1d

    .line 416
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 418
    :cond_1d
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v0, :cond_31

    .line 419
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    iget-boolean v5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2f} :catch_3c
    .catchall {:try_start_13 .. :try_end_2f} :catchall_d

    .line 428
    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_d

    .line 429
    return-void

    .line 424
    :cond_31
    :try_start_31
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_3c
    .catchall {:try_start_31 .. :try_end_3b} :catchall_d

    goto :goto_2f

    .line 426
    :catch_3c
    move-exception v0

    goto :goto_2f
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 402
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 404
    :cond_9
    return-void
.end method

.method public final setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 328
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 329
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 330
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 331
    return-void
.end method

.method public final setResultCode(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 268
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 269
    return-void
.end method

.method public final setResultData(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 287
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public final setResultExtras(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 306
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 307
    return-void
.end method
