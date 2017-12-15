.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .registers 4
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 105
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 106
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 107
    return-void
.end method

.method private dispose()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 121
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 122
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 123
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 125
    :cond_f
    return-void
.end method

.method private isIdlingLocked()Z
    .registers 3

    .prologue
    .line 412
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_e

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsIdling(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsIdling(J)Z
.end method

.method private static native nativePollOnce(JI)V
.end method

.method private static native nativeWake(J)V
.end method

.method private removeAllFutureMessagesLocked()V
    .registers 7

    .prologue
    .line 527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 528
    .local v2, "now":J
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 529
    .local v1, "p":Landroid/os/Message;
    if-eqz v1, :cond_11

    .line 530
    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_13

    .line 531
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 552
    :cond_11
    :goto_11
    return-void

    .line 542
    .local v0, "n":Landroid/os/Message;
    :cond_12
    move-object v1, v0

    .line 535
    .end local v0    # "n":Landroid/os/Message;
    :cond_13
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 536
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_11

    .line 539
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_12

    .line 544
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 546
    :cond_20
    move-object v1, v0

    .line 547
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 548
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 549
    if-nez v0, :cond_20

    goto :goto_11
.end method

.method private removeAllMessagesLocked()V
    .registers 4

    .prologue
    .line 517
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 518
    .local v1, "p":Landroid/os/Message;
    :goto_2
    if-eqz v1, :cond_b

    .line 519
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 520
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 521
    move-object v1, v0

    .line 522
    goto :goto_2

    .line 523
    .end local v0    # "n":Landroid/os/Message;
    :cond_b
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 524
    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 83
    if-nez p1, :cond_a

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_a
    monitor-enter p0

    .line 87
    :try_start_b
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 555
    monitor-enter p0

    .line 556
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 557
    .local v2, "now":J
    const/4 v1, 0x0

    .line 558
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_8
    if-eqz v0, :cond_37

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    .line 558
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_8

    .line 562
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 564
    monitor-exit p0

    .line 565
    return-void

    .line 564
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_73
    move-exception v4

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_73

    throw v4
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 316
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_e

    .line 317
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Message must have a target."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    :cond_e
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 320
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_2d
    monitor-enter p0

    .line 324
    :try_start_2e
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v5, :cond_5a

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 329
    monitor-exit p0

    .line 366
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_59
    return v1

    .line 332
    :cond_5a
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 333
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 334
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 336
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_6f

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-eqz v5, :cond_6f

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_7f

    .line 338
    :cond_6f
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 339
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 340
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 362
    .local v1, "needWake":Z
    :goto_75
    if-eqz v1, :cond_7c

    .line 363
    iget-wide v6, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v6, v7}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 365
    :cond_7c
    monitor-exit p0

    move v1, v4

    .line 366
    goto :goto_59

    .line 345
    .end local v1    # "needWake":Z
    :cond_7f
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v5, :cond_8e

    iget-object v5, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_8e

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_8e

    move v1, v4

    .line 348
    .restart local v1    # "needWake":Z
    :cond_8e
    :goto_8e
    move-object v3, v2

    .line 349
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 350
    if-eqz v2, :cond_99

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_a1

    .line 357
    :cond_99
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 358
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_75

    .line 365
    .end local v1    # "needWake":Z
    .end local v2    # "p":Landroid/os/Message;
    .end local v3    # "prev":Landroid/os/Message;
    :catchall_9e
    move-exception v4

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_2e .. :try_end_a0} :catchall_9e

    throw v4

    .line 353
    .restart local v1    # "needWake":Z
    .restart local v2    # "p":Landroid/os/Message;
    .restart local v3    # "prev":Landroid/os/Message;
    :cond_a1
    if-eqz v1, :cond_8e

    :try_start_a3
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_9e

    move-result v5

    if-eqz v5, :cond_8e

    .line 354
    const/4 v1, 0x0

    goto :goto_8e
.end method

.method enqueueSyncBarrier(J)I
    .registers 10
    .param p1, "when"    # J

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_1
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 259
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    .line 261
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 262
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 266
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_27

    .line 267
    :goto_1b
    if-eqz v1, :cond_27

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_27

    .line 268
    move-object v2, v1

    .line 269
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1b

    .line 272
    :cond_27
    if-eqz v2, :cond_2f

    .line 273
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 274
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 279
    :goto_2d
    monitor-exit p0

    return v3

    .line 276
    :cond_2f
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 277
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_2d

    .line 280
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_34
    move-exception v4

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw v4
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 114
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void

    .line 114
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 370
    if-nez p1, :cond_4

    .line 382
    :goto_3
    return v1

    .line 374
    :cond_4
    monitor-enter p0

    .line 375
    :try_start_5
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 376
    .local v0, "p":Landroid/os/Message;
    :goto_7
    if-eqz v0, :cond_20

    .line 377
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1d

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_1d

    if-eqz p3, :cond_17

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_1d

    .line 378
    :cond_17
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_3

    .line 383
    .end local v0    # "p":Landroid/os/Message;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1

    .line 380
    .restart local v0    # "p":Landroid/os/Message;
    :cond_1d
    :try_start_1d
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7

    .line 382
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1a

    goto :goto_3
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 387
    if-nez p1, :cond_4

    .line 399
    :goto_3
    return v1

    .line 391
    :cond_4
    monitor-enter p0

    .line 392
    :try_start_5
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 393
    .local v0, "p":Landroid/os/Message;
    :goto_7
    if-eqz v0, :cond_20

    .line 394
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1d

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_1d

    if-eqz p3, :cond_17

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_1d

    .line 395
    :cond_17
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_3

    .line 400
    .end local v0    # "p":Landroid/os/Message;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1

    .line 397
    .restart local v0    # "p":Landroid/os/Message;
    :cond_1d
    :try_start_1d
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7

    .line 399
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1a

    goto :goto_3
