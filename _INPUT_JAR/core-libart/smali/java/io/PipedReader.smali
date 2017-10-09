.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final PIPE_SIZE:I = 0x400


# instance fields
.field private buffer:[C

.field private in:I

.field isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field private out:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "pipeSize"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

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
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 96
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;I)V
    .registers 3
    .param p1, "out"    # Ljava/io/PipedWriter;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p2}, Ljava/io/PipedReader;-><init>(I)V

    .line 128
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    .line 129
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 143
    monitor-exit p0

    return-void

    .line 140
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedWriter;)V
    .registers 2
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 157
    return-void
.end method

.method declared-synchronized done()V
    .registers 2

    .prologue
    .line 442
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 444
    monitor-exit p0

    return-void

    .line 442
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
    .line 166
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z

    if-eqz v0, :cond_10

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 166
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    if-eqz v0, :cond_1c

    .line 170
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1c
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v0, :cond_26

    .line 173
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 175
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_d

    .line 176
    monitor-exit p0

    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    new-array v0, v2, [C

    .line 197
    .local v0, "chars":[C
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/PipedReader;->read([CII)I

    move-result v1

    .line 198
    .local v1, "result":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    aget-char v1, v0, v3

    .end local v1    # "result":I
    :cond_d
    return v1
.end method

.method public declared-synchronized read([CII)I
    .registers 12
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 225
    monitor-enter p0

    :try_start_3
    iget-boolean v5, p0, Ljava/io/PipedReader;->isConnected:Z

    if-nez v5, :cond_12

    .line 226
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe not connected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 225
    :catchall_f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 228
    :cond_12
    :try_start_12
    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v5, :cond_1e

    .line 229
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_1e
    array-length v5, p1

    invoke-static {v5, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_f

    .line 232
    if-nez p3, :cond_26

    .line 294
    :cond_24
    :goto_24
    monitor-exit p0

    return v1

    .line 240
    :cond_26
    :try_start_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_f

    .line 242
    const/4 v3, 0x1

    .line 243
    .local v3, "first":Z
    :goto_2d
    :try_start_2d
    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-ne v5, v4, :cond_51

    .line 245
    iget-boolean v5, p0, Ljava/io/PipedReader;->isClosed:Z

    if-eqz v5, :cond_37

    move v1, v4

    .line 246
    goto :goto_24

    .line 248
    :cond_37
    if-nez v3, :cond_b8

    iget-object v5, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    if-eqz v5, :cond_b8

    iget-object v5, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_b8

    .line 249
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Pipe broken"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_4d} :catch_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_f

    .line 256
    :catch_4d
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4e
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 260
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_51
    const/4 v1, 0x0

    .line 262
    .local v1, "copyLength":I
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget v6, p0, Ljava/io/PipedReader;->in:I

    if-lt v5, v6, :cond_89

    .line 263
    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v5, v6

    if-le p3, v5, :cond_c3

    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Ljava/io/PipedReader;->out:I

    sub-int v1, v5, v6

    .line 264
    :goto_67
    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    iget v6, p0, Ljava/io/PipedReader;->out:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 265
    iget v5, p0, Ljava/io/PipedReader;->out:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    .line 266
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget-object v6, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v6, v6

    if-ne v5, v6, :cond_7d

    .line 267
    const/4 v5, 0x0

    iput v5, p0, Ljava/io/PipedReader;->out:I

    .line 269
    :cond_7d
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget v6, p0, Ljava/io/PipedReader;->in:I

    if-ne v5, v6, :cond_89

    .line 271
    const/4 v5, -0x1

    iput v5, p0, Ljava/io/PipedReader;->in:I

    .line 272
    const/4 v5, 0x0

    iput v5, p0, Ljava/io/PipedReader;->out:I

    .line 280
    :cond_89
    if-eq v1, p3, :cond_24

    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-eq v5, v4, :cond_24

    .line 284
    move v0, v1

    .line 286
    .local v0, "charsCopied":I
    iget v4, p0, Ljava/io/PipedReader;->in:I

    iget v5, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v4, v5

    sub-int v5, p3, v1

    if-le v4, v5, :cond_c5

    sub-int v1, p3, v1

    .line 287
    :goto_9b
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    iget v5, p0, Ljava/io/PipedReader;->out:I

    add-int v6, p2, v0

    invoke-static {v4, v5, p1, v6, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 288
    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PipedReader;->out:I

    .line 289
    iget v4, p0, Ljava/io/PipedReader;->out:I

    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-ne v4, v5, :cond_b5

    .line 291
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedReader;->in:I

    .line 292
    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedReader;->out:I
    :try_end_b5
    .catchall {:try_start_4e .. :try_end_b5} :catchall_f

    .line 294
    :cond_b5
    add-int/2addr v1, v0

    goto/16 :goto_24

    .line 251
    .end local v0    # "charsCopied":I
    .end local v1    # "copyLength":I
    :cond_b8
    const/4 v3, 0x0

    .line 253
    :try_start_b9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 254
    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_c1} :catch_4d
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_f

    goto/16 :goto_2d

    .restart local v1    # "copyLength":I
    :cond_c3
    move v1, p3

    .line 263
    goto :goto_67

    .line 286
    .restart local v0    # "charsCopied":I
    :cond_c5
    :try_start_c5
    iget v4, p0, Ljava/io/PipedReader;->in:I

    iget v5, p0, Ljava/io/PipedReader;->out:I
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_f

    sub-int v1, v4, v5

    goto :goto_9b
.end method

.method public declared-synchronized ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z

    if-nez v0, :cond_10

    .line 314
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 313
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v0, :cond_1c

    .line 317
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1c
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_d

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_22
    monitor-exit p0

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_22
.end method

.method declared-synchronized receive(C)V
    .registers 6
    .param p1, "oneChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v1, :cond_10

    .line 338
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 337
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 340
    :cond_10
    :try_start_10
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_24

    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_24

    .line 341
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_d

    .line 350
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-eqz v1, :cond_54

    iget v1, p0, Ljava/io/PipedReader;->out:I

    iget v2, p0, Ljava/io/PipedReader;->in:I

    if-ne v1, v2, :cond_54

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 352
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 353
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 354
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_50} :catch_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_d

    .line 357
    :catch_50
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_51
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 360
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_54
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v1, :cond_60

    .line 361
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_60
    iget v1, p0, Ljava/io/PipedReader;->in:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_68

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 366
    :cond_68
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    aput-char p1, v1, v2

    .line 367
    iget v1, p0, Ljava/io/PipedReader;->in:I

    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    if-ne v1, v2, :cond_7c

    .line 368
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_7c
    .catchall {:try_start_51 .. :try_end_7c} :catchall_d

    .line 370
    :cond_7c
    monitor-exit p0

    return-void
.end method

.method declared-synchronized receive([CII)V
    .registers 8
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    monitor-enter p0

    :try_start_1
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 385
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v2, :cond_14

    .line 386
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 384
    :catchall_11
    move-exception v2

    monitor-exit p0

    throw v2

    .line 388
    :cond_14
    :try_start_14
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v2, :cond_28

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_28

    .line 389
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe broken"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 396
    :cond_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_11

    .line 397
    :cond_2e
    :goto_2e
    if-lez p3, :cond_b7

    .line 399
    :cond_30
    :try_start_30
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-eqz v2, :cond_5a

    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget v3, p0, Ljava/io/PipedReader;->in:I

    if-ne v2, v3, :cond_5a

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 401
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 402
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v2, :cond_30

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_30

    .line 403
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe broken"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_56} :catch_56
    .catchall {:try_start_30 .. :try_end_56} :catchall_11

    .line 406
    :catch_56
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_57
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .line 409
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5a
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v2, :cond_66

    .line 410
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_66
    iget v2, p0, Ljava/io/PipedReader;->in:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6e

    .line 413
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->in:I

    .line 415
    :cond_6e
    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-lt v2, v3, :cond_96

    .line 416
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    iget v3, p0, Ljava/io/PipedReader;->in:I

    sub-int v1, v2, v3

    .line 417
    .local v1, "length":I
    if-ge p3, v1, :cond_7e

    .line 418
    move v1, p3

    .line 420
    :cond_7e
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    iget v3, p0, Ljava/io/PipedReader;->in:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 421
    add-int/2addr p2, v1

    .line 422
    sub-int/2addr p3, v1

    .line 423
    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedReader;->in:I

    .line 424
    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v3, v3

    if-ne v2, v3, :cond_96

    .line 425
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->in:I

    .line 428
    .end local v1    # "length":I
    :cond_96
    if-lez p3, :cond_2e

    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-eq v2, v3, :cond_2e

    .line 429
    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget v3, p0, Ljava/io/PipedReader;->in:I

    sub-int v1, v2, v3

    .line 430
    .restart local v1    # "length":I
    if-ge p3, v1, :cond_a7

    .line 431
    move v1, p3

    .line 433
    :cond_a7
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    iget v3, p0, Ljava/io/PipedReader;->in:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 434
    add-int/2addr p2, v1

    .line 435
    sub-int/2addr p3, v1

    .line 436
    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_b5
    .catchall {:try_start_57 .. :try_end_b5} :catchall_11

    goto/16 :goto_2e

    .line 439
    .end local v1    # "length":I
    :cond_b7
    monitor-exit p0

    return-void
.end method
