.class public Ljava/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/FutureTask$WaitNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x1

.field private static final EXCEPTIONAL:I = 0x3

.field private static final INTERRUPTED:I = 0x6

.field private static final INTERRUPTING:I = 0x5

.field private static final NEW:I = 0x0

.field private static final NORMAL:I = 0x2

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final runnerOffset:J

.field private static final stateOffset:J

.field private static final waitersOffset:J


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private outcome:Ljava/lang/Object;

.field private volatile runner:Ljava/lang/Thread;

.field private volatile state:I

.field private volatile waiters:Ljava/util/concurrent/FutureTask$WaitNode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 444
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    .line 445
    const-class v1, Ljava/util/concurrent/FutureTask;

    .line 446
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "state"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    .line 448
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "runner"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    .line 450
    sget-object v2, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "waiters"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 455
    return-void

    .line 452
    :catch_33
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p1, :cond_b

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_b
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 108
    return-void
.end method

.method private awaitDone(ZJ)I
    .registers 14
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p1, :cond_19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long v6, v0, p2

    .line 370
    .local v6, "deadline":J
    :goto_8
    const/4 v5, 0x0

    .line 371
    .local v5, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v8, 0x0

    .line 373
    .local v8, "queued":Z
    :goto_a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 374
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 375
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 369
    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v6    # "deadline":J
    .end local v8    # "queued":Z
    :cond_19
    const-wide/16 v6, 0x0

    goto :goto_8

    .line 378
    .restart local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v6    # "deadline":J
    .restart local v8    # "queued":Z
    :cond_1c
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 379
    .local v9, "s":I
    const/4 v0, 0x1

    if-le v9, v0, :cond_27

    .line 380
    if-eqz v5, :cond_26

    .line 381
    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 395
    .end local v9    # "s":I
    :cond_26
    :goto_26
    return v9

    .line 384
    .restart local v9    # "s":I
    :cond_27
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2e

    .line 385
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_a

    .line 386
    :cond_2e
    if-nez v5, :cond_36

    .line 387
    new-instance v5, Ljava/util/concurrent/FutureTask$WaitNode;

    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    invoke-direct {v5}, Ljava/util/concurrent/FutureTask$WaitNode;-><init>()V

    .restart local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_a

    .line 388
    :cond_36
    if-nez v8, :cond_46

    .line 389
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    iput-object v4, v5, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    goto :goto_a

    .line 391
    :cond_46
    if-eqz p1, :cond_5e

    .line 392
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long p2, v6, v0

    .line 393
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_5a

    .line 394
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 395
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    goto :goto_26

    .line 397
    :cond_5a
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_a

    .line 400
    :cond_5e
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method private finishCompletion()V
    .registers 9

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v5, 0x0

    .line 337
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    if-eqz v4, :cond_1d

    .line 338
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :goto_10
    iget-object v7, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 341
    .local v7, "t":Ljava/lang/Thread;
    if-eqz v7, :cond_19

    .line 342
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 343
    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 345
    :cond_19
    iget-object v6, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 346
    .local v6, "next":Ljava/util/concurrent/FutureTask$WaitNode;
    if-nez v6, :cond_23

    .line 355
    .end local v6    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v7    # "t":Ljava/lang/Thread;
    :cond_1d
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 357
    iput-object v5, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 358
    return-void

    .line 348
    .restart local v6    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v7    # "t":Ljava/lang/Thread;
    :cond_23
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 349
    move-object v4, v6

    .line 350
    goto :goto_10
.end method

.method private handlePossibleCancellationInterrupt(I)V
    .registers 4
    .param p1, "s"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x5

    .line 305
    if-ne p1, v1, :cond_b

    .line 306
    :goto_3
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ne v0, v1, :cond_b

    .line 307
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_3

    .line 318
    :cond_b
    return-void
.end method

.method private removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V
    .registers 9
    .param p1, "node"    # Ljava/util/concurrent/FutureTask$WaitNode;

    .prologue
    .line 415
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p1, :cond_28

    .line 416
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 419
    :goto_5
    const/4 v6, 0x0

    .local v6, "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :goto_8
    if-eqz v4, :cond_28

    .line 420
    iget-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 421
    .local v5, "s":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v0, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    .line 422
    move-object v6, v4

    .line 419
    :cond_11
    move-object v4, v5

    goto :goto_8

    .line 423
    :cond_13
    if-eqz v6, :cond_1c

    .line 424
    iput-object v5, v6, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 425
    iget-object v0, v6, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_11

    goto :goto_5

    .line 428
    :cond_1c
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->waitersOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5

    .line 435
    .end local v4    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v5    # "s":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v6    # "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_28
    return-void
.end method

