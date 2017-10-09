.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field protected in:I

.field private isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field protected out:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "pipeSize"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 109
    if-gtz p1, :cond_27

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pipe size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_27
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 96
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .registers 3
    .param p1, "out"    # Ljava/io/PipedOutputStream;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(I)V

    .line 128
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 129
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v0, :cond_a

    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 143
    :cond_a
    const/4 v0, 0x0

    .line 145
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-gt v0, v1, :cond_1d

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/2addr v0, v1

    goto :goto_b

    :cond_1d
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_23

    sub-int/2addr v0, v1

    goto :goto_b

    .line 142
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedOutputStream;)V
    .registers 2
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 173
    return-void
.end method

.method declared-synchronized done()V
    .registers 2

    .prologue
    .line 420
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isClosed:Z

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 422
    monitor-exit p0

    return-void

    .line 420
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establishConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-eqz v0, :cond_10

    .line 183
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 182
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v0, :cond_1a

    .line 186
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 188
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isConnected:Z
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_d

    .line 189
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 211
    monitor-enter p0

    :try_start_2
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-nez v4, :cond_11

    .line 212
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not connected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    .line 211
    :catchall_e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 214
    :cond_11
    :try_start_11
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v4, :cond_1d

    .line 215
    new-instance v4, Ljava/io/IOException;

    const-string v5, "InputStream is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    :cond_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_e

    .line 225
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 226
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_25
    :try_start_25
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v3, :cond_4b

    .line 228
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2b} :catch_7b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_e

    if-eqz v4, :cond_2f

    .line 255
    .end local v1    # "attempts":I
    :goto_2d
    monitor-exit p0

    return v3

    .line 231
    .restart local v1    # "attempts":I
    :cond_2f
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-gtz v1, :cond_71

    :try_start_33
    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v4, :cond_71

    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_71

    .line 232
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe broken"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_47} :catch_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_e

    .line 238
    :catch_47
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_48
    :try_start_48
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 242
    .end local v0    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_4b
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 243
    .local v3, "result":I
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v5, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v5, v5

    if-ne v4, v5, :cond_61

    .line 244
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 246
    :cond_61
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v4, v5, :cond_6d

    .line 248
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedInputStream;->in:I

    .line 249
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    .line 253
    :cond_6d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_70
    .catchall {:try_start_48 .. :try_end_70} :catchall_e

    goto :goto_2d

    .line 235
    .end local v3    # "result":I
    .restart local v0    # "attempts":I
    :cond_71
    :try_start_71
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 236
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_79} :catch_47
    .catchall {:try_start_71 .. :try_end_79} :catchall_e

    move v1, v0

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_25

    .line 238
    :catch_7b
    move-exception v2

    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_48
.end method

