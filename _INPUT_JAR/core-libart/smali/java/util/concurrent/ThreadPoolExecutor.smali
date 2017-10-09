.class public Ljava/util/concurrent/ThreadPoolExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x1fffffff

.field private static final COUNT_BITS:I = 0x1d

.field private static final ONLY_ONE:Z = true

.field private static final RUNNING:I = -0x20000000

.field private static final SHUTDOWN:I = 0x0

.field private static final STOP:I = 0x20000000

.field private static final TERMINATED:I = 0x60000000

.field private static final TIDYING:I = 0x40000000

.field private static final defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final shutdownPerm:Ljava/lang/RuntimePermission;


# instance fields
.field private volatile allowCoreThreadTimeOut:Z

.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private final ctl:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile keepAliveTime:J

.field private largestPoolSize:I

.field private final mainLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile maximumPoolSize:I

.field private final termination:Ljava/util/concurrent/locks/Condition;

.field private volatile threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/concurrent/ThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 516
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 539
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 18
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1165
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1167
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 19
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1235
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1237
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 19
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1200
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v9, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1202
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 12
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1272
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 347
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x20000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 429
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 435
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    .line 440
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    .line 1273
    if-ltz p1, :cond_33

    if-lez p2, :cond_33

    if-lt p2, p1, :cond_33

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_39

    .line 1277
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1278
    :cond_39
    if-eqz p6, :cond_3f

    if-eqz p7, :cond_3f

    if-nez p8, :cond_45

    .line 1279
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1280
    :cond_45
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1281
    iput p2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1282
    iput-object p6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1283
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1284
    iput-object p7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1285
    iput-object p8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1286
    return-void
.end method

