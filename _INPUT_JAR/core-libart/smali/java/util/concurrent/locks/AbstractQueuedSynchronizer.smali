.class public abstract Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;,
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    }
.end annotation


# static fields
.field private static final headOffset:J

.field private static final nextOffset:J

.field private static final serialVersionUID:J = 0x6655a843753f52e3L

.field static final spinForTimeoutThreshold:J = 0x3e8L

.field private static final stateOffset:J

.field private static final tailOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final waitStatusOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private volatile state:I

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 2237
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    .line 2246
    :try_start_6
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->stateOffset:J

    .line 2248
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const-string v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->headOffset:J

    .line 2250
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    const-string v3, "tail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tailOffset:J

    .line 2252
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    const-string v3, "waitStatus"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->waitStatusOffset:J

    .line 2254
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    const-string v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->nextOffset:J
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_56} :catch_57

    .line 2258
    return-void

    .line 2257
    :catch_57
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .registers 5
    .param p1, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 585
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 587
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 588
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_18

    .line 589
    iput-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 590
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 591
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 596
    :goto_17
    return-object v0

    .line 595
    :cond_18
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_17
.end method

.method private cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 9
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 721
    if-nez p1, :cond_5

    .line 761
    :goto_4
    return-void

    .line 724
    :cond_5
    iput-object v6, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 727
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 728
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_9
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-lez v4, :cond_12

    .line 729
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_9

    .line 734
    :cond_12
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 739
    .local v2, "predNext":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v4, 0x1

    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 742
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne p1, v4, :cond_25

    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 743
    invoke-static {v1, v2, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    goto :goto_4

    .line 748
    :cond_25
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v1, v4, :cond_47

    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .local v3, "ws":I
    if-eq v3, v5, :cond_35

    if-gtz v3, :cond_47

    invoke-static {v1, v3, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v4

    if-eqz v4, :cond_47

    :cond_35
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_47

    .line 752
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 753
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_44

    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v4, :cond_44

    .line 754
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 759
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "ws":I
    :cond_44
    :goto_44
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_4

    .line 756
    :cond_47
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_44
.end method

.method private final compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 8
    .param p1, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 2264
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->headOffset:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 9
    .param p0, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 2290
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 9
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 2271
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z
    .registers 9
    .param p0, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 2280
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->waitStatusOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private doAcquireInterruptibly(I)V
    .registers 6
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 862
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 863
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    .line 866
    .local v0, "failed":Z
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 867
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v3, :cond_22

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 868
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 869
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_34

    .line 870
    const/4 v0, 0x0

    .line 878
    if-eqz v0, :cond_21

    .line 879
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_21
    return-void

    .line 873
    :cond_22
    :try_start_22
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 875
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_34

    .line 878
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_34
    move-exception v3

    if-eqz v0, :cond_3a

    .line 879
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_3a
    throw v3
.end method

.method private doAcquireNanos(IJ)Z
    .registers 14
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 892
    cmp-long v6, p2, v8

    if-gtz v6, :cond_8

    .line 917
    :cond_7
    :goto_7
    return v5

    .line 894
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p2

    .line 895
    .local v0, "deadline":J
    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 896
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x1

    .line 899
    .local v2, "failed":Z
    :cond_15
    :try_start_15
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v4

    .line 900
    .local v4, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v4, v6, :cond_31

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 901
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 902
    const/4 v5, 0x0

    iput-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_5c

    .line 903
    const/4 v2, 0x0

    .line 904
    const/4 v5, 0x1

    .line 916
    if-eqz v2, :cond_7

    .line 917
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_7

    .line 906
    :cond_31
    :try_start_31
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_5c

    move-result-wide v6

    sub-long p2, v0, v6

    .line 907
    cmp-long v6, p2, v8

    if-gtz v6, :cond_41

    .line 916
    if-eqz v2, :cond_7

    .line 917
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_7

    .line 909
    :cond_41
    :try_start_41
    invoke-static {v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v6

    if-eqz v6, :cond_50

    const-wide/16 v6, 0x3e8

    cmp-long v6, p2, v6

    if-lez v6, :cond_50

    .line 911
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 912
    :cond_50
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 913
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_5c

    .line 916
    .end local v4    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_5c
    move-exception v5

    if-eqz v2, :cond_62

    .line 917
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_62
    throw v5
.end method

.method private doAcquireShared(I)V
    .registers 8
    .param p1, "arg"    # I

    .prologue
    .line 926
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 927
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    .line 929
    .local v0, "failed":Z
    const/4 v1, 0x0

    .line 931
    .local v1, "interrupted":Z
    :cond_8
    :goto_8
    :try_start_8
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 932
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v3, v5, :cond_28

    .line 933
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v4

    .line 934
    .local v4, "r":I
    if-ltz v4, :cond_28

    .line 935
    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    .line 936
    const/4 v5, 0x0

    iput-object v5, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 937
    if-eqz v1, :cond_21

    .line 938
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_36

    .line 939
    :cond_21
    const/4 v0, 0x0

    .line 948
    if-eqz v0, :cond_27

    .line 949
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_27
    return-void

    .line 943
    .end local v4    # "r":I
    :cond_28
    :try_start_28
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_36

    move-result v5

    if-eqz v5, :cond_8

    .line 945
    const/4 v1, 0x1

    goto :goto_8

    .line 948
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_36
    move-exception v5

    if-eqz v0, :cond_3c

    .line 949
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_3c
    throw v5
.end method

.method private doAcquireSharedInterruptibly(I)V
    .registers 7
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 959
    sget-object v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 960
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    .line 963
    .local v0, "failed":Z
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 964
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v4, :cond_22

    .line 965
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v3

    .line 966
    .local v3, "r":I
    if-ltz v3, :cond_22

    .line 967
    invoke-direct {p0, v1, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    .line 968
    const/4 v4, 0x0

    iput-object v4, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_34

    .line 969
    const/4 v0, 0x0

    .line 978
    if-eqz v0, :cond_21

    .line 979
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_21
    return-void

    .line 973
    .end local v3    # "r":I
    :cond_22
    :try_start_22
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 975
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_34

    .line 978
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_34
    move-exception v4

    if-eqz v0, :cond_3a

    .line 979
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_3a
    throw v4
.end method

.method private doAcquireSharedNanos(IJ)Z
    .registers 16
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    .line 992
    cmp-long v7, p2, v10

    if-gtz v7, :cond_8

    .line 1020
    :cond_7
    :goto_7
    return v6

    .line 994
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, p2

    .line 995
    .local v0, "deadline":J
    sget-object v7, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v7}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 996
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x1

    .line 999
    .local v2, "failed":Z
    :cond_15
    :try_start_15
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v4

    .line 1000
    .local v4, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v4, v7, :cond_31

    .line 1001
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v5

    .line 1002
    .local v5, "r":I
    if-ltz v5, :cond_31

    .line 1003
    invoke-direct {p0, v3, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    .line 1004
    const/4 v6, 0x0

    iput-object v6, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_5c

    .line 1005
    const/4 v2, 0x0

    .line 1006
    const/4 v6, 0x1

    .line 1019
    if-eqz v2, :cond_7

    .line 1020
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_7

    .line 1009
    .end local v5    # "r":I
    :cond_31
    :try_start_31
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_5c

    move-result-wide v8

    sub-long p2, v0, v8

    .line 1010
    cmp-long v7, p2, v10

    if-gtz v7, :cond_41

    .line 1019
    if-eqz v2, :cond_7

    .line 1020
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_7

    .line 1012
    :cond_41
    :try_start_41
    invoke-static {v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v7

    if-eqz v7, :cond_50

    const-wide/16 v8, 0x3e8

    cmp-long v7, p2, v8

    if-lez v7, :cond_50

    .line 1014
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1015
    :cond_50
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1016
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_5c

    .line 1019
    .end local v4    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_5c
    move-exception v6

    if-eqz v2, :cond_62

    .line 1020
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_62
    throw v6
.end method

.method private doReleaseShared()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 662
    :cond_2
    :goto_2
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 663
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_17

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v0, v2, :cond_17

    .line 664
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 665
    .local v1, "ws":I
    if-ne v1, v3, :cond_1c

    .line 666
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 668
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 674
    .end local v1    # "ws":I
    :cond_17
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v0, v2, :cond_2

    .line 677
    return-void

    .line 670
    .restart local v1    # "ws":I
    :cond_1c
    if-nez v1, :cond_17

    const/4 v2, -0x3

    invoke-static {v0, v4, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_2
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 564
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 565
    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v0, :cond_14

    .line 566
    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 569
    :cond_14
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 570
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 572
    return-object v0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 1630
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1632
    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_2
    if-ne v0, p1, :cond_6

    .line 1633
    const/4 v1, 0x1

    .line 1635
    :goto_5
    return v1

    .line 1634
    :cond_6
    if-nez v0, :cond_a

    .line 1635
    const/4 v1, 0x0

    goto :goto_5

    .line 1636
    :cond_a
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_2
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .registers 9

    .prologue
    .line 1385
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_12

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v2, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v2, :cond_12

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v6, v7, :cond_12

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .local v3, "st":Ljava/lang/Thread;
    if-nez v3, :cond_24

    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "st":Ljava/lang/Thread;
    :cond_12
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v1, :cond_26

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .restart local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v2, :cond_26

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v6, v7, :cond_26

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .restart local v3    # "st":Ljava/lang/Thread;
    if-eqz v3, :cond_26

    :cond_24
    move-object v0, v3

    .line 1407
    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "st":Ljava/lang/Thread;
    :cond_25
    return-object v0

    .line 1399
    :cond_26
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1400
    .local v4, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x0

    .line 1401
    .local v0, "firstThread":Ljava/lang/Thread;
    :goto_29
    if-eqz v4, :cond_25

    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v4, v6, :cond_25

    .line 1402
    iget-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1403
    .local v5, "tt":Ljava/lang/Thread;
    if-eqz v5, :cond_34

    .line 1404
    move-object v0, v5

    .line 1405
    :cond_34
    iget-object v4, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1406
    goto :goto_29
.end method

.method private final parkAndCheckInterrupt()Z
    .registers 2

    .prologue
    .line 813
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 814
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    return v0
.end method

.method static selfInterrupt()V
    .registers 1

    .prologue
    .line 804
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 805
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 3
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v0, 0x0

    .line 607
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 608
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 609
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 610
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "propagate"    # I

    .prologue
    .line 688
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 689
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 705
    if-gtz p2, :cond_d

    if-eqz v0, :cond_d

    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gez v2, :cond_1a

    .line 706
    :cond_d
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 707
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 708
    :cond_17
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doReleaseShared()V

    .line 710
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1a
    return-void
.end method

.method private static shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 4
    .param p0, "pred"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v1, -0x1

    .line 773
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 774
    .local v0, "ws":I
    if-ne v0, v1, :cond_7

    .line 779
    const/4 v1, 0x1

    .line 797
    :goto_6
    return v1

    .line 780
    :cond_7
    if-lez v0, :cond_15

    .line 786
    :cond_9
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 787
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v1, :cond_9

    .line 788
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 797
    :goto_13
    const/4 v1, 0x0

    goto :goto_6

    .line 795
    :cond_15
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    goto :goto_13
.end method

.method private unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 623
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 624
    .local v2, "ws":I
    if-gez v2, :cond_8

    .line 625
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    .line 633
    :cond_8
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 634
    .local v0, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_10

    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-lez v3, :cond_1f

    .line 635
    :cond_10
    const/4 v0, 0x0

    .line 636
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_13
    if-eqz v1, :cond_1f

    if-eq v1, p1, :cond_1f

    .line 637
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v3, :cond_1c

    .line 638
    move-object v0, v1

    .line 636
    :cond_1c
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_13

    .line 640
    .end local v1    # "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1f
    if-eqz v0, :cond_26

    .line 641
    iget-object v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 642
    :cond_26
    return-void
.end method


# virtual methods
.method public final acquire(I)V
    .registers 3
    .param p1, "arg"    # I

    .prologue
    .line 1175
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1177
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    .line 1178
    :cond_15
    return-void
.end method

.method public final acquireInterruptibly(I)V
    .registers 3
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1196
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1197
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1198
    :cond_c
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1199
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireInterruptibly(I)V

    .line 1200
    :cond_15
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z
    .registers 7
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "arg"    # I

    .prologue
    .line 835
    const/4 v0, 0x1

    .line 837
    .local v0, "failed":Z
    const/4 v1, 0x0

    .line 839
    .local v1, "interrupted":Z
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 840
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v3, :cond_1d

    invoke-virtual {p0, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 841
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 842
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_2b

    .line 843
    const/4 v0, 0x0

    .line 851
    if-eqz v0, :cond_1c

    .line 852
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_1c
    return v1

    .line 846
    :cond_1d
    :try_start_1d
    invoke-static {v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2b

    move-result v3

    if-eqz v3, :cond_2

    .line 848
    const/4 v1, 0x1

    goto :goto_2

    .line 851
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_2b
    move-exception v3

    if-eqz v0, :cond_31

    .line 852
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    :cond_31
    throw v3
.end method

.method public final acquireShared(I)V
    .registers 3
    .param p1, "arg"    # I

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 1260
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireShared(I)V

    .line 1261
    :cond_9
    return-void
.end method

.method public final acquireSharedInterruptibly(I)V
    .registers 3
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1278
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1279
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1280
    :cond_c
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-gez v0, :cond_15

    .line 1281
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireSharedInterruptibly(I)V

    .line 1282
    :cond_15
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .registers 4

    .prologue
    .line 1440
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_14

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method protected final compareAndSetState(II)Z
    .registers 9
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 545
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->stateOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v3, 0x1

    .line 1697
    const/4 v0, 0x1

    .line 1699
    .local v0, "failed":Z
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    .line 1700
    .local v1, "savedState":I
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_18

    move-result v2

    if-eqz v2, :cond_12

    .line 1701
    const/4 v0, 0x0

    .line 1707
    if-eqz v0, :cond_11

    .line 1708
    iput v3, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    :cond_11
    return v1

    .line 1704
    :cond_12
    :try_start_12
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_18

    .line 1707
    .end local v1    # "savedState":I
    :catchall_18
    move-exception v2

    if-eqz v0, :cond_1d

    .line 1708
    iput v3, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    :cond_1d
    throw v2
.end method

.method public final getExclusiveQueuedThreads()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_19

    .line 1554
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1555
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1556
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_16

    .line 1557
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_16
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_7

    .line 1560
    :cond_19
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .registers 3

    .prologue
    .line 1368
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullGetFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_7
.end method

.method public final getQueueLength()I
    .registers 4

    .prologue
    .line 1514
    const/4 v0, 0x0

    .line 1515
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_3
    if-eqz v1, :cond_e

    .line 1516
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_b

    .line 1517
    add-int/lit8 v0, v0, 0x1

    .line 1515
    :cond_b
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_3

    .line 1519
    :cond_e
    return v0
.end method

.method public final getQueuedThreads()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_13

    .line 1536
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1537
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_10

    .line 1538
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    :cond_10
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_7

    .line 1540
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_13
    return-object v0
.end method

.method public final getSharedQueuedThreads()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_7
    if-eqz v1, :cond_19

    .line 1574
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1575
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1576
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_16

    .line 1577
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_16
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_7

    .line 1580
    :cond_19
    return-object v0
.end method

.method protected final getState()I
    .registers 2

    .prologue
    .line 520
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    return v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .prologue
    .line 1765
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1767
    :cond_e
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->getWaitQueueLength()I

    move-result v0

    return v0
.end method

.method public final getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1787
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1789
    :cond_e
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasContended()Z
    .registers 2

    .prologue
    .line 1352
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final hasQueuedPredecessors()Z
    .registers 6

    .prologue
    .line 1493
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1494
    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1496
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eq v0, v2, :cond_14

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_12

    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_14

    :cond_12
    const/4 v3, 0x1

    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public final hasQueuedThreads()Z
    .registers 3

    .prologue
    .line 1339
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .prologue
    .line 1743
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :cond_e
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->hasWaiters()Z

    move-result v0

    return v0
.end method

.method protected isHeldExclusively()Z
    .registers 2

    .prologue
    .line 1159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 1609
    iget v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_9

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v0, :cond_b

    .line 1610
    :cond_9
    const/4 v0, 0x0

    .line 1621
    :goto_a
    return v0

    .line 1611
    :cond_b
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_11

    .line 1612
    const/4 v0, 0x1

    goto :goto_a

    .line 1621
    :cond_11
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    goto :goto_a
.end method

.method public final isQueued(Ljava/lang/Thread;)Z
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 1421
    if-nez p1, :cond_8

    .line 1422
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1423
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_a
    if-eqz v0, :cond_15

    .line 1424
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_12

    .line 1425
    const/4 v1, 0x1

    .line 1426
    :goto_11
    return v1

    .line 1423
    :cond_12
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_a

    .line 1426
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public final owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z
    .registers 3
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .prologue
    .line 1723
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z

    move-result v0

    return v0
.end method

.method public final release(I)Z
    .registers 4
    .param p1, "arg"    # I

    .prologue
    .line 1238
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryRelease(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1239
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1240
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_11

    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-eqz v1, :cond_11

    .line 1241
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1242
    :cond_11
    const/4 v1, 0x1

    .line 1244
    .end local v0    # "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public final releaseShared(I)Z
    .registers 3
    .param p1, "arg"    # I

    .prologue
    .line 1318
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryReleaseShared(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1319
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doReleaseShared()V

    .line 1320
    const/4 v0, 0x1

    .line 1322
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected final setState(I)V
    .registers 2
    .param p1, "newState"    # I

    .prologue
    .line 529
    iput p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    .line 530
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1593
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    .line 1594
    .local v1, "s":I
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->hasQueuedThreads()Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v0, "non"

    .line 1595
    .local v0, "q":Ljava/lang/String;
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "empty queue]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1594
    .end local v0    # "q":Ljava/lang/String;
    :cond_38
    const-string v0, ""

    goto :goto_c
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v0, 0x0

    .line 1675
    const/4 v1, -0x2

    invoke-static {p1, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1676
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1677
    const/4 v0, 0x1

    .line 1687
    :cond_c
    return v0

    .line 1685
    :cond_d
    :goto_d
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1686
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_d
.end method

.method final transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v2, 0x0

    .line 1651
    const/4 v3, -0x2

    invoke-static {p1, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1664
    :goto_8
    return v2

    .line 1660
    :cond_9
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    .line 1661
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 1662
    .local v1, "ws":I
    if-gtz v1, :cond_18

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1663
    :cond_18
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1664
    :cond_1d
    const/4 v2, 0x1

    goto :goto_8
.end method

.method protected tryAcquire(I)Z
    .registers 3
    .param p1, "arg"    # I

    .prologue
    .line 1053
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireNanos(IJ)Z
    .registers 6
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1221
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1222
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1223
    :cond_c
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireNanos(IJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected tryAcquireShared(I)I
    .registers 3
    .param p1, "arg"    # I

    .prologue
    .line 1115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireSharedNanos(IJ)Z
    .registers 6
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1303
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1304
    :cond_c
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    move-result v0

    if-gez v0, :cond_18

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireSharedNanos(IJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected tryRelease(I)Z
    .registers 3
    .param p1, "arg"    # I

    .prologue
    .line 1079
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected tryReleaseShared(I)Z
    .registers 3
    .param p1, "arg"    # I

    .prologue
    .line 1140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