.method private report(I)Ljava/lang/Object;
    .registers 4
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 89
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 90
    return-object v0

    .line 91
    :cond_6
    const/4 v1, 0x4

    if-lt p1, v1, :cond_f

    .line 92
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 93
    :cond_f
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "x":Ljava/lang/Object;
    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 9
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v4, 0x0

    .line 136
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_13

    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    if-eqz p1, :cond_14

    const/4 v5, 0x5

    :goto_c
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_16

    .line 153
    :cond_13
    :goto_13
    return v4

    .line 136
    :cond_14
    const/4 v5, 0x4

    goto :goto_c

    .line 141
    :cond_16
    if-eqz p1, :cond_27

    .line 143
    :try_start_18
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 144
    .local v6, "t":Ljava/lang/Thread;
    if-eqz v6, :cond_1f

    .line 145
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_2c

    .line 147
    :cond_1f
    :try_start_1f
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_36

    .line 151
    .end local v6    # "t":Ljava/lang/Thread;
    :cond_27
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 153
    const/4 v4, 0x1

    goto :goto_13

    .line 147
    :catchall_2c
    move-exception v0

    :try_start_2d
    sget-object v1, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v4, 0x6

    invoke-virtual {v1, p0, v2, v3, v4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    throw v0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_36

    .line 151
    :catchall_36
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    throw v0
.end method

.method protected done()V
    .registers 1

    .prologue
    .line 189
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 161
    .local v0, "s":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 162
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    .line 163
    :cond_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x1

    .line 171
    if-nez p3, :cond_9

    .line 172
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 173
    :cond_9
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 174
    .local v0, "s":I
    if-gt v0, v1, :cond_1d

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    if-gt v0, v1, :cond_1d

    .line 176
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 177
    :cond_1d
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 128
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 132
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public run()V
    .registers 13

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    const/4 v4, 0x0

    .line 227
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_15

    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 257
    :cond_15
    :goto_15
    return-void

    .line 232
    :cond_16
    :try_start_16
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 233
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_28

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_39

    if-nez v0, :cond_28

    .line 237
    :try_start_1e
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_32
    .catchall {:try_start_1e .. :try_end_21} :catchall_39

    move-result-object v9

    .line 238
    .local v9, "result":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x1

    .line 244
    .end local v9    # "result":Ljava/lang/Object;, "TV;"
    .local v8, "ran":Z
    :goto_23
    if-eqz v8, :cond_28

    .line 245
    :try_start_25
    invoke-virtual {p0, v9}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_39

    .line 250
    .end local v8    # "ran":Z
    :cond_28
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 253
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 254
    .local v10, "s":I
    if-lt v10, v11, :cond_15

    .line 255
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    goto :goto_15

    .line 239
    .end local v10    # "s":I
    :catch_32
    move-exception v7

    .line 240
    .local v7, "ex":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 241
    .restart local v9    # "result":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 242
    .restart local v8    # "ran":Z
    :try_start_35
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_23

    .line 250
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v8    # "ran":Z
    .end local v9    # "result":Ljava/lang/Object;, "TV;"
    :catchall_39
    move-exception v0

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 253
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 254
    .restart local v10    # "s":I
    if-lt v10, v11, :cond_43

    .line 255
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 256
    :cond_43
    throw v0
.end method

.method protected runAndReset()Z
    .registers 13

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 269
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_16

    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->runnerOffset:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    move v0, v10

    .line 295
    :goto_17
    return v0

    .line 273
    :cond_18
    const/4 v8, 0x0

    .line 274
    .local v8, "ran":Z
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 276
    .local v9, "s":I
    :try_start_1b
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_39

    .line 277
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_25

    if-nez v9, :cond_25

    .line 279
    :try_start_21
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_34
    .catchall {:try_start_21 .. :try_end_24} :catchall_39

    .line 280
    const/4 v8, 0x1

    .line 288
    :cond_25
    :goto_25
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 291
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 292
    if-lt v9, v11, :cond_2e

    .line 293
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 295
    :cond_2e
    if-eqz v8, :cond_44

    if-nez v9, :cond_44

    const/4 v0, 0x1

    goto :goto_17

    .line 281
    :catch_34
    move-exception v7

    .line 282
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_35
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_25

    .line 288
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_39
    move-exception v0

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 291
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 292
    if-lt v9, v11, :cond_43

    .line 293
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    :cond_43
    throw v0

    .restart local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :cond_44
    move v0, v10

    .line 295
    goto :goto_17
.end method

.method protected set(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 202
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 203
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 204
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 206
    :cond_1a
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 220
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 221
    sget-object v0, Ljava/util/concurrent/FutureTask;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->stateOffset:J

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 222
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 224
    :cond_1a
    return-void
.end method
