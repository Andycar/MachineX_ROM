.class Ldalvik/system/profiler/SamplingProfiler$Sampler;
.super Ljava/util/TimerTask;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sampler"
.end annotation


# instance fields
.field private stop:Z

.field private stopped:Z

.field final synthetic this$0:Ldalvik/system/profiler/SamplingProfiler;

.field private timerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ldalvik/system/profiler/SamplingProfiler;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/profiler/SamplingProfiler;Ldalvik/system/profiler/SamplingProfiler$1;)V
    .registers 3
    .param p1, "x0"    # Ldalvik/system/profiler/SamplingProfiler;
    .param p2, "x1"    # Ldalvik/system/profiler/SamplingProfiler$1;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Ldalvik/system/profiler/SamplingProfiler$Sampler;-><init>(Ldalvik/system/profiler/SamplingProfiler;)V

    return-void
.end method

.method static synthetic access$102(Ldalvik/system/profiler/SamplingProfiler$Sampler;Z)Z
    .registers 2
    .param p0, "x0"    # Ldalvik/system/profiler/SamplingProfiler$Sampler;
    .param p1, "x1"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stop:Z

    return p1
.end method

.method static synthetic access$200(Ldalvik/system/profiler/SamplingProfiler$Sampler;)Z
    .registers 2
    .param p0, "x0"    # Ldalvik/system/profiler/SamplingProfiler$Sampler;

    .prologue
    .line 344
    iget-boolean v0, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stopped:Z

    return v0
.end method