.end method

.method isIdling()Z
    .registers 2

    .prologue
    .line 404
    monitor-enter p0

    .line 405
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 406
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method next()Landroid/os/Message;
    .registers 19

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/os/MessageQueue;->mPtr:J

    .line 132
    .local v12, "ptr":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_c

    .line 133
    const/4 v5, 0x0

    .line 181
    :goto_b
    return-object v5

    .line 136
    :cond_c
    const/4 v7, -0x1

    .line 137
    .local v7, "pendingIdleHandlerCount":I
    const/4 v6, 0x0

    .line 139
    .local v6, "nextPollTimeoutMillis":I
    :goto_e
    if-eqz v6, :cond_13

    .line 140
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 143
    :cond_13
    invoke-static {v12, v13, v6}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 145
    monitor-enter p0

    .line 147
    :try_start_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 148
    .local v8, "now":J
    const/4 v10, 0x0

    .line 149
    .local v10, "prevMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 150
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_31

    iget-object v14, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v14, :cond_31

    .line 153
    :cond_26
    move-object v10, v5

    .line 154
    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 155
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Landroid/os/Message;->isAsynchronous()Z

    move-result v14

    if-eqz v14, :cond_26

    .line 157
    :cond_31
    if-eqz v5, :cond_6a

    .line 158
    iget-wide v14, v5, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_53

    .line 160
    iget-wide v14, v5, Landroid/os/Message;->when:J

    sub-long/2addr v14, v8

    const-wide/32 v16, 0x7fffffff

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v6, v14

    .line 179
    :goto_44
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v14, :cond_6c

    .line 180
    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->dispose()V

    .line 181
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_b

    .line 201
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "now":J
    .end local v10    # "prevMsg":Landroid/os/Message;
    :catchall_50
    move-exception v14

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_17 .. :try_end_52} :catchall_50

    throw v14

    .line 163
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "now":J
    .restart local v10    # "prevMsg":Landroid/os/Message;
    :cond_53
    const/4 v14, 0x0

    :try_start_54
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 164
    if-eqz v10, :cond_63

    .line 165
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v14, v10, Landroid/os/Message;->next:Landroid/os/Message;

    .line 169
    :goto_5e
    const/4 v14, 0x0

    iput-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 171
    monitor-exit p0

    goto :goto_b

    .line 167
    :cond_63
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_5e

    .line 175
    :cond_6a
    const/4 v6, -0x1

    goto :goto_44

    .line 187
    :cond_6c
    if-gez v7, :cond_86

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v14, :cond_7e

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v14, v14, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_86

    .line 189
    :cond_7e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 191
    :cond_86
    if-gtz v7, :cond_8f

    .line 193
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 194
    monitor-exit p0

    goto :goto_e

    .line 197
    :cond_8f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v14, :cond_a0

    .line 198
    const/4 v14, 0x4

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-array v14, v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 200
    :cond_a0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 201
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_54 .. :try_end_b3} :catchall_50

    .line 205
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b4
    if-ge v2, v7, :cond_e2

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v3, v14, v2

    .line 207
    .local v3, "idler":Landroid/os/MessageQueue$IdleHandler;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v15, 0x0

    aput-object v15, v14, v2

    .line 209
    const/4 v4, 0x0

    .line 211
    .local v4, "keep":Z
    :try_start_c4
    invoke-interface {v3}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c7} :catch_d6

    move-result v4

    .line 216
    :goto_c8
    if-nez v4, :cond_d3

    .line 217
    monitor-enter p0

    .line 218
    :try_start_cb
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_cb .. :try_end_d3} :catchall_df

    .line 205
    :cond_d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 212
    :catch_d6
    move-exception v11

    .line 213
    .local v11, "t":Ljava/lang/Throwable;
    const-string v14, "MessageQueue"

    const-string v15, "IdleHandler threw exception"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c8

    .line 219
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_df
    move-exception v14

    :try_start_e0
    monitor-exit p0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v14

    .line 224
    .end local v3    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v4    # "keep":Z
    :cond_e2
    const/4 v7, 0x0

    .line 228
    const/4 v6, 0x0

    goto/16 :goto_e
.end method

