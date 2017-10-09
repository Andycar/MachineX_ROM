.class Lcom/android/server/MountService$MountShutdownLatch;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MountShutdownLatch"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mObserver:Landroid/os/storage/IMountShutdownObserver;


# direct methods
.method constructor <init>(Landroid/os/storage/IMountShutdownObserver;I)V
    .registers 4
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;
    .param p2, "count"    # I

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/android/server/MountService$MountShutdownLatch;->mObserver:Landroid/os/storage/IMountShutdownObserver;

    .line 494
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService$MountShutdownLatch;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 495
    return-void
.end method


# virtual methods
.method countDown()V
    .registers 5

    .prologue
    .line 498
    const/4 v1, 0x0

    .line 499
    .local v1, "sendShutdown":Z
    iget-object v2, p0, Lcom/android/server/MountService$MountShutdownLatch;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_a

    .line 500
    const/4 v1, 0x1

    .line 502
    :cond_a
    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/android/server/MountService$MountShutdownLatch;->mObserver:Landroid/os/storage/IMountShutdownObserver;

    if-eqz v2, :cond_16

    .line 504
    :try_start_10
    iget-object v2, p0, Lcom/android/server/MountService$MountShutdownLatch;->mObserver:Landroid/os/storage/IMountShutdownObserver;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    .line 509
    :cond_16
    :goto_16
    return-void

    .line 505
    :catch_17
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v3, "RemoteException when shutting down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method
