.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected markedPos:I

.field protected pos:I


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .param p1, "buf"    # [C

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 57
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 58
    array-length v0, p1

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 59
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 83
    if-ltz p2, :cond_11

    array-length v1, p1

    if-gt p2, v1, :cond_11

    if-ltz p3, :cond_11

    add-int v1, p2, p3

    if-gez v1, :cond_17

    .line 84
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 86
    :cond_17
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 87
    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 88
    iput p2, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 91
    array-length v0, p1

    .line 92
    .local v0, "bufferLength":I
    add-int v1, p2, p3

    if-ge v1, v0, :cond_25

    .end local p3    # "length":I
    :goto_22
    iput p3, p0, Ljava/io/CharArrayReader;->count:I

    .line 93
    return-void

    .restart local p3    # "length":I
    :cond_25
    move p3, v0

    .line 92
    goto :goto_22
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CharArrayReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_e
    return-void
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isOpen()Z
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 102
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 106
    :cond_c
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public mark(I)V
    .registers 4
    .param p1, "readLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 142
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 179
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-ne v0, v2, :cond_f

    .line 180
    const/4 v0, -0x1

    monitor-exit v1

    .line 182
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    aget-char v0, v0, v2

    monitor-exit v1

    goto :goto_e

    .line 183
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public read([CII)I
    .registers 8
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 200
    iget-object v2, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_7
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 202
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-ge v1, v3, :cond_2d

    .line 203
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v1, p3

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-le v1, v3, :cond_2b

    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int v0, v1, v3

    .line 204
    .local v0, "bytesRead":I
    :goto_1d
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 205
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 206
    monitor-exit v2

    .line 208
    .end local v0    # "bytesRead":I
    :goto_2a
    return v0

    :cond_2b
    move v0, p3

    .line 203
    goto :goto_1d

    .line 208
    :cond_2d
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_2a

    .line 209
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 228
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-eq v0, v2, :cond_f

    const/4 v0, 0x1

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 229
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

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
    .line 243
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 245
    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    :goto_d
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I

    .line 246
    monitor-exit v1

    .line 247
    return-void

    .line 245
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 246
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public skip(J)J
    .registers 10
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 260
    iget-object v3, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 261
    :try_start_5
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    .line 262
    cmp-long v2, p1, v0

    if-gtz v2, :cond_e

    .line 263
    monitor-exit v3

    .line 273
    :goto_d
    return-wide v0

    .line 265
    :cond_e
    const-wide/16 v0, 0x0

    .line 266
    .local v0, "skipped":J
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, p1, v4

    if-gez v2, :cond_26

    .line 267
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    long-to-int v4, p1

    add-int/2addr v2, v4

    iput v2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 268
    move-wide v0, p1

    .line 273
    :goto_21
    monitor-exit v3

    goto :goto_d

    .line 274
    .end local v0    # "skipped":J
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v2

    .line 270
    .restart local v0    # "skipped":J
    :cond_26
    :try_start_26
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v0, v2

    .line 271
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iput v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_23

    goto :goto_21
.end method
