.class public Lcom/android/server/VRManagerService;
.super Lcom/android/internal/app/IVRManagerService$Stub;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VRManagerService$VRConnection;,
        Lcom/android/server/VRManagerService$VRServiceConnection;
    }
.end annotation


# static fields
.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VRManagerService"

.field private static final VR_UNDOCK_TIMEOUT:I = 0xea60


# instance fields
.field private mAfControl:Landroid/sec/performance/AffinityControl;

.field private mConnection:Lcom/android/server/VRManagerService$VRConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/app/IVRManagerService$Stub;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    .line 60
    new-instance v0, Lcom/android/server/VRManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VRManagerService$1;-><init>(Lcom/android/server/VRManagerService;)V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/android/server/VRManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/VRManagerService$2;-><init>(Lcom/android/server/VRManagerService;)V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService Constructor ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$VRConnection;)Lcom/android/server/VRManagerService$VRConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService;
    .param p1, "x1"    # Lcom/android/server/VRManagerService$VRConnection;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/VRManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bind(Landroid/content/Context;)Lcom/android/server/VRManagerService$VRConnection;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    const-string v0, "VRManagerService"

    const-string v1, "bind()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p1}, Lcom/android/server/VRManagerService;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 116
    new-instance v3, Lcom/android/server/VRManagerService$VRServiceConnection;

    invoke-direct {v3, p0, v5}, Lcom/android/server/VRManagerService$VRServiceConnection;-><init>(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$1;)V

    .line 118
    .local v3, "vrServiceConnection":Lcom/android/server/VRManagerService$VRServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 120
    .local v6, "ident":J
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.hmt.vrsvc"

    const-string v1, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v8, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/server/VRManagerService$VRServiceConnection;->mBound:Z

    .line 125
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    iget-boolean v0, v3, Lcom/android/server/VRManagerService$VRServiceConnection;->mBound:Z

    if-nez v0, :cond_3b

    .line 128
    const-string v0, "VRManagerService"

    const-string v1, "Unable to bind VRSystemService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_3a
    return-object v5

    :cond_3b
    new-instance v0, Lcom/android/server/VRManagerService$VRConnection;

    iget-object v1, v3, Lcom/android/server/VRManagerService$VRServiceConnection;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/IVRManagerService;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VRManagerService$VRConnection;-><init>(Lcom/android/server/VRManagerService;Landroid/content/Context;Lcom/android/server/VRManagerService$VRServiceConnection;Lcom/android/internal/app/IVRManagerService;Lcom/android/server/VRManagerService$1;)V

    move-object v5, v0

    goto :goto_3a
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 164
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 165
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_14
    return-void
.end method

.method private getService()Lcom/android/internal/app/IVRManagerService;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 196
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_3e

    .line 198
    :try_start_4
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRConnection;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_20

    .line 199
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRConnection;->close()V

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    .line 203
    :cond_20
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    if-nez v1, :cond_2c

    .line 204
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/VRManagerService;->bind(Landroid/content/Context;)Lcom/android/server/VRManagerService$VRConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    .line 206
    :cond_2c
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    if-nez v1, :cond_32

    .line 208
    monitor-exit v2

    .line 216
    :goto_31
    return-object v0

    .line 211
    :cond_32
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRConnection;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    monitor-exit v2

    move-object v0, v1

    goto :goto_31

    .line 213
    :catchall_3b
    move-exception v1

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v1
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 214
    :catch_3e
    move-exception v1

    goto :goto_31
.end method