.method quit(Z)V
    .registers 4
    .param p1, "safe"    # Z

    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_c

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_c
    monitor-enter p0

    .line 238
    :try_start_d
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_13

    .line 239
    monitor-exit p0

    .line 252
    :goto_12
    return-void

    .line 241
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 243
    if-eqz p1, :cond_25

    .line 244
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 250
    :goto_1b
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 251
    monitor-exit p0

    goto :goto_12

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_22

    throw v0

    .line 246
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    goto :goto_1b
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 484
    if-nez p1, :cond_3

    .line 514
    :goto_2
    return-void

    .line 488
    :cond_3
    monitor-enter p0

    .line 489
    :try_start_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 493
    .local v2, "p":Landroid/os/Message;
    :goto_6
    if-eqz v2, :cond_1b

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1b

    if-eqz p2, :cond_12

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1b

    .line 494
    :cond_12
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 495
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 496
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 497
    move-object v2, v0

    .line 498
    goto :goto_6

    .line 501
    .end local v0    # "n":Landroid/os/Message;
    :cond_1b
    :goto_1b
    if-eqz v2, :cond_38

    .line 502
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 503
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_36

    .line 504
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_36

    if-eqz p2, :cond_2b

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_36

    .line 505
    :cond_2b
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 506
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 507
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1b

    .line 513
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_33
    move-exception v3

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v3

    .line 511
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_36
    move-object v2, v0

    .line 512
    goto :goto_1b

    .line 513
    .end local v0    # "n":Landroid/os/Message;
    :cond_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_33

    goto :goto_2
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 416
    if-nez p1, :cond_3

    .line 447
    :goto_2
    return-void

    .line 420
    :cond_3
    monitor-enter p0

    .line 421
    :try_start_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 425
    .local v2, "p":Landroid/os/Message;
    :goto_6
    if-eqz v2, :cond_1f

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1f

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_1f

    if-eqz p3, :cond_16

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_1f

    .line 426
    :cond_16
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 427
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 428
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 429
    move-object v2, v0

    .line 430
    goto :goto_6

    .line 433
    .end local v0    # "n":Landroid/os/Message;
    :cond_1f
    :goto_1f
    if-eqz v2, :cond_40

    .line 434
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 435
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_3e

    .line 436
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3e

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_3e

    if-eqz p3, :cond_33

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3e

    .line 438
    :cond_33
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 439
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 440
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1f

    .line 446
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_3b
    move-exception v3

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3b

    throw v3

    .line 444
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_3e
    move-object v2, v0

    .line 445
    goto :goto_1f

    .line 446
    .end local v0    # "n":Landroid/os/Message;
    :cond_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3b

    goto :goto_2
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 450
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 481
    :cond_4
    :goto_4
    return-void

    .line 454
    :cond_5
    monitor-enter p0

    .line 455
    :try_start_6
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 459
    .local v2, "p":Landroid/os/Message;
    :goto_8
    if-eqz v2, :cond_21

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_21

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_21

    if-eqz p3, :cond_18

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_21

    .line 460
    :cond_18
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 461
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 462
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 463
    move-object v2, v0

    .line 464
    goto :goto_8

    .line 467
    .end local v0    # "n":Landroid/os/Message;
    :cond_21
    :goto_21
    if-eqz v2, :cond_42

    .line 468
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 469
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_40

    .line 470
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_40

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_40

    if-eqz p3, :cond_35

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_40

    .line 472
    :cond_35
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 473
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 474
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_21

    .line 480
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_3d
    move-exception v3

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v3

    .line 478
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_40
    move-object v2, v0

    .line 479
    goto :goto_21

    .line 480
    .end local v0    # "n":Landroid/os/Message;
    :cond_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3d

    goto :goto_4
.end method

.method removeSyncBarrier(I)V
    .registers 8
    .param p1, "token"    # I

    .prologue
    .line 286
    monitor-enter p0

    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "prev":Landroid/os/Message;
    :try_start_2
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 289
    .local v1, "p":Landroid/os/Message;
    :goto_4
    if-eqz v1, :cond_12

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_e

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_12

    .line 290
    :cond_e
    move-object v2, v1

    .line 291
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_4

    .line 293
    :cond_12
    if-nez v1, :cond_1f

    .line 294
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    .end local v1    # "p":Landroid/os/Message;
    :catchall_1c
    move-exception v3

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1c

    throw v3

    .line 298
    .restart local v1    # "p":Landroid/os/Message;
    :cond_1f
    if-eqz v2, :cond_36

    .line 299
    :try_start_21
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 300
    const/4 v0, 0x0

    .line 305
    .local v0, "needWake":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 309
    if-eqz v0, :cond_34

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_34

    .line 310
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 312
    :cond_34
    monitor-exit p0

    .line 313
    return-void

    .line 302
    .end local v0    # "needWake":Z
    :cond_36
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 303
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_1c

    if-eqz v3, :cond_46

    :cond_44
    const/4 v0, 0x1

    .restart local v0    # "needWake":Z
    :goto_45
    goto :goto_26

    .end local v0    # "needWake":Z
    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method
