.class final Ljava/util/Timer$TimerImpl;
.super Ljava/lang/Thread;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$TimerImpl$TimerHeap;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private finished:Z

.field private tasks:Ljava/util/Timer$TimerImpl$TimerHeap;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 181
    new-instance v0, Ljava/util/Timer$TimerImpl$TimerHeap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer$TimerImpl$TimerHeap;-><init>(Ljava/util/Timer$1;)V

    iput-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    .line 190
    invoke-virtual {p0, p1}, Ljava/util/Timer$TimerImpl;->setName(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p2}, Ljava/util/Timer$TimerImpl;->setDaemon(Z)V

    .line 192
    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->start()V

    .line 193
    return-void
.end method

.method static synthetic access$302(Ljava/util/Timer$TimerImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/Timer$TimerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    return p1
.end method

.method static synthetic access$400(Ljava/util/Timer$TimerImpl;)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/Timer$TimerImpl;

    .prologue
    .line 54
    iget-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$500(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/Timer$TimerImpl;
    .param p1, "x1"    # Ljava/util/TimerTask;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    return-void
.end method

.method private insertTask(Ljava/util/TimerTask;)V
    .registers 3
    .param p1, "newTask"    # Ljava/util/TimerTask;

    .prologue
    .line 298
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0, p1}, Ljava/util/Timer$TimerImpl$TimerHeap;->insert(Ljava/util/TimerTask;)V

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 300
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 306
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    .line 307
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->reset()V

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 309
    monitor-exit p0

    return-void

    .line 306
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public purge()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v1}, Ljava/util/Timer$TimerImpl$TimerHeap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 318
    :goto_9
    return v0

    .line 316
    :cond_a
    iget-object v1, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    # setter for: Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I
    invoke-static {v1, v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$202(Ljava/util/Timer$TimerImpl$TimerHeap;I)I

    .line 317
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->deleteIfCancelled()V

    .line 318
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    # getter for: Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I
    invoke-static {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$200(Ljava/util/Timer$TimerImpl$TimerHeap;)I

    move-result v0

    goto :goto_9
.end method

.method public run()V
    .registers 15

    .prologue
    .line 203
    :cond_0
    :goto_0
    monitor-enter p0

    .line 205
    :try_start_1
    iget-boolean v5, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    if-eqz v5, :cond_7

    .line 206
    monitor-exit p0

    .line 210
    :goto_6
    return-void

    .line 208
    :cond_7
    iget-object v5, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v5}, Ljava/util/Timer$TimerImpl$TimerHeap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 209
    iget-boolean v5, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    if-eqz v5, :cond_18

    .line 210
    monitor-exit p0

    goto :goto_6

    .line 280
    :catchall_15
    move-exception v5

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v5

    .line 214
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_c5
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 217
    :goto_1b
    :try_start_1b
    monitor-exit p0

    goto :goto_0

    .line 220
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 222
    .local v0, "currentTime":J
    iget-object v5, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v5}, Ljava/util/Timer$TimerImpl$TimerHeap;->minimum()Ljava/util/TimerTask;

    move-result-object v3

    .line 225
    .local v3, "task":Ljava/util/TimerTask;
    iget-object v8, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_15

    .line 226
    :try_start_2a
    iget-boolean v5, v3, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v5, :cond_37

    .line 227
    iget-object v5, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    .line 228
    monitor-exit v8
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_47

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_15

    goto :goto_0

    .line 232
    :cond_37
    :try_start_37
    iget-wide v10, v3, Ljava/util/TimerTask;->when:J

    sub-long v6, v10, v0

    .line 233
    .local v6, "timeToSleep":J
    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_47

    .line 235
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4a

    .line 238
    :try_start_42
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_c8
    .catchall {:try_start_42 .. :try_end_45} :catchall_15

    .line 241
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_15

    goto :goto_0

    .line 233
    .end local v6    # "timeToSleep":J
    :catchall_47
    move-exception v5

    :try_start_48
    monitor-exit v8
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v5

    .line 246
    .restart local v6    # "timeToSleep":J
    :cond_4a
    iget-object v8, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_15

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, "pos":I
    :try_start_4e
    iget-object v5, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v5}, Ljava/util/Timer$TimerImpl$TimerHeap;->minimum()Ljava/util/TimerTask;

    move-result-object v5

    iget-wide v10, v5, Ljava/util/TimerTask;->when:J

    iget-wide v12, v3, Ljava/util/TimerTask;->when:J

    cmp-long v5, v10, v12

    if-eqz v5, :cond_62

    .line 249
    iget-object v5, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    # invokes: Ljava/util/Timer$TimerImpl$TimerHeap;->getTask(Ljava/util/TimerTask;)I
    invoke-static {v5, v3}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$100(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I

    move-result v2

    .line 251
    :cond_62
    iget-boolean v5, v3, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v5, :cond_74

    .line 252
    iget-object v5, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    iget-object v9, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    # invokes: Ljava/util/Timer$TimerImpl$TimerHeap;->getTask(Ljava/util/TimerTask;)I
    invoke-static {v9, v3}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$100(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    .line 253
    monitor-exit v8
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_b1

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_15

    goto :goto_0

    .line 257
    :cond_74
    :try_start_74
    iget-wide v10, v3, Ljava/util/TimerTask;->when:J

    invoke-virtual {v3, v10, v11}, Ljava/util/TimerTask;->setScheduledTime(J)V

    .line 260
    iget-object v5, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v5, v2}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    .line 263
    iget-wide v10, v3, Ljava/util/TimerTask;->period:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-ltz v5, :cond_b4

    .line 265
    iget-boolean v5, v3, Ljava/util/TimerTask;->fixedRate:Z

    if-eqz v5, :cond_a7

    .line 267
    iget-wide v10, v3, Ljava/util/TimerTask;->when:J

    iget-wide v12, v3, Ljava/util/TimerTask;->period:J

    add-long/2addr v10, v12

    iput-wide v10, v3, Ljava/util/TimerTask;->when:J

    .line 275
    :goto_91
    invoke-direct {p0, v3}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    .line 279
    :goto_94
    monitor-exit v8
    :try_end_95
    .catchall {:try_start_74 .. :try_end_95} :catchall_b1

    .line 280
    :try_start_95
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_15

    .line 282
    const/4 v4, 0x0

    .line 284
    .local v4, "taskCompletedNormally":Z
    :try_start_97
    invoke-virtual {v3}, Ljava/util/TimerTask;->run()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_b9

    .line 285
    const/4 v4, 0x1

    .line 287
    if-nez v4, :cond_0

    .line 288
    monitor-enter p0

    .line 289
    const/4 v5, 0x1

    :try_start_9f
    iput-boolean v5, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    .line 290
    monitor-exit p0

    goto/16 :goto_0

    :catchall_a4
    move-exception v5

    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_a4

    throw v5

    .line 270
    .end local v4    # "taskCompletedNormally":Z
    :cond_a7
    :try_start_a7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v3, Ljava/util/TimerTask;->period:J

    add-long/2addr v10, v12

    iput-wide v10, v3, Ljava/util/TimerTask;->when:J

    goto :goto_91

    .line 279
    :catchall_b1
    move-exception v5

    monitor-exit v8
    :try_end_b3
    .catchall {:try_start_a7 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw v5
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_15

    .line 277
    :cond_b4
    const-wide/16 v10, 0x0

    :try_start_b6
    iput-wide v10, v3, Ljava/util/TimerTask;->when:J
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_b1

    goto :goto_94

    .line 287
    .restart local v4    # "taskCompletedNormally":Z
    :catchall_b9
    move-exception v5

    if-nez v4, :cond_c1

    .line 288
    monitor-enter p0

    .line 289
    const/4 v8, 0x1

    :try_start_be
    iput-boolean v8, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    .line 290
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c2

    :cond_c1
    throw v5

    :catchall_c2
    move-exception v5

    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v5

    .line 215
    .end local v0    # "currentTime":J
    .end local v2    # "pos":I
    .end local v3    # "task":Ljava/util/TimerTask;
    .end local v4    # "taskCompletedNormally":Z
    .end local v6    # "timeToSleep":J
    :catch_c5
    move-exception v5

    goto/16 :goto_1b

    .line 239
    .restart local v0    # "currentTime":J
    .restart local v3    # "task":Ljava/util/TimerTask;
    .restart local v6    # "timeToSleep":J
    :catch_c8
    move-exception v5

    goto/16 :goto_45
.end method