.method private addWorker(Ljava/lang/Runnable;Z)Z
    .registers 14
    .param p1, "firstTask"    # Ljava/lang/Runnable;
    .param p2, "core"    # Z

    .prologue
    const/4 v9, 0x0

    .line 867
    :goto_1
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 868
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    .line 871
    .local v2, "rs":I
    if-ltz v2, :cond_1a

    if-nez v2, :cond_19

    if-nez p1, :cond_19

    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 928
    :cond_19
    :goto_19
    return v9

    .line 878
    :cond_1a
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v7

    .line 879
    .local v7, "wc":I
    const v10, 0x1fffffff

    if-ge v7, v10, :cond_19

    if-eqz p2, :cond_69

    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    :goto_27
    if-ge v7, v10, :cond_19

    .line 882
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndIncrementWorkerCount(I)Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 891
    const/4 v9, 0x0

    .line 892
    .local v9, "workerStarted":Z
    const/4 v8, 0x0

    .line 893
    .local v8, "workerAdded":Z
    const/4 v5, 0x0

    .line 895
    .local v5, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_32
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-direct {v6, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_9a

    .line 896
    .end local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .local v6, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_37
    iget-object v4, v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 897
    .local v4, "t":Ljava/lang/Thread;
    if-eqz v4, :cond_94

    .line 898
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 899
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_61

    .line 904
    :try_start_40
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-static {v10}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    .line 906
    if-ltz v2, :cond_50

    if-nez v2, :cond_8b

    if-nez p1, :cond_8b

    .line 908
    :cond_50
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_79

    .line 909
    new-instance v10, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v10}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v10
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_5c

    .line 917
    :catchall_5c
    move-exception v10

    :try_start_5d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v10
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_61

    .line 925
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "t":Ljava/lang/Thread;
    :catchall_61
    move-exception v10

    move-object v5, v6

    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :goto_63
    if-nez v9, :cond_68

    .line 926
    invoke-direct {p0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    :cond_68
    throw v10

    .line 879
    .end local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v8    # "workerAdded":Z
    .end local v9    # "workerStarted":Z
    :cond_69
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    goto :goto_27

    .line 884
    :cond_6c
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 885
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v10

    if-eq v10, v2, :cond_1a

    goto :goto_1

    .line 910
    .restart local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "t":Ljava/lang/Thread;
    .restart local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v8    # "workerAdded":Z
    .restart local v9    # "workerStarted":Z
    :cond_79
    :try_start_79
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 912
    .local v3, "s":I
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    if-le v3, v10, :cond_8a

    .line 913
    iput v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_8a
    .catchall {:try_start_79 .. :try_end_8a} :catchall_5c

    .line 914
    :cond_8a
    const/4 v8, 0x1

    .line 917
    .end local v3    # "s":I
    :cond_8b
    :try_start_8b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 919
    if-eqz v8, :cond_94

    .line 920
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_61

    .line 921
    const/4 v9, 0x1

    .line 925
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_94
    if-nez v9, :cond_19

    .line 926
    invoke-direct {p0, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    goto :goto_19

    .line 925
    .end local v4    # "t":Ljava/lang/Thread;
    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_9a
    move-exception v10

    goto :goto_63
.end method

.method private addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .registers 4
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .prologue
    .line 939
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 940
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 942
    if-eqz p1, :cond_c

    .line 943
    :try_start_7
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 944
    :cond_c
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 945
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    .line 947
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 949
    return-void

    .line 947
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private advanceRunState(I)V
    .registers 5
    .param p1, "targetState"    # I

    .prologue
    .line 642
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 643
    .local v0, "c":I
    invoke-static {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    :cond_1c
    return-void
.end method

.method private checkShutdownAccess()V
    .registers 6

    .prologue
    .line 703
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 704
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_30

    .line 705
    sget-object v4, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 706
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 707
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 709
    :try_start_10
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 710
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v4, v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_28

    goto :goto_16

    .line 712
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_28
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 715
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_30
    return-void
.end method

.method private compareAndDecrementWorkerCount(I)Z
    .registers 4
    .param p1, "expect"    # I

    .prologue
    .line 391
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private compareAndIncrementWorkerCount(I)Z
    .registers 4
    .param p1, "expect"    # I

    .prologue
    .line 384
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private static ctlOf(II)I
    .registers 3
    .param p0, "rs"    # I
    .param p1, "wc"    # I

    .prologue
    .line 361
    or-int v0, p0, p1

    return v0
.end method

.method private decrementWorkerCount()V
    .registers 2

    .prologue
    .line 400
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    return-void
.end method

.method private drainQueue()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 823
    .local v3, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v5, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-interface {v3, v5}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 825
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 826
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Runnable;

    invoke-interface {v3, v6}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    .local v0, "arr$":[Ljava/lang/Runnable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1b
    if-ge v1, v2, :cond_2b

    aget-object v4, v0, v1

    .line 827
    .local v4, "r":Ljava/lang/Runnable;
    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 828
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 831
    .end local v0    # "arr$":[Ljava/lang/Runnable;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_2b
    return-object v5
.end method

.method private getTask()Ljava/lang/Runnable;
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1010
    const/4 v5, 0x0

    .line 1013
    .local v5, "timedOut":Z
    :cond_3
    :goto_3
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1014
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v3

    .line 1017
    .local v3, "rs":I
    if-ltz v3, :cond_20

    const/high16 v7, 0x20000000

    if-ge v3, v7, :cond_1b

    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1018
    :cond_1b
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    move-object v1, v9

    .line 1039
    :cond_1f
    :goto_1f
    return-object v1

    .line 1022
    :cond_20
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v6

    .line 1025
    .local v6, "wc":I
    iget-boolean v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-nez v7, :cond_2c

    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-le v6, v7, :cond_47

    :cond_2c
    move v4, v8

    .line 1027
    .local v4, "timed":Z
    :goto_2d
    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    if-gt v6, v7, :cond_35

    if-eqz v4, :cond_49

    if-eqz v5, :cond_49

    :cond_35
    if-gt v6, v8, :cond_3f

    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 1029
    :cond_3f
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v1, v9

    .line 1030
    goto :goto_1f

    .line 1025
    .end local v4    # "timed":Z
    :cond_47
    const/4 v4, 0x0

    goto :goto_2d

    .line 1035
    .restart local v4    # "timed":Z
    :cond_49
    if-eqz v4, :cond_5c

    :try_start_4b
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v10, v11, v12}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    move-object v1, v7

    .line 1038
    .local v1, "r":Ljava/lang/Runnable;
    :goto_58
    if-nez v1, :cond_1f

    .line 1040
    const/4 v5, 0x1

    goto :goto_3

    .line 1035
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_5c
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_64} :catch_66

    move-object v1, v7

    goto :goto_58

    .line 1041
    :catch_66
    move-exception v2

    .line 1042
    .local v2, "retry":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private interruptIdleWorkers()V
    .registers 2

    .prologue
    .line 778
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    .line 779
    return-void
.end method

.method private interruptIdleWorkers(Z)V
    .registers 7
    .param p1, "onlyOne"    # Z

    .prologue
    .line 752
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 753
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 755
    :try_start_5
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 756
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v2, v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 757
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryLock()Z
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_36

    move-result v4

    if-eqz v4, :cond_2b

    .line 759
    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_28} :catch_31
    .catchall {:try_start_25 .. :try_end_28} :catchall_3b

    .line 762
    :try_start_28
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_36

    .line 765
    :cond_2b
    :goto_2b
    if-eqz p1, :cond_b

    .line 769
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_2d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 771
    return-void

    .line 760
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_31
    move-exception v4

    .line 762
    :try_start_32
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_2b

    .line 769
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_36
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 762
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_3b
    move-exception v4

    :try_start_3c
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    throw v4
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_36
.end method

.method private interruptWorkers()V
    .registers 5

    .prologue
    .line 722
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 723
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 725
    :try_start_5
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 726
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfStarted()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 728
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_1b
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 730
    return-void
.end method

.method private static isRunning(I)Z
    .registers 2
    .param p0, "c"    # I

    .prologue
    .line 377
    if-gez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V
    .registers 11
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .param p2, "completedAbruptly"    # Z

    .prologue
    const/4 v3, 0x0

    .line 965
    if-eqz p2, :cond_6

    .line 966
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 968
    :cond_6
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 969
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 971
    :try_start_b
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 972
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_44

    .line 974
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 977
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 979
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 980
    .local v0, "c":I
    const/high16 v4, 0x20000000

    invoke-static {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 981
    if-nez p2, :cond_4c

    .line 982
    iget-boolean v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eqz v4, :cond_49

    move v2, v3

    .line 983
    .local v2, "min":I
    :goto_32
    if-nez v2, :cond_3d

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 984
    const/4 v2, 0x1

    .line 985
    :cond_3d
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v4

    if-lt v4, v2, :cond_4c

    .line 990
    .end local v2    # "min":I
    :cond_43
    :goto_43
    return-void

    .line 974
    .end local v0    # "c":I
    :catchall_44
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 982
    .restart local v0    # "c":I
    :cond_49
    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    goto :goto_32

    .line 988
    :cond_4c
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_43
.end method

.method private static runStateAtLeast(II)Z
    .registers 3
    .param p0, "c"    # I
    .param p1, "s"    # I

    .prologue
    .line 373
    if-lt p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static runStateLessThan(II)Z
    .registers 3
    .param p0, "c"    # I
    .param p1, "s"    # I

    .prologue
    .line 369
    if-ge p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static runStateOf(I)I
    .registers 2
    .param p0, "c"    # I

    .prologue
    .line 359
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    return v0
.end method

.method private static workerCountOf(I)I
    .registers 2
    .param p0, "c"    # I

    .prologue
    .line 360
    const v0, 0x1fffffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1955
    return-void
.end method

.method public allowCoreThreadTimeOut(Z)V
    .registers 6
    .param p1, "value"    # Z

    .prologue
    .line 1607
    if-eqz p1, :cond_12

    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 1608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Core threads must have nonzero keep alive times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :cond_12
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eq p1, v0, :cond_1d

    .line 1610
    iput-boolean p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    .line 1611
    if-eqz p1, :cond_1d

    .line 1612
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1614
    :cond_1d
    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .registers 2

    .prologue
    .line 1586
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    return v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1422
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1423
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1424
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1427
    :goto_9
    :try_start_9
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/high16 v4, 0x60000000

    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_2e

    move-result v1

    if-eqz v1, :cond_1c

    .line 1428
    const/4 v1, 0x1

    .line 1434
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1b
    return v1

    .line 1429
    :cond_1c
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_27

    .line 1430
    const/4 v1, 0x0

    .line 1434
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1b

    .line 1431
    :cond_27
    :try_start_27
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2e

    move-result-wide v2

    goto :goto_9

    .line 1434
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1907
    return-void
.end method

.method ensurePrestart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1551
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    .line 1552
    .local v0, "wc":I
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v0, v1, :cond_14

    .line 1553
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1556
    :cond_13
    :goto_13
    return-void

    .line 1554
    :cond_14
    if-nez v0, :cond_13

    .line 1555
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_13
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 1303
    if-nez p1, :cond_9

    .line 1304
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1325
    :cond_9
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1326
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v2, v3, :cond_25

    .line 1327
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1340
    :cond_1e
    :goto_1e
    return-void

    .line 1329
    :cond_1f
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1331
    :cond_25
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1332
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1333
    .local v1, "recheck":I
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1334
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 1335
    :cond_49
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-nez v2, :cond_1e

    .line 1336
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_1e

    .line 1338
    .end local v1    # "recheck":I
    :cond_54
    invoke-direct {p0, p1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1339
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_1e
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1443
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 1444
    return-void
.end method

.method public getActiveCount()I
    .registers 6

    .prologue
    .line 1779
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1780
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1782
    const/4 v2, 0x0

    .line 1783
    .local v2, "n":I
    :try_start_6
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1784
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_25

    move-result v4

    if-eqz v4, :cond_c

    .line 1785
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1788
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_21
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_25
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public getCompletedTaskCount()J
    .registers 9

    .prologue
    .line 1842
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1843
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1845
    :try_start_5
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1846
    .local v2, "n":J
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1847
    .local v4, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    add-long/2addr v2, v6

    goto :goto_d

    .line 1850
    .end local v4    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v2

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "n":J
    :catchall_21
    move-exception v5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getCorePoolSize()I
    .registers 2

    .prologue
    .line 1530
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1682
    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestPoolSize()I
    .registers 3

    .prologue
    .line 1799
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1800
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1802
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 1804
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getMaximumPoolSize()I
    .registers 2

    .prologue
    .line 1643
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .registers 4

    .prologue
    .line 1760
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1761
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1765
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1f

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    .line 1768
    :goto_14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1765
    :cond_18
    :try_start_18
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    move-result v1

    goto :goto_14

    .line 1768
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1696
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .registers 2

    .prologue
    .line 1489
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .registers 9

    .prologue
    .line 1817
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1818
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1820
    :try_start_5
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1821
    .local v2, "n":J
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1822
    .local v4, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v2, v6

    .line 1823
    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1824
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_d

    .line 1826
    .end local v4    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_26
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_32

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v2

    .line 1828
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v6

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "n":J
    :catchall_32
    move-exception v5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .prologue
    .line 1466
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method final isRunningOrShutdown(Z)Z
    .registers 4
    .param p1, "shutdownOK"    # Z

    .prologue
    .line 811
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v0

    .line 812
    .local v0, "rs":I
    const/high16 v1, -0x20000000

    if-eq v0, v1, :cond_12

    if-nez v0, :cond_14

    if-eqz p1, :cond_14

    :cond_12
    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public isShutdown()Z
    .registers 2

    .prologue
    .line 1397
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTerminated()Z
    .registers 3

    .prologue
    .line 1417
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    return v0
.end method

.method public isTerminating()Z
    .registers 3

    .prologue
    .line 1412
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1413
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v1

    if-nez v1, :cond_16

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method onShutdown()V
    .registers 1

    .prologue
    .line 802
    return-void
.end method

.method public prestartAllCoreThreads()I
    .registers 4

    .prologue
    .line 1566
    const/4 v0, 0x0

    .line 1567
    .local v0, "n":I
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1569
    :cond_c
    return v0
.end method

.method public prestartCoreThread()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1542
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v1

    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v1, v2, :cond_17

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public purge()V
    .registers 9

    .prologue
    .line 1732
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1734
    .local v5, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :try_start_2
    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1735
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1736
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 1737
    .local v6, "r":Ljava/lang/Runnable;
    instance-of v7, v6, Ljava/util/concurrent/Future;

    if-eqz v7, :cond_6

    check-cast v6, Ljava/util/concurrent/Future;

    .end local v6    # "r":Ljava/lang/Runnable;
    invoke-interface {v6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1738
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_21
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_21} :catch_22

    goto :goto_6

    .line 1740
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catch_22
    move-exception v1

    .line 1744
    .local v1, "fallThrough":Ljava/util/ConcurrentModificationException;
    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_29
    if-ge v2, v4, :cond_40

    aget-object v6, v0, v2

    .line 1745
    .local v6, "r":Ljava/lang/Object;
    instance-of v7, v6, Ljava/util/concurrent/Future;

    if-eqz v7, :cond_3d

    move-object v7, v6

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1746
    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1744
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1749
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "fallThrough":Ljava/util/ConcurrentModificationException;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "r":Ljava/lang/Object;
    :cond_40
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1750
    return-void
.end method

.method final reject(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 793
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 794
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1716
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1717
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1718
    return v0
.end method

.method final runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .registers 12
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .prologue
    const-wide/16 v8, 0x1

    .line 1091
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 1092
    .local v3, "wt":Ljava/lang/Thread;
    iget-object v1, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1093
    .local v1, "task":Ljava/lang/Runnable;
    const/4 v5, 0x0

    iput-object v5, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1094
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 1095
    const/4 v0, 0x1

    .line 1097
    .local v0, "completedAbruptly":Z
    :goto_f
    if-nez v1, :cond_17

    :try_start_11
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTask()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 1098
    :cond_17
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->lock()V

    .line 1103
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/high16 v6, 0x20000000

    invoke-static {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/high16 v6, 0x20000000

    invoke-static {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v5

    if-eqz v5, :cond_45

    :cond_3c
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_45

    .line 1107
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_59

    .line 1109
    :cond_45
    :try_start_45
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_66

    .line 1110
    const/4 v2, 0x0

    .line 1112
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_49
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4c} :catch_5e
    .catch Ljava/lang/Error; {:try_start_49 .. :try_end_4c} :catch_71
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_74
    .catchall {:try_start_49 .. :try_end_4c} :catchall_61

    .line 1120
    :try_start_4c
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_66

    .line 1123
    const/4 v1, 0x0

    .line 1124
    :try_start_50
    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v6, v8

    iput-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1125
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_59

    goto :goto_f

    .line 1130
    .end local v2    # "thrown":Ljava/lang/Throwable;
    :catchall_59
    move-exception v5

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    throw v5

    .line 1113
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    :catch_5e
    move-exception v4

    .line 1114
    .local v4, "x":Ljava/lang/RuntimeException;
    move-object v2, v4

    :try_start_60
    throw v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 1120
    .end local v4    # "x":Ljava/lang/RuntimeException;
    :catchall_61
    move-exception v5

    :try_start_62
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    .line 1123
    .end local v2    # "thrown":Ljava/lang/Throwable;
    :catchall_66
    move-exception v5

    const/4 v1, 0x0

    .line 1124
    :try_start_68
    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v6, v8

    iput-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1125
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    throw v5
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_59

    .line 1115
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    :catch_71
    move-exception v4

    .line 1116
    .local v4, "x":Ljava/lang/Error;
    move-object v2, v4

    :try_start_73
    throw v4

    .line 1117
    .end local v4    # "x":Ljava/lang/Error;
    :catch_74
    move-exception v4

    .line 1118
    .local v4, "x":Ljava/lang/Throwable;
    move-object v2, v4

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v4}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_61

    .line 1128
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_7c
    const/4 v0, 0x0

    .line 1130
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    .line 1132
    return-void
.end method

.method public setCorePoolSize(I)V
    .registers 7
    .param p1, "corePoolSize"    # I

    .prologue
    .line 1504
    if-gez p1, :cond_8

    .line 1505
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1506
    :cond_8
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    sub-int v0, p1, v3

    .line 1507
    .local v0, "delta":I
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1508
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v3

    if-le v3, p1, :cond_1e

    .line 1509
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1521
    :cond_1d
    return-void

    .line 1510
    :cond_1e
    if-lez v0, :cond_1d

    .line 1515
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "k":I
    move v2, v1

    .line 1516
    .end local v1    # "k":I
    .local v2, "k":I
    :goto_2b
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    if-lez v2, :cond_1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1517
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_2b
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v6, 0x0

    .line 1661
    cmp-long v4, p1, v6

    if-gez v4, :cond_c

    .line 1662
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1663
    :cond_c
    cmp-long v4, p1, v6

    if-nez v4, :cond_1e

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1664
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Core threads must have nonzero keep alive times"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1665
    :cond_1e
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1666
    .local v2, "keepAliveTime":J
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sub-long v0, v2, v4

    .line 1667
    .local v0, "delta":J
    iput-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1668
    cmp-long v4, v0, v6

    if-gez v4, :cond_2f

    .line 1669
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1670
    :cond_2f
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .registers 3
    .param p1, "maximumPoolSize"    # I

    .prologue
    .line 1629
    if-lez p1, :cond_6

    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge p1, v0, :cond_c

    .line 1630
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1631
    :cond_c
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1632
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    if-le v0, p1, :cond_1d

    .line 1633
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1634
    :cond_1d
    return-void
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 3
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 1477
    if-nez p1, :cond_8

    .line 1478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1479
    :cond_8
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1480
    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 1454
    if-nez p1, :cond_8

    .line 1455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1456
    :cond_8
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1457
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 1352
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1353
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1355
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1356
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1357
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1358
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->onShutdown()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    .line 1360
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1362
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1363
    return-void

    .line 1360
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1382
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1383
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1385
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1386
    const/high16 v2, 0x20000000

    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1387
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptWorkers()V

    .line 1388
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->drainQueue()Ljava/util/List;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1b

    move-result-object v1

    .line 1390
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1392
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1393
    return-object v1

    .line 1390
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_1b
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected terminated()V
    .registers 1

    .prologue
    .line 1963
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 1864
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1865
    .local v2, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1867
    :try_start_5
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1868
    .local v4, "ncompleted":J
    const/4 v3, 0x0

    .line 1869
    .local v3, "nactive":I
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v6

    .line 1870
    .local v6, "nworkers":I
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1871
    .local v8, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v10, v8, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v10

    .line 1872
    invoke-virtual {v8}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_8e

    move-result v9

    if-eqz v9, :cond_14

    .line 1873
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1876
    .end local v8    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_2c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1878
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1879
    .local v0, "c":I
    const/4 v9, 0x0

    invoke-static {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v9

    if-eqz v9, :cond_93

    const-string v7, "Running"

    .line 1882
    .local v7, "rs":Ljava/lang/String;
    :goto_3e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pool size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", active threads = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", queued tasks = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", completed tasks = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1876
    .end local v0    # "c":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "nactive":I
    .end local v4    # "ncompleted":J
    .end local v6    # "nworkers":I
    .end local v7    # "rs":Ljava/lang/String;
    :catchall_8e
    move-exception v9

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    .line 1879
    .restart local v0    # "c":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "nactive":I
    .restart local v4    # "ncompleted":J
    .restart local v6    # "nworkers":I
    :cond_93
    const/high16 v9, 0x60000000

    invoke-static {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v9

    if-eqz v9, :cond_9e

    const-string v7, "Terminated"

    goto :goto_3e

    :cond_9e
    const-string v7, "Shutting down"

    goto :goto_3e
.end method

.method final tryTerminate()V
    .registers 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 661
    :goto_2
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 662
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 684
    :cond_22
    :goto_22
    return-void

    .line 666
    :cond_23
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-eqz v2, :cond_2e

    .line 667
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    goto :goto_22

    .line 671
    :cond_2e
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 672
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 674
    :try_start_33
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_6d

    move-result v2

    if-eqz v2, :cond_72

    .line 676
    :try_start_42
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5a

    .line 678
    :try_start_45
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, 0x60000000

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 679
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_6d

    .line 684
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_22

    .line 678
    :catchall_5a
    move-exception v2

    :try_start_5b
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v4, 0x60000000

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 679
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    throw v2
    :try_end_6d
    .catchall {:try_start_5b .. :try_end_6d} :catchall_6d

    .line 684
    :catchall_6d
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_72
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2
.end method
