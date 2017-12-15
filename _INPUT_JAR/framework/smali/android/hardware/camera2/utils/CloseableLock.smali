.class public Landroid/hardware/camera2/utils/CloseableLock;
.super Ljava/lang/Object;
.source "CloseableLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    }
.end annotation


# static fields
.field private static final VERBOSE:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile mClosed:Z

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mExclusive:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLockCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mSharedLocks:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "CloseableLock"

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 49
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 56
    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 63
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "CloseableLock"

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 49
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 56
    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 63
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 96
    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloseableLock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method


# virtual methods
.method public acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 240
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 243
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    if-eqz v1, :cond_11

    .line 281
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v2

    .line 287
    :goto_10
    return-object v1

    .line 250
    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    .local v0, "ownedLocks":I
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v1, :cond_32

    if-lez v0, :cond_32

    .line 254
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot acquire exclusive lock while holding shared lock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2b

    .line 281
    .end local v0    # "ownedLocks":I
    :catchall_2b
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 264
    .restart local v0    # "ownedLocks":I
    :cond_32
    if-nez v0, :cond_4c

    :try_start_34
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v1, :cond_3c

    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-lez v1, :cond_4c

    .line 265
    :cond_3c
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 268
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_2b

    if-eqz v1, :cond_32

    .line 281
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v2

    goto :goto_10

    .line 276
    :cond_4c
    const/4 v1, 0x1

    :try_start_4d
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 278
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 279
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_4d .. :try_end_66} :catchall_2b

    .line 281
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 287
    new-instance v1, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    invoke-direct {v1, p0, v2}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$1;)V

    goto :goto_10
.end method

.method public acquireLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 172
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 175
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    if-eqz v1, :cond_11

    .line 208
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v2

    .line 214
    :goto_10
    return-object v1

    .line 182
    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    .local v0, "ownedLocks":I
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v1, :cond_32

    if-lez v0, :cond_32

    .line 186
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot acquire shared lock while holding exclusive lock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2b

    .line 208
    .end local v0    # "ownedLocks":I
    :catchall_2b
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 191
    .restart local v0    # "ownedLocks":I
    :cond_32
    :try_start_32
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v1, :cond_46

    .line 192
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 195
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2b

    if-eqz v1, :cond_32

    .line 208
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v2

    goto :goto_10

    .line 203
    :cond_46
    :try_start_46
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 205
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 206
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_2b

    .line 208
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    new-instance v1, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    invoke-direct {v1, p0, v2}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$1;)V

    goto :goto_10
.end method

.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    if-eqz v1, :cond_6

    .line 147
    :cond_5
    :goto_5
    return-void

    .line 119
    :cond_6
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CloseableLock;->acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    move-result-object v0

    .line 121
    .local v0, "scoper":Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    if-eqz v0, :cond_5

    .line 123
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_22

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot close while one or more acquired locks are being held by this thread; release all other locks first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_22
    :try_start_22
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 136
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 139
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_40

    .line 141
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_5

    :catchall_40
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public releaseLock()V
    .registers 5

    .prologue
    .line 299
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_16

    .line 300
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot release lock that was not acquired by this thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 310
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    if-eqz v1, :cond_2e

    .line 311
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Do not release after the lock has been closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_27

    .line 334
    :catchall_27
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 314
    :cond_2e
    :try_start_2e
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v1, :cond_63

    .line 315
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 322
    :cond_38
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 323
    .local v0, "ownedLocks":I
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 325
    if-nez v0, :cond_82

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v1, :cond_82

    .line 327
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 328
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_27

    .line 334
    :cond_5d
    :goto_5d
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 340
    return-void

    .line 317
    .end local v0    # "ownedLocks":I
    :cond_63
    :try_start_63
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-eqz v1, :cond_38

    .line 318
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many shared locks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 329
    .restart local v0    # "ownedLocks":I
    :cond_82
    if-nez v0, :cond_5d

    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-nez v1, :cond_5d

    .line 331
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_8d
    .catchall {:try_start_63 .. :try_end_8d} :catchall_27

    goto :goto_5d
.end method
