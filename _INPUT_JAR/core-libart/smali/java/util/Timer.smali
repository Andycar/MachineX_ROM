.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$1;,
        Ljava/util/Timer$FinalizerHelper;,
        Ljava/util/Timer$TimerImpl;
    }
.end annotation


# static fields
.field private static timerId:J


# instance fields
.field private final finalizer:Ljava/util/Timer$FinalizerHelper;

.field private final impl:Ljava/util/Timer$TimerImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Z)V

    .line 392
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 376
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    if-nez p1, :cond_d

    .line 363
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_d
    new-instance v0, Ljava/util/Timer$TimerImpl;

    invoke-direct {v0, p1, p2}, Ljava/util/Timer$TimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    .line 366
    new-instance v0, Ljava/util/Timer$FinalizerHelper;

    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-direct {v0, v1}, Ljava/util/Timer$FinalizerHelper;-><init>(Ljava/util/Timer$TimerImpl;)V

    iput-object v0, p0, Ljava/util/Timer;->finalizer:Ljava/util/Timer$FinalizerHelper;

    .line 367
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 6
    .param p1, "isDaemon"    # Z

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Timer;->nextId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 385
    return-void
.end method

.method private static declared-synchronized nextId()J
    .registers 6

    .prologue
    .line 345
    const-class v1, Ljava/util/Timer;

    monitor-enter v1

    :try_start_3
    sget-wide v2, Ljava/util/Timer;->timerId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Ljava/util/Timer;->timerId:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-wide v2

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private scheduleImpl(Ljava/util/TimerTask;JJZ)V
    .registers 13
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J
    .param p6, "fixed"    # Z

    .prologue
    .line 556
    iget-object v3, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v3

    .line 557
    :try_start_3
    iget-object v2, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    # getter for: Ljava/util/Timer$TimerImpl;->cancelled:Z
    invoke-static {v2}, Ljava/util/Timer$TimerImpl;->access$400(Ljava/util/Timer$TimerImpl;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 558
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Timer was canceled"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v2

    .line 561
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, p2, v4

    .line 563
    .local v0, "when":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_3b

    .line 564
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal delay to start the TimerTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :cond_3b
    iget-object v4, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_13

    .line 568
    :try_start_3e
    invoke-virtual {p1}, Ljava/util/TimerTask;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 569
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "TimerTask is scheduled already"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 579
    :catchall_4c
    move-exception v2

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_13

    .line 572
    :cond_4f
    :try_start_4f
    iget-boolean v2, p1, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v2, :cond_5b

    .line 573
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "TimerTask is canceled"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    :cond_5b
    iput-wide v0, p1, Ljava/util/TimerTask;->when:J

    .line 577
    iput-wide p4, p1, Ljava/util/TimerTask;->period:J

    .line 578
    iput-boolean p6, p1, Ljava/util/TimerTask;->fixedRate:Z

    .line 579
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_4c

    .line 582
    :try_start_62
    iget-object v2, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    # invokes: Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V
    invoke-static {v2, p1}, Ljava/util/Timer$TimerImpl;->access$500(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V

    .line 583
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_13

    .line 584
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->cancel()V

    .line 401
    return-void
.end method

.method public purge()I
    .registers 3

    .prologue
    .line 412
    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v1

    .line 413
    :try_start_3
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->purge()I

    move-result v0

    monitor-exit v1

    return v0

    .line 414
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .registers 12
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    .prologue
    .line 453
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1f
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 457
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;JJ)V
    .registers 14
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 475
    cmp-long v0, p2, v2

    if-ltz v0, :cond_a

    cmp-long v0, p4, v2

    if-gtz v0, :cond_10

    .line 476
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 478
    :cond_10
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 479
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .registers 13
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "when"    # Ljava/util/Date;

    .prologue
    const-wide/16 v2, 0x0

    .line 432
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "when < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_27
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v0, v4

    .line 436
    .local v8, "delay":J
    cmp-long v0, v8, v2

    if-gez v0, :cond_3e

    :goto_35
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 437
    return-void

    :cond_3e
    move-wide v2, v8

    .line 436
    goto :goto_35
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 16
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "when"    # Ljava/util/Date;
    .param p3, "period"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 498
    cmp-long v0, p3, v2

    if-lez v0, :cond_e

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 499
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 501
    :cond_14
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v0, v4

    .line 502
    .local v8, "delay":J
    cmp-long v0, v8, v2

    if-gez v0, :cond_2a

    :goto_22
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 503
    return-void

    :cond_2a
    move-wide v2, v8

    .line 502
    goto :goto_22
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .registers 14
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 522
    cmp-long v0, p2, v2

    if-ltz v0, :cond_a

    cmp-long v0, p4, v2

    if-gtz v0, :cond_10

    .line 523
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 525
    :cond_10
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 526
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 12
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "when"    # Ljava/util/Date;
    .param p3, "period"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 545
    cmp-long v0, p3, v4

    if-lez v0, :cond_e

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_14

    .line 546
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 548
    :cond_14
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 549
    .local v2, "delay":J
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 550
    return-void
.end method
