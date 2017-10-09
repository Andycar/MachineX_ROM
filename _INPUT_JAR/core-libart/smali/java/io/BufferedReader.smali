.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# instance fields
.field private buf:[C

.field private end:I

.field private in:Ljava/io/Reader;

.field private lastWasCR:Z

.field private mark:I

.field private markLimit:I

.field private markedLastWasCR:Z

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 95
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    .prologue
    const/4 v0, -0x1

    .line 107
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 69
    iput v0, p0, Ljava/io/BufferedReader;->mark:I

    .line 71
    iput v0, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 108
    if-gtz p2, :cond_12

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_12
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 112
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    .line 113
    return-void
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_e
    return-void
.end method

.method private fillBuf()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 143
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-eq v4, v10, :cond_f

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/io/BufferedReader;->markLimit:I

    if-lt v4, v5, :cond_24

    .line 145
    :cond_f
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v6, v6

    invoke-virtual {v4, v5, v9, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 146
    .local v3, "result":I
    if-lez v3, :cond_22

    .line 147
    iput v10, p0, Ljava/io/BufferedReader;->mark:I

    .line 148
    iput v9, p0, Ljava/io/BufferedReader;->pos:I

    .line 149
    iput v3, p0, Ljava/io/BufferedReader;->end:I

    :cond_22
    move v0, v3

    .line 176
    .end local v3    # "result":I
    :cond_23
    :goto_23
    return v0

    .line 154
    :cond_24
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-nez v4, :cond_5e

    iget v4, p0, Ljava/io/BufferedReader;->markLimit:I

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    if-le v4, v5, :cond_5e

    .line 156
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v4, v4

    mul-int/lit8 v1, v4, 0x2

    .line 157
    .local v1, "newLength":I
    iget v4, p0, Ljava/io/BufferedReader;->markLimit:I

    if-le v1, v4, :cond_3a

    .line 158
    iget v1, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 160
    :cond_3a
    new-array v2, v1, [C

    .line 161
    .local v2, "newbuf":[C
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    invoke-static {v4, v9, v2, v9, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 162
    iput-object v2, p0, Ljava/io/BufferedReader;->buf:[C

    .line 172
    .end local v1    # "newLength":I
    .end local v2    # "newbuf":[C
    :cond_46
    :goto_46
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 173
    .local v0, "count":I
    if-eq v0, v10, :cond_23

    .line 174
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    add-int/2addr v4, v0

    iput v4, p0, Ljava/io/BufferedReader;->end:I

    goto :goto_23

    .line 163
    .end local v0    # "count":I
    :cond_5e
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-lez v4, :cond_46

    .line 165
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v9, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 166
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedReader;->pos:I

    .line 167
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedReader;->end:I

    .line 168
    iput v9, p0, Ljava/io/BufferedReader;->mark:I

    goto :goto_46
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private maybeSwallowLF()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-boolean v0, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    if-eqz v0, :cond_a

    .line 359
    invoke-virtual {p0}, Ljava/io/BufferedReader;->chompNewline()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    .line 362
    :cond_a
    return-void
.end method

.method private readChar()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 263
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    iget v2, p0, Ljava/io/BufferedReader;->end:I

    if-lt v1, v2, :cond_d

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v1

    if-eq v1, v0, :cond_17

    .line 264
    :cond_d
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v0, v0, v1

    .line 266
    :cond_17
    return v0
.end method


# virtual methods
.method final chompNewline()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    iget v1, p0, Ljava/io/BufferedReader;->end:I

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    :cond_d
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1d

    .line 352
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/BufferedReader;->pos:I

    .line 354
    :cond_1d
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 127
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    .line 130
    :cond_11
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public mark(I)V
    .registers 5
    .param p1, "markLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    if-gez p1, :cond_1b

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markLimit < 0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1b
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_1e
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 212
    iput p1, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 213
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    iput v0, p0, Ljava/io/BufferedReader;->mark:I

    .line 214
    iget-boolean v0, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    iput-boolean v0, p0, Ljava/io/BufferedReader;->markedLastWasCR:Z

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v2, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 252
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 253
    invoke-direct {p0}, Ljava/io/BufferedReader;->readChar()I

    move-result v0

    .line 254
    .local v0, "ch":I
    iget-boolean v1, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    if-eqz v1, :cond_16

    const/16 v1, 0xa

    if-ne v0, v1, :cond_16

    .line 255
    invoke-direct {p0}, Ljava/io/BufferedReader;->readChar()I

    move-result v0

    .line 257
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    .line 258
    monitor-exit v2

    return v0

    .line 259
    .end local v0    # "ch":I
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public read([CII)I
    .registers 11
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 285
    iget-object v4, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 286
    :try_start_4
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 287
    array-length v5, p1

    invoke-static {v5, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 288
    if-nez p3, :cond_10

    .line 289
    const/4 v1, 0x0

    monitor-exit v4

    .line 342
    :goto_f
    return v1

    .line 292
    :cond_10
    invoke-direct {p0}, Ljava/io/BufferedReader;->maybeSwallowLF()V

    .line 294
    move v2, p3

    .line 295
    .local v2, "outstanding":I
    :cond_14
    if-lez v2, :cond_3b

    .line 297
    iget v5, p0, Ljava/io/BufferedReader;->end:I

    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v0, v5, v6

    .line 298
    .local v0, "available":I
    if-lez v0, :cond_2f

    .line 299
    if-lt v0, v2, :cond_44

    move v1, v2

    .line 300
    .local v1, "count":I
    :goto_21
    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 301
    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/BufferedReader;->pos:I

    .line 302
    add-int/2addr p2, v1

    .line 303
    sub-int/2addr v2, v1

    .line 312
    .end local v1    # "count":I
    :cond_2f
    if-eqz v2, :cond_3b

    if-ge v2, p3, :cond_46

    iget-object v5, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->ready()Z

    move-result v5

    if-nez v5, :cond_46

    .line 338
    .end local v0    # "available":I
    :cond_3b
    :goto_3b
    sub-int v1, p3, v2

    .line 339
    .restart local v1    # "count":I
    if-lez v1, :cond_6c

    .line 340
    monitor-exit v4

    goto :goto_f

    .line 343
    .end local v1    # "count":I
    .end local v2    # "outstanding":I
    :catchall_41
    move-exception v3

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_41

    throw v3

    .restart local v0    # "available":I
    .restart local v2    # "outstanding":I
    :cond_44
    move v1, v0

    .line 299
    goto :goto_21

    .line 324
    :cond_46
    :try_start_46
    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    if-eq v5, v3, :cond_53

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    iget v6, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v5, v6

    iget v6, p0, Ljava/io/BufferedReader;->markLimit:I

    if-lt v5, v6, :cond_65

    :cond_53
    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    if-lt v2, v5, :cond_65

    .line 325
    iget-object v5, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v5, p1, p2, v2}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 326
    .restart local v1    # "count":I
    if-lez v1, :cond_3b

    .line 327
    sub-int/2addr v2, v1

    .line 328
    const/4 v5, -0x1

    iput v5, p0, Ljava/io/BufferedReader;->mark:I

    goto :goto_3b

    .line 333
    .end local v1    # "count":I
    :cond_65
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v5

    if-ne v5, v3, :cond_14

    goto :goto_3b

    .line 342
    .end local v0    # "available":I
    .restart local v1    # "count":I
    :cond_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_46 .. :try_end_6d} :catchall_41

    move v1, v3

    goto :goto_f
.end method

.method public readLine()Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v11, 0xd

    .line 376
    iget-object v6, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 377
    :try_start_9
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 379
    invoke-direct {p0}, Ljava/io/BufferedReader;->maybeSwallowLF()V

    .line 382
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    .local v1, "i":I
    :goto_11
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    if-ge v1, v7, :cond_39

    .line 383
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v0, v7, v1

    .line 384
    .local v0, "ch":C
    if-eq v0, v12, :cond_1d

    if-ne v0, v11, :cond_36

    .line 385
    :cond_1d
    new-instance v2, Ljava/lang/String;

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v1, v9

    invoke-direct {v2, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 386
    .local v2, "line":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    .line 387
    if-ne v0, v11, :cond_34

    :goto_30
    iput-boolean v4, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    .line 388
    monitor-exit v6

    .line 409
    .end local v0    # "ch":C
    .end local v2    # "line":Ljava/lang/String;
    :goto_33
    return-object v2

    .restart local v0    # "ch":C
    .restart local v2    # "line":Ljava/lang/String;
    :cond_34
    move v4, v5

    .line 387
    goto :goto_30

    .line 382
    .end local v2    # "line":Ljava/lang/String;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 393
    .end local v0    # "ch":C
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    iget v7, p0, Ljava/io/BufferedReader;->end:I

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x50

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 394
    .local v3, "result":Ljava/lang/StringBuilder;
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->end:I

    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 396
    :goto_51
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    .line 397
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6d

    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6b

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_66
    monitor-exit v6

    goto :goto_33

    .line 416
    .end local v1    # "i":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :catchall_68
    move-exception v4

    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_9 .. :try_end_6a} :catchall_68

    throw v4

    .line 399
    .restart local v1    # "i":I
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_6b
    const/4 v2, 0x0

    goto :goto_66

    .line 403
    :cond_6d
    :try_start_6d
    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    :goto_6f
    iget v7, p0, Ljava/io/BufferedReader;->end:I

    if-ge v1, v7, :cond_99

    .line 404
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v0, v7, v1

    .line 405
    .restart local v0    # "ch":C
    if-eq v0, v12, :cond_7b

    if-ne v0, v11, :cond_96

    .line 406
    :cond_7b
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v1, v9

    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Ljava/io/BufferedReader;->pos:I

    .line 408
    if-ne v0, v11, :cond_94

    :goto_8c
    iput-boolean v4, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    .line 409
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v6

    goto :goto_33

    :cond_94
    move v4, v5

    .line 408
    goto :goto_8c

    .line 403
    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 414
    .end local v0    # "ch":C
    :cond_99
    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->end:I

    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_a5
    .catchall {:try_start_6d .. :try_end_a5} :catchall_68

    goto :goto_51
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 434
    iget v0, p0, Ljava/io/BufferedReader;->end:I

    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v0, v2

    if-gtz v0, :cond_15

    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    const/4 v0, 0x1

    :goto_16
    monitor-exit v1

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    .line 435
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 452
    iget v0, p0, Ljava/io/BufferedReader;->mark:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    .line 453
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid mark"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0

    .line 455
    :cond_16
    :try_start_16
    iget v0, p0, Ljava/io/BufferedReader;->mark:I

    iput v0, p0, Ljava/io/BufferedReader;->pos:I

    .line 456
    iget-boolean v0, p0, Ljava/io/BufferedReader;->markedLastWasCR:Z

    iput-boolean v0, p0, Ljava/io/BufferedReader;->lastWasCR:Z

    .line 457
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_13

    .line 458
    return-void
.end method

.method public skip(J)J
    .registers 12
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1f

    .line 476
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "charCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    :cond_1f
    iget-object v3, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 479
    :try_start_22
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 480
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-ltz v2, :cond_38

    .line 481
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    int-to-long v4, v2

    add-long/2addr v4, p1

    long-to-int v2, v4

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    .line 482
    monitor-exit v3

    .line 499
    .end local p1    # "charCount":J
    :goto_37
    return-wide p1

    .line 485
    .restart local p1    # "charCount":J
    :cond_38
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v0, v2

    .line 486
    .local v0, "read":J
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    .line 487
    :goto_42
    cmp-long v2, v0, p1

    if-gez v2, :cond_76

    .line 488
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_50

    .line 489
    monitor-exit v3

    move-wide p1, v0

    goto :goto_37

    .line 491
    :cond_50
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    sub-long v6, p1, v0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_6a

    .line 492
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    int-to-long v4, v2

    sub-long v6, p1, v0

    add-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    .line 493
    monitor-exit v3

    goto :goto_37

    .line 500
    .end local v0    # "read":J
    :catchall_67
    move-exception v2

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_22 .. :try_end_69} :catchall_67

    throw v2

    .line 496
    .restart local v0    # "read":J
    :cond_6a
    :try_start_6a
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 497
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    goto :goto_42

    .line 499
    :cond_76
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_6a .. :try_end_77} :catchall_67

    goto :goto_37
.end method