.method public declared-synchronized read([BII)I
    .registers 14
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 283
    monitor-enter p0

    :try_start_3
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    .line 284
    if-nez p3, :cond_b

    .line 357
    :goto_9
    monitor-exit p0

    return v6

    .line 288
    :cond_b
    :try_start_b
    iget-boolean v8, p0, Ljava/io/PipedInputStream;->isConnected:Z

    if-nez v8, :cond_1a

    .line 289
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Not connected"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_17

    .line 283
    :catchall_17
    move-exception v7

    monitor-exit p0

    throw v7

    .line 292
    :cond_1a
    :try_start_1a
    iget-object v8, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v8, :cond_26

    .line 293
    new-instance v7, Ljava/io/IOException;

    const-string v8, "InputStream is closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 301
    :cond_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    iput-object v8, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_17

    .line 303
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 304
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_2e
    :try_start_2e
    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v8, v7, :cond_54

    .line 306
    iget-boolean v8, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_34} :catch_c8
    .catchall {:try_start_2e .. :try_end_34} :catchall_17

    if-eqz v8, :cond_38

    move v6, v7

    .line 307
    goto :goto_9

    .line 309
    :cond_38
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-gtz v1, :cond_b9

    :try_start_3c
    iget-object v8, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v8, :cond_b9

    iget-object v8, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-nez v8, :cond_b9

    .line 310
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Pipe broken"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_50} :catch_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_17

    .line 316
    :catch_50
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_51
    :try_start_51
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 320
    .end local v0    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_54
    const/4 v6, 0x0

    .line 323
    .local v6, "totalCopied":I
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    iget v9, p0, Ljava/io/PipedInputStream;->in:I

    if-lt v8, v9, :cond_88

    .line 324
    iget-object v8, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v8, v8

    iget v9, p0, Ljava/io/PipedInputStream;->out:I

    sub-int v3, v8, v9

    .line 325
    .local v3, "leftInBuffer":I
    if-ge v3, p3, :cond_c4

    move v5, v3

    .line 326
    .local v5, "length":I
    :goto_65
    iget-object v8, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v9, p0, Ljava/io/PipedInputStream;->out:I

    invoke-static {v8, v9, p1, p2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 327
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v8, v5

    iput v8, p0, Ljava/io/PipedInputStream;->out:I

    .line 328
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v9, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v9, v9

    if-ne v8, v9, :cond_7b

    .line 329
    const/4 v8, 0x0

    iput v8, p0, Ljava/io/PipedInputStream;->out:I

    .line 331
    :cond_7b
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    iget v9, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v8, v9, :cond_87

    .line 333
    const/4 v8, -0x1

    iput v8, p0, Ljava/io/PipedInputStream;->in:I

    .line 334
    const/4 v8, 0x0

    iput v8, p0, Ljava/io/PipedInputStream;->out:I

    .line 336
    :cond_87
    add-int/2addr v6, v5

    .line 340
    .end local v3    # "leftInBuffer":I
    .end local v5    # "length":I
    :cond_88
    if-ge v6, p3, :cond_b4

    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-eq v8, v7, :cond_b4

    .line 341
    iget v7, p0, Ljava/io/PipedInputStream;->in:I

    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    sub-int v3, v7, v8

    .line 342
    .restart local v3    # "leftInBuffer":I
    sub-int v4, p3, v6

    .line 343
    .local v4, "leftToCopy":I
    if-ge v4, v3, :cond_c6

    move v5, v4

    .line 344
    .restart local v5    # "length":I
    :goto_99
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    add-int v9, p2, v6

    invoke-static {v7, v8, p1, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 345
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v7, v5

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 346
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v7, v8, :cond_b3

    .line 348
    const/4 v7, -0x1

    iput v7, p0, Ljava/io/PipedInputStream;->in:I

    .line 349
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    .line 351
    :cond_b3
    add-int/2addr v6, v5

    .line 355
    .end local v3    # "leftInBuffer":I
    .end local v4    # "leftToCopy":I
    .end local v5    # "length":I
    :cond_b4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b7
    .catchall {:try_start_51 .. :try_end_b7} :catchall_17

    goto/16 :goto_9

    .line 313
    .end local v6    # "totalCopied":I
    .restart local v0    # "attempts":I
    :cond_b9
    :try_start_b9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 314
    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_c1} :catch_50
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_17

    move v1, v0

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto/16 :goto_2e

    .end local v1    # "attempts":I
    .restart local v3    # "leftInBuffer":I
    .restart local v6    # "totalCopied":I
    :cond_c4
    move v5, p3

    .line 325
    goto :goto_65

    .restart local v4    # "leftToCopy":I
    :cond_c6
    move v5, v3

    .line 343
    goto :goto_99

    .line 316
    .end local v3    # "leftInBuffer":I
    .end local v4    # "leftToCopy":I
    .end local v6    # "totalCopied":I
    .restart local v1    # "attempts":I
    :catch_c8
    move-exception v2

    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_51
.end method

.method protected declared-synchronized receive(I)V
    .registers 6
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Ljava/io/PipedInputStream;->isClosed:Z

    if-eqz v1, :cond_14

    .line 379
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 378
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    .line 387
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 389
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-eqz v1, :cond_3c

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    if-ne v1, v2, :cond_3c

    .line 390
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_48

    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_48

    .line 391
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_38} :catch_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_11

    .line 397
    :catch_38
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_39
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 400
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3c
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    if-nez v1, :cond_51

    .line 401
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_11

    .line 394
    :cond_48
    :try_start_48
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_50} :catch_38
    .catchall {:try_start_48 .. :try_end_50} :catchall_11

    goto :goto_1a

    .line 403
    :cond_51
    :try_start_51
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_59

    .line 404
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 406
    :cond_59
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 407
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_6d
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 411
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_82

    .line 412
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 416
    :cond_82
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_85
    .catchall {:try_start_51 .. :try_end_85} :catchall_11

    .line 417
    monitor-exit p0

    return-void
.end method
