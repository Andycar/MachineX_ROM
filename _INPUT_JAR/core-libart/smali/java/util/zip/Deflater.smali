.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field private static final FINISH:I = 0x4

.field public static final FULL_FLUSH:I = 0x3

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I = 0x0

.field public static final NO_FLUSH:I = 0x0

.field public static final SYNC_FLUSH:I = 0x2


# instance fields
.field private compressLevel:I

.field private finished:Z

.field private flushParm:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private inLength:I

.field private inRead:I

.field private inputBuffer:[B

.field private strategy:I

.field private streamHandle:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 165
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 166
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 177
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6
    .param p1, "level"    # I
    .param p2, "noHeader"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    .line 143
    iput v2, p0, Ljava/util/zip/Deflater;->compressLevel:I

    .line 145
    iput v0, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 147
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    .line 155
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    .line 187
    if-lt p1, v2, :cond_1b

    const/16 v0, 0x9

    if-le p1, v0, :cond_34

    .line 188
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_34
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I

    .line 191
    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/Deflater;->createStream(IIZ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    .line 192
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private checkOpen()V
    .registers 5

    .prologue
    .line 475
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to use Deflater after calling end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_10
    return-void
.end method

.method private native createStream(IIZ)J
.end method

.method private declared-synchronized deflateImpl([BIII)I
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flush"    # I

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 237
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 238
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-nez v0, :cond_11

    .line 239
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 241
    :cond_11
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Deflater;->deflateImpl([BIIJI)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    move-result v0

    monitor-exit p0

    return v0

    .line 236
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native deflateImpl([BIIJI)I
.end method

.method private endImpl()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 258
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 259
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->endImpl(J)V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    .line 261
    iput-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    .line 263
    :cond_12
    return-void
.end method

.method private native endImpl(J)V
.end method

.method private native getAdlerImpl(J)I
.end method

.method private native getTotalInImpl(J)J
.end method

.method private native getTotalOutImpl(J)J
.end method

.method private native resetImpl(J)V
.end method

.method private native setDictionaryImpl([BIIJ)V
.end method

.method private native setInputImpl([BIIJ)V
.end method

.method private native setLevelsImpl(IIJ)V
.end method


# virtual methods
.method public deflate([B)I
    .registers 4
    .param p1, "buf"    # [B

    .prologue
    .line 202
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized deflate([BII)I
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflateImpl([BIII)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deflate([BIII)I
    .registers 8
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flush"    # I

    .prologue
    .line 229
    monitor-enter p0

    if-eqz p4, :cond_25

    const/4 v0, 0x2

    if-eq p4, v0, :cond_25

    const/4 v0, 0x3

    if-eq p4, v0, :cond_25

    .line 230
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flush value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_22

    .line 229
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :cond_25
    :try_start_25
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/zip/Deflater;->deflateImpl([BIII)I
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized end()V
    .registers 2

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 254
    invoke-direct {p0}, Ljava/util/zip/Deflater;->endImpl()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 255
    monitor-exit p0

    return-void

    .line 253
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_9

    .line 270
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 272
    :cond_9
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_18

    .line 273
    :try_start_a
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    .line 274
    invoke-direct {p0}, Ljava/util/zip/Deflater;->endImpl()V

    .line 275
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 278
    :try_start_11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_1d

    .line 283
    return-void

    .line 275
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 277
    :catchall_18
    move-exception v1

    .line 278
    :try_start_19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_24

    .line 280
    throw v1

    .line 279
    :catch_1d
    move-exception v0

    .line 280
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 279
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_24
    move-exception v0

    .line 280
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 292
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 293
    monitor-exit p0

    return-void

    .line 292
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finished()Z
    .registers 2

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdler()I
    .registers 3

    .prologue
    .line 308
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 309
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getAdlerImpl(J)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 308
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesRead()J
    .registers 3

    .prologue
    .line 458
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 459
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 458
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesWritten()J
    .registers 3

    .prologue
    .line 468
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 469
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 468
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalIn()I
    .registers 3

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 320
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 319
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalOut()I
    .registers 3

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 331
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 330
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsInput()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 342
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_10

    if-nez v1, :cond_8

    .line 345
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget v1, p0, Ljava/util/zip/Deflater;->inRead:I

    iget v2, p0, Ljava/util/zip/Deflater;->inLength:I
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    if-eq v1, v2, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 342
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    .prologue
    .line 355
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z

    .line 358
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->resetImpl(J)V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 360
    monitor-exit p0

    return-void

    .line 355
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDictionary([B)V
    .registers 4
    .param p1, "dictionary"    # [B

    .prologue
    .line 371
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    .line 372
    return-void
.end method

.method public declared-synchronized setDictionary([BII)V
    .registers 10
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 381
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 382
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 383
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setDictionaryImpl([BIIJ)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 384
    monitor-exit p0

    return-void

    .line 381
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInput([B)V
    .registers 4
    .param p1, "buf"    # [B

    .prologue
    .line 393
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 394
    return-void
.end method

.method public declared-synchronized setInput([BII)V
    .registers 10
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    .line 402
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 403
    iput p3, p0, Ljava/util/zip/Deflater;->inLength:I

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->inRead:I

    .line 405
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-nez v0, :cond_1a

    .line 406
    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    iget-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/zip/Deflater;->setLevelsImpl(IIJ)V

    .line 408
    :cond_1a
    iput-object p1, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    .line 409
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setInputImpl([BIIJ)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 410
    monitor-exit p0

    return-void

    .line 401
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLevel(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 424
    monitor-enter p0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_8

    const/16 v0, 0x9

    if-le p1, v0, :cond_24

    .line 425
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_21

    .line 424
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 427
    :cond_24
    :try_start_24
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-eqz v0, :cond_30

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setLevel cannot be called after setInput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_30
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_21

    .line 431
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setStrategy(I)V
    .registers 5
    .param p1, "strategy"    # I

    .prologue
    .line 443
    monitor-enter p0

    if-ltz p1, :cond_6

    const/4 v0, 0x2

    if-le p1, v0, :cond_22

    .line 444
    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad strategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1f

    .line 443
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 446
    :cond_22
    :try_start_22
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-eqz v0, :cond_2e

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setStrategy cannot be called after setInput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_2e
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_1f

    .line 450
    monitor-exit p0

    return-void
.end method
