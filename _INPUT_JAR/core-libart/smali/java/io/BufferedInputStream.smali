.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field protected volatile buf:[B

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 83
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 100
    if-gtz p2, :cond_10

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_10
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 104
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .registers 11
    .param p1, "localIn"    # Ljava/io/InputStream;
    .param p2, "localBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 147
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v5, v7, :cond_f

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    iget v6, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v5, v6, :cond_21

    .line 149
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 150
    .local v3, "result":I
    if-lez v3, :cond_1d

    .line 151
    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 152
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 153
    if-ne v3, v7, :cond_1f

    :goto_1b
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    :cond_1d
    move v0, v3

    .line 177
    .end local v3    # "result":I
    :goto_1e
    return v0

    .restart local v3    # "result":I
    :cond_1f
    move v4, v3

    .line 153
    goto :goto_1b

    .line 157
    .end local v3    # "result":I
    :cond_21
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-nez v5, :cond_58

    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    array-length v6, p2

    if-le v5, v6, :cond_58

    .line 159
    array-length v5, p2

    mul-int/lit8 v1, v5, 0x2

    .line 160
    .local v1, "newLength":I
    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v1, v5, :cond_33

    .line 161
    iget v1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 163
    :cond_33
    new-array v2, v1, [B

    .line 164
    .local v2, "newbuf":[B
    array-length v5, p2

    invoke-static {p2, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 167
    iput-object v2, p0, Ljava/io/BufferedInputStream;->buf:[B

    move-object p2, v2

    .line 173
    .end local v1    # "newLength":I
    .end local v2    # "newbuf":[B
    :cond_3c
    :goto_3c
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 174
    iput v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    .line 175
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v5, p2

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 176
    .local v0, "bytesread":I
    if-gtz v0, :cond_66

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    :goto_55
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    goto :goto_1e

    .line 168
    .end local v0    # "bytesread":I
    :cond_58
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v5, :cond_3c

    .line 169
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    array-length v6, p2

    iget v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v6, v7

    invoke-static {p2, v5, p2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_3c

    .line 176
    .restart local v0    # "bytesread":I
    :cond_66
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v4, v0

    goto :goto_55
.end method

.method private streamClosed()Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 118
    .local v0, "localIn":Ljava/io/InputStream;
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eqz v1, :cond_9

    if-nez v0, :cond_11

    .line 119
    :cond_9
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 117
    .end local v0    # "localIn":Ljava/io/InputStream;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 121
    .restart local v0    # "localIn":Ljava/io/InputStream;
    :cond_11
    :try_start_11
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_e

    move-result v2

    add-int/2addr v1, v2

    monitor-exit p0

    return v1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 138
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 139
    .local v0, "localIn":Ljava/io/InputStream;
    iput-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 140
    if-eqz v0, :cond_c

    .line 141
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 143
    :cond_c
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 196
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 197
    monitor-exit p0

    return-void

    .line 195
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 227
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 228
    .local v0, "localBuf":[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 229
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v0, :cond_a

    if-nez v1, :cond_12

    .line 230
    :cond_a
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    .line 227
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 234
    .restart local v0    # "localBuf":[B
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_12
    :try_start_12
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v3, v4, :cond_20

    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    move-result v3

    if-ne v3, v2, :cond_20

    .line 249
    :cond_1e
    :goto_1e
    monitor-exit p0

    return v2

    .line 238
    :cond_20
    :try_start_20
    iget-object v3, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eq v0, v3, :cond_2d

    .line 239
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 240
    if-nez v0, :cond_2d

    .line 241
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 246
    :cond_2d
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1e

    .line 247
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v2, v0, v2
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_f

    and-int/lit16 v2, v2, 0xff

    goto :goto_1e
.end method

.method public declared-synchronized read([BII)I
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 255
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 256
    .local v1, "localBuf":[B
    if-nez v1, :cond_e

    .line 257
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_b

    .line 255
    .end local v1    # "localBuf":[B
    :catchall_b
    move-exception v5

    monitor-exit p0

    throw v5

    .line 259
    .restart local v1    # "localBuf":[B
    :cond_e
    :try_start_e
    array-length v6, p1

    invoke-static {v6, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_b

    .line 260
    if-nez p3, :cond_17

    .line 261
    const/4 v5, 0x0

    .line 315
    :cond_15
    :goto_15
    monitor-exit p0

    return v5

    .line 263
    :cond_17
    :try_start_17
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 264
    .local v2, "localIn":Ljava/io/InputStream;
    if-nez v2, :cond_20

    .line 265
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 269
    :cond_20
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v7, p0, Ljava/io/BufferedInputStream;->count:I

    if-ge v6, v7, :cond_5e

    .line 271
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v6, v7

    if-lt v6, p3, :cond_42

    move v0, p3

    .line 272
    .local v0, "copylength":I
    :goto_2e
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 273
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v6, v0

    iput v6, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 274
    if-eq v0, p3, :cond_40

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_49

    :cond_40
    move v5, v0

    .line 275
    goto :goto_15

    .line 271
    .end local v0    # "copylength":I
    :cond_42
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v6, v7

    goto :goto_2e

    .line 277
    .restart local v0    # "copylength":I
    :cond_49
    add-int/2addr p2, v0

    .line 278
    sub-int v4, p3, v0

    .line 289
    .end local v0    # "copylength":I
    .local v4, "required":I
    :goto_4c
    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ne v6, v5, :cond_60

    array-length v6, v1

    if-lt v4, v6, :cond_60

    .line 290
    invoke-virtual {v2, p1, p2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 291
    .local v3, "read":I
    if-ne v3, v5, :cond_8a

    .line 292
    if-eq v4, p3, :cond_15

    sub-int v5, p3, v4

    goto :goto_15

    .line 280
    .end local v3    # "read":I
    .end local v4    # "required":I
    :cond_5e
    move v4, p3

    .restart local v4    # "required":I
    goto :goto_4c

    .line 295
    :cond_60
    invoke-direct {p0, v2, v1}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v6

    if-ne v6, v5, :cond_6b

    .line 296
    if-eq v4, p3, :cond_15

    sub-int v5, p3, v4

    goto :goto_15

    .line 299
    :cond_6b
    iget-object v6, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eq v1, v6, :cond_78

    .line 300
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 301
    if-nez v1, :cond_78

    .line 302
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 306
    :cond_78
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v6, v7

    if-lt v6, v4, :cond_8f

    move v3, v4

    .line 307
    .restart local v3    # "read":I
    :goto_80
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 308
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v6, v3

    iput v6, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 310
    :cond_8a
    sub-int/2addr v4, v3

    .line 311
    if-nez v4, :cond_96

    move v5, p3

    .line 312
    goto :goto_15

    .line 306
    .end local v3    # "read":I
    :cond_8f
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v3, v6, v7

    goto :goto_80

    .line 314
    .restart local v3    # "read":I
    :cond_96
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_99
    .catchall {:try_start_17 .. :try_end_99} :catchall_b

    move-result v6

    if-nez v6, :cond_a0

    .line 315
    sub-int v5, p3, v4

    goto/16 :goto_15

    .line 317
    :cond_a0
    add-int/2addr p2, v3

    .line 318
    goto :goto_4c
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-nez v0, :cond_10

    .line 333
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 332
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :cond_10
    :try_start_10
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 336
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1d
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_d

    .line 339
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .registers 12
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 357
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 358
    .local v0, "localBuf":[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 359
    .local v1, "localIn":Ljava/io/InputStream;
    if-nez v0, :cond_10

    .line 360
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_d

    .line 357
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 362
    .restart local v0    # "localBuf":[B
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_10
    const-wide/16 v4, 0x1

    cmp-long v4, p1, v4

    if-gez v4, :cond_1a

    .line 363
    const-wide/16 p1, 0x0

    .line 391
    .end local p1    # "byteCount":J
    :goto_18
    monitor-exit p0

    return-wide p1

    .line 365
    .restart local p1    # "byteCount":J
    :cond_1a
    if-nez v1, :cond_21

    .line 366
    :try_start_1c
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 369
    :cond_21
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_33

    .line 370
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_18

    .line 373
    :cond_33
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 374
    .local v2, "read":J
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 376
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-eq v4, v6, :cond_73

    .line 377
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_73

    .line 378
    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v4

    if-ne v4, v6, :cond_50

    move-wide p1, v2

    .line 379
    goto :goto_18

    .line 381
    :cond_50
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long v6, p1, v2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_66

    .line 382
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    sub-long v6, p1, v2

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_18

    .line 386
    :cond_66
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 387
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    move-wide p1, v2

    .line 388
    goto :goto_18

    .line 391
    :cond_73
    sub-long v4, p1, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_78
    .catchall {:try_start_1c .. :try_end_78} :catchall_d

    move-result-wide v4

    add-long p1, v2, v4

    goto :goto_18
.end method