.method private scheduleThreadFIFO(Ljava/lang/String;III)Z
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 256
    const-string/jumbo v3, "scheduleThreadFIFO"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 258
    const/4 v2, 0x0

    .line 260
    .local v2, "result":Z
    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---- elevateProcessThread \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' requestPriority(pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v3, 0x3

    :try_start_44
    invoke-static {p3, v3}, Landroid/os/Process;->setThreadGroup(II)V

    .line 266
    const/4 v3, 0x1

    invoke-static {p3, v3, p4}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 267
    const/4 v2, 0x1

    .line 269
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-nez v3, :cond_57

    .line 270
    new-instance v3, Landroid/sec/performance/AffinityControl;

    invoke-direct {v3}, Landroid/sec/performance/AffinityControl;-><init>()V

    iput-object v3, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    .line 273
    :cond_57
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-eqz v3, :cond_75

    .line 274
    const-string v3, "exynos5"

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 275
    const/4 v3, 0x4

    new-array v0, v3, [I

    fill-array-data v0, :array_82

    .line 276
    .local v0, "cpus":[I
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    invoke-virtual {v3, p3, v0}, Landroid/sec/performance/AffinityControl;->SetAffinity(I[I)I
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_75} :catch_76

    .line 283
    .end local v0    # "cpus":[I
    :cond_75
    :goto_75
    return v2

    .line 279
    :catch_76
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "VRManagerService"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 275
    nop

    :array_82
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private scheduleThreadOTHER(Ljava/lang/String;III)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 287
    const-string/jumbo v2, "scheduleThreadOTHER"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 289
    const/4 v1, 0x0

    .line 291
    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- demoteProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v2, 0x3

    :try_start_44
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 297
    const/4 v2, 0x0

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_4b} :catch_4d

    .line 298
    const/4 v1, 0x1

    .line 303
    :goto_4c
    return v1

    .line 299
    :catch_4d
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method


# virtual methods
.method public GetPowerLevelState()I
    .registers 5

    .prologue
    .line 431
    const-string v3, "GetPowerLevelState"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 432
    const/4 v1, -0x1

    .line 434
    .local v1, "result":I
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 435
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 436
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->GetPowerLevelState()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 442
    :cond_10
    return v1

    .line 438
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 439
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .prologue
    const/4 v4, 0x0

    .line 417
    const-string v3, "SetVrClocks"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 418
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 420
    .local v1, "result":[I
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 421
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_15

    .line 422
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->SetVrClocks(Ljava/lang/String;II)[I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    move-result-object v1

    .line 427
    :cond_15
    return-object v1

    .line 424
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_16
    move-exception v0

    .line 425
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 690
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump VRManagerService(system_process) from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    :goto_32
    return-void

    .line 695
    :cond_33
    const-string v3, "VR MANAGER (dumpsys vr)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    if-eqz v3, :cond_c9

    .line 697
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;

    invoke-virtual {v3}, Lcom/android/server/VRManagerService$VRConnection;->getVRServiceConnection()Lcom/android/server/VRManagerService$VRServiceConnection;

    move-result-object v2

    .line 698
    .local v2, "vrServiceConnection":Lcom/android/server/VRManagerService$VRServiceConnection;
    if-eqz v2, :cond_c2

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vrServiceConnection.mBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/VRManagerService$VRServiceConnection;->mBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vrServiceConnection.mConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/VRManagerService$VRServiceConnection;->mConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vrServiceConnection.q.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/VRManagerService$VRServiceConnection;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    iget-object v0, v2, Lcom/android/server/VRManagerService$VRServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 704
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_bb

    .line 706
    :try_start_94
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 707
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 708
    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9d} :catch_9e

    goto :goto_32

    .line 709
    :catch_9e
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  vrServiceConnection.mBinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 713
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_bb
    const-string v3, "  vrServiceConnection.mBinder=null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 716
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_c2
    const-string v3, "  mConnection.vrServiceConnection=null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 719
    .end local v2    # "vrServiceConnection":Lcom/android/server/VRManagerService$VRServiceConnection;
    :cond_c9
    const-string v3, "  mConnection=null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 679
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 680
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 681
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 686
    :cond_9
    return-void

    .line 683
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 684
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enforceCallingPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 673
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 674
    .local v1, "uid":I
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/VRManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    .line 675
    return-void
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "optionName"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v3, "getOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 321
    const/4 v1, 0x0

    .line 323
    .local v1, "result":Ljava/lang/String;
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 324
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 325
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v1

    .line 331
    :cond_10
    return-object v1

    .line 327
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 328
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 473
    const-string v3, "getSystemOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    .line 477
    .local v1, "result":Ljava/lang/String;
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 478
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 479
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v1

    .line 485
    :cond_10
    return-object v1

    .line 481
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 482
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRBright()I
    .registers 5

    .prologue
    .line 529
    const-string v3, "getVRBright"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 530
    const/4 v1, 0x0

    .line 533
    .local v1, "result":I
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 534
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 535
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRBright()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 541
    :cond_10
    return v1

    .line 537
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 538
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRColorTemperature()I
    .registers 5

    .prologue
    .line 557
    const-string v3, "getVRColorTemperature"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 558
    const/4 v1, 0x0

    .line 561
    .local v1, "result":I
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 562
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 563
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRColorTemperature()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 569
    :cond_10
    return v1

    .line 565
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 566
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .registers 5

    .prologue
    .line 220
    const-string v3, "isConnected"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, "result":Z
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 224
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 225
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isConnected()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 231
    :cond_10
    return v1

    .line 227
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 228
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isDevelopermode()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "developerMode":I
    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDevelopermode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-ne v0, v1, :cond_2a

    .line 240
    :goto_29
    return v1

    :cond_2a
    move v1, v2

    goto :goto_29
.end method

.method public isVRComfortableViewEnabled()Z
    .registers 5

    .prologue
    .line 613
    const-string v3, "isVRComfortableViewEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 614
    const/4 v1, 0x0

    .line 617
    .local v1, "result":Z
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 618
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 619
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRComfortableViewEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 625
    :cond_10
    return v1

    .line 621
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 622
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRDarkAdaptationEnabled()Z
    .registers 5

    .prologue
    .line 585
    const-string v3, "isVRDarkAdaptationEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 586
    const/4 v1, 0x0

    .line 589
    .local v1, "result":Z
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 590
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 591
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRDarkAdaptationEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 597
    :cond_10
    return v1

    .line 593
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 594
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRLowPersistenceEnabled()Z
    .registers 5

    .prologue
    .line 641
    const-string v3, "isVRLowPersistenceEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 642
    const/4 v1, 0x0

    .line 645
    .local v1, "result":Z
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 646
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 647
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRLowPersistenceEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 653
    :cond_10
    return v1

    .line 649
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 650
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRMode()Z
    .registers 5

    .prologue
    .line 501
    const-string v3, "isVRMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 502
    const/4 v1, 0x0

    .line 505
    .local v1, "result":Z
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 506
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 507
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRMode()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v1

    .line 513
    :cond_10
    return v1

    .line 509
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 510
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public relFreq(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string/jumbo v3, "relFreq"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 394
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 395
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->relFreq(Ljava/lang/String;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 400
    :cond_11
    return v1

    .line 397
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 398
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string/jumbo v2, "releaseCPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 352
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 353
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 354
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseCPUMhz(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 359
    :cond_f
    return-void

    .line 356
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 357
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 378
    const-string/jumbo v2, "releaseGPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 380
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 381
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 382
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseGPUMhz(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 387
    :cond_f
    return-void

    .line 384
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 385
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public return2EnableFreqLev()[I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 403
    const-string/jumbo v3, "return2EnableFreqLev"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 404
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 406
    .local v1, "result":[I
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 407
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_16

    .line 408
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->return2EnableFreqLev()[I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v1

    .line 413
    :cond_16
    return-object v1

    .line 410
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_17
    move-exception v0

    .line 411
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # [I
    .param p3, "corenum"    # I

    .prologue
    const/4 v4, 0x0

    .line 335
    const-string/jumbo v3, "setCPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 336
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 339
    .local v1, "result":[I
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 340
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_16

    .line 341
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setCPUClockMhz(Ljava/lang/String;[II)[I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v1

    .line 347
    :cond_16
    return-object v1

    .line 343
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_17
    move-exception v0

    .line 344
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # I

    .prologue
    .line 362
    const-string/jumbo v3, "setGPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x0

    .line 366
    .local v1, "result":I
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 367
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 368
    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setGPUClockMhz(Ljava/lang/String;I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 374
    :cond_11
    return v1

    .line 370
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 371
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string/jumbo v2, "setOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 309
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 310
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 311
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 317
    :cond_f
    return-void

    .line 313
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 314
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string/jumbo v2, "setSystemOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 463
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 464
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 465
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 470
    :cond_f
    return-void

    .line 467
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 468
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    const/4 v0, 0x0

    .line 244
    const-string/jumbo v1, "setThreadSchedFifo"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 246
    if-lez p4, :cond_11

    const/4 v1, 0x3

    if-gt p4, v1, :cond_11

    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VRManagerService;->scheduleThreadFIFO(Ljava/lang/String;III)Z

    move-result v0

    .line 252
    :cond_10
    :goto_10
    return v0

    .line 248
    :cond_11
    if-nez p4, :cond_10

    .line 249
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/VRManagerService;->scheduleThreadOTHER(Ljava/lang/String;III)Z

    move-result v0

    goto :goto_10
.end method

.method public setVRBright(I)V
    .registers 5
    .param p1, "bright"    # I

    .prologue
    .line 517
    const-string/jumbo v2, "setVRBright"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 519
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 520
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 521
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRBright(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 526
    :cond_f
    return-void

    .line 523
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 524
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRColorTemperature(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 545
    const-string/jumbo v2, "setVRColorTemperature"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 547
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 548
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 549
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRColorTemperature(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 554
    :cond_f
    return-void

    .line 551
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 552
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRComfortableView(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 601
    const-string/jumbo v2, "setVRComfortableView"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 603
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 604
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 605
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRComfortableView(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 610
    :cond_f
    return-void

    .line 607
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 608
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRDarkAdaptation(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 573
    const-string/jumbo v2, "setVRDarkAdaptation"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 575
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 576
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 577
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRDarkAdaptation(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 582
    :cond_f
    return-void

    .line 579
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 580
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRLowPersistence(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 629
    const-string/jumbo v2, "setVRLowPersistence"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 631
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 632
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 633
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRLowPersistence(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 638
    :cond_f
    return-void

    .line 635
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 636
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 489
    const-string/jumbo v2, "setVRMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 491
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 492
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 493
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRMode(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 498
    :cond_f
    return-void

    .line 495
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRPerformanceMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 657
    const-string/jumbo v2, "setVRPerformanceMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 659
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 660
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_f

    .line 661
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRPerformanceMode(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 666
    :cond_f
    return-void

    .line 663
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_10
    move-exception v0

    .line 664
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "dutyCycle"    # F
    .param p3, "monoMode"    # Z

    .prologue
    .line 446
    const-string/jumbo v3, "setVideoMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, "result":Z
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 450
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_11

    .line 451
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setVideoMode(Ljava/lang/String;FZ)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v1

    .line 457
    :cond_11
    return v1

    .line 453
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 454
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 84
    const-string v1, "VRManagerService"

    const-string v2, "---- VRManagerService systemReady ----"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method