.method private addEndThread(Ljava/lang/Thread;)V
    .registers 7
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 479
    if-nez p1, :cond_a

    .line 480
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_a
    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v2}, Ldalvik/system/profiler/SamplingProfiler;->access$600(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 483
    .local v1, "threadId":Ljava/lang/Integer;
    if-nez v1, :cond_31

    .line 484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-result-object v0

    .line 487
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;
    invoke-static {v2}, Ldalvik/system/profiler/SamplingProfiler;->access$1000(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    .line 488
    return-void
.end method

.method private addStartThread(Ljava/lang/Thread;)V
    .registers 13
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    const/4 v5, 0x0

    .line 453
    if-nez p1, :cond_b

    .line 454
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "thread == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 456
    :cond_b
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # operator++ for: Ldalvik/system/profiler/SamplingProfiler;->nextThreadId:I
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->access$1108(Ldalvik/system/profiler/SamplingProfiler;)I

    move-result v6

    .line 457
    .local v6, "threadId":I
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->access$600(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 458
    .local v3, "old":Ljava/lang/Integer;
    if-eqz v3, :cond_3c

    .line 459
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread already registered as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 462
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, "threadName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    .line 465
    .local v1, "group":Ljava/lang/ThreadGroup;
    if-nez v1, :cond_60

    move-object v2, v5

    .line 466
    .local v2, "groupName":Ljava/lang/String;
    :goto_47
    if-nez v1, :cond_65

    move-object v4, v5

    .line 467
    .local v4, "parentGroup":Ljava/lang/ThreadGroup;
    :goto_4a
    if-nez v4, :cond_6a

    .line 469
    .local v5, "parentGroupName":Ljava/lang/String;
    :goto_4c
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # operator++ for: Ldalvik/system/profiler/SamplingProfiler;->nextObjectId:I
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->access$1208(Ldalvik/system/profiler/SamplingProfiler;)I

    move-result v8

    invoke-static {v8, v6, v7, v2, v5}, Ldalvik/system/profiler/HprofData$ThreadEvent;->start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;

    move-result-object v0

    .line 472
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v8, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;
    invoke-static {v8}, Ldalvik/system/profiler/SamplingProfiler;->access$1000(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    move-result-object v8

    invoke-virtual {v8, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    .line 473
    return-void

    .line 465
    .end local v0    # "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    .end local v2    # "groupName":Ljava/lang/String;
    .end local v4    # "parentGroup":Ljava/lang/ThreadGroup;
    .end local v5    # "parentGroupName":Ljava/lang/String;
    :cond_60
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    .line 466
    .restart local v2    # "groupName":Ljava/lang/String;
    :cond_65
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v4

    goto :goto_4a

    .line 467
    .restart local v4    # "parentGroup":Ljava/lang/ThreadGroup;
    :cond_6a
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4c
.end method

.method private recordStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V
    .registers 10
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "stackFrames"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 395
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->threadIds:Ljava/util/Map;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$600(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 396
    .local v3, "threadId":Ljava/lang/Integer;
    if-nez v3, :cond_27

    .line 397
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 399
    :cond_27
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$700(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    .line 400
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$700(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    move-result-object v4

    iput-object p2, v4, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    .line 402
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->stackTraces:Ljava/util/Map;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$800(Ldalvik/system/profiler/SamplingProfiler;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->mutableStackTrace:Ldalvik/system/profiler/HprofData$StackTrace;
    invoke-static {v5}, Ldalvik/system/profiler/SamplingProfiler;->access$700(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData$StackTrace;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 403
    .local v0, "countCell":[I
    if-nez v0, :cond_70

    .line 404
    const/4 v4, 0x1

    new-array v0, v4, [I

    .line 406
    invoke-virtual {p2}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 407
    .local v1, "stackFramesCopy":[Ljava/lang/StackTraceElement;
    new-instance v2, Ldalvik/system/profiler/HprofData$StackTrace;

    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # operator++ for: Ldalvik/system/profiler/SamplingProfiler;->nextStackTraceId:I
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$908(Ldalvik/system/profiler/SamplingProfiler;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v4, v5, v1}, Ldalvik/system/profiler/HprofData$StackTrace;-><init>(II[Ljava/lang/StackTraceElement;)V

    .line 409
    .local v2, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    iget-object v4, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->hprofData:Ldalvik/system/profiler/HprofData;
    invoke-static {v4}, Ldalvik/system/profiler/SamplingProfiler;->access$1000(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/HprofData;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    .line 411
    .end local v1    # "stackFramesCopy":[Ljava/lang/StackTraceElement;
    .end local v2    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_70
    const/4 v4, 0x0

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    .line 412
    return-void
.end method

.method private updateThreadHistory([Ljava/lang/Thread;[Ljava/lang/Thread;)V
    .registers 10
    .param p1, "oldThreads"    # [Ljava/lang/Thread;
    .param p2, "newThreads"    # [Ljava/lang/Thread;

    .prologue
    .line 418
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 419
    .local v2, "n":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 422
    .local v3, "o":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 423
    .local v0, "added":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 426
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 427
    .local v4, "removed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 429
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 430
    .local v5, "thread":Ljava/lang/Thread;
    if-eqz v5, :cond_26

    .line 433
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-eq v5, v6, :cond_26

    .line 436
    invoke-direct {p0, v5}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->addStartThread(Ljava/lang/Thread;)V

    goto :goto_26

    .line 438
    .end local v5    # "thread":Ljava/lang/Thread;
    :cond_3c
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 439
    .restart local v5    # "thread":Ljava/lang/Thread;
    if-eqz v5, :cond_40

    .line 442
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-eq v5, v6, :cond_40

    .line 445
    invoke-direct {p0, v5}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->addEndThread(Ljava/lang/Thread;)V

    goto :goto_40

    .line 447
    .end local v5    # "thread":Ljava/lang/Thread;
    :cond_56
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 352
    monitor-enter p0

    .line 353
    :try_start_1
    iget-boolean v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stop:Z

    if-eqz v6, :cond_10

    .line 354
    invoke-virtual {p0}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->cancel()Z

    .line 355
    const/4 v6, 0x1

    iput-boolean v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->stopped:Z

    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p0

    .line 388
    :cond_f
    return-void

    .line 359
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_5a

    .line 361
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-nez v6, :cond_1b

    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    .line 368
    :cond_1b
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->threadSet:Ldalvik/system/profiler/SamplingProfiler$ThreadSet;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$300(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/SamplingProfiler$ThreadSet;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/profiler/SamplingProfiler$ThreadSet;->threads()[Ljava/lang/Thread;

    move-result-object v3

    .line 369
    .local v3, "newThreads":[Ljava/lang/Thread;
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$400(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v6, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 370
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$400(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->updateThreadHistory([Ljava/lang/Thread;[Ljava/lang/Thread;)V

    .line 371
    iget-object v7, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    invoke-virtual {v3}, [Ljava/lang/Thread;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Thread;

    # setter for: Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v7, v6}, Ldalvik/system/profiler/SamplingProfiler;->access$402(Ldalvik/system/profiler/SamplingProfiler;[Ljava/lang/Thread;)[Ljava/lang/Thread;

    .line 374
    :cond_45
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$400(Ldalvik/system/profiler/SamplingProfiler;)[Ljava/lang/Thread;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Thread;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4d
    if-ge v1, v2, :cond_f

    aget-object v5, v0, v1

    .line 375
    .local v5, "thread":Ljava/lang/Thread;
    if-eqz v5, :cond_f

    .line 378
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->timerThread:Ljava/lang/Thread;

    if-ne v5, v6, :cond_5d

    .line 374
    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 359
    .end local v0    # "arr$":[Ljava/lang/Thread;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "newThreads":[Ljava/lang/Thread;
    .end local v5    # "thread":Ljava/lang/Thread;
    :catchall_5a
    move-exception v6

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v6

    .line 382
    .restart local v0    # "arr$":[Ljava/lang/Thread;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "newThreads":[Ljava/lang/Thread;
    .restart local v5    # "thread":Ljava/lang/Thread;
    :cond_5d
    iget-object v6, p0, Ldalvik/system/profiler/SamplingProfiler$Sampler;->this$0:Ldalvik/system/profiler/SamplingProfiler;

    # getter for: Ldalvik/system/profiler/SamplingProfiler;->threadSampler:Ldalvik/system/profiler/ThreadSampler;
    invoke-static {v6}, Ldalvik/system/profiler/SamplingProfiler;->access$500(Ldalvik/system/profiler/SamplingProfiler;)Ldalvik/system/profiler/ThreadSampler;

    move-result-object v6

    invoke-interface {v6, v5}, Ldalvik/system/profiler/ThreadSampler;->getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 383
    .local v4, "stackFrames":[Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_57

    .line 386
    invoke-direct {p0, v5, v4}, Ldalvik/system/profiler/SamplingProfiler$Sampler;->recordStackTrace(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    goto :goto_57
.end method
