.class public Ljava/io/ByteArrayInputStream;
.super Ljava/io/InputStream;
.source "ByteArrayInputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I

.field protected mark:I

.field protected pos:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1, "buf"    # [B

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 59
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 60
    array-length v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 61
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 76
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 77
    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 78
    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 79
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_12

    array-length v0, p1

    :goto_f
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 80
    return-void

    .line 79
    :cond_12
    add-int v0, p2, p3

    goto :goto_f
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 4

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    and-int/lit16 v0, v0, 0xff

    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_13

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 148
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2c

    if-lt v1, v2, :cond_e

    .line 149
    const/4 v0, -0x1

    .line 158
    :goto_c
    monitor-exit p0

    return v0

    .line 151
    :cond_e
    if-nez p3, :cond_12

    .line 152
    const/4 v0, 0x0

    goto :goto_c

    .line 155
    :cond_12
    :try_start_12
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_2f

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int v0, v1, v2

    .line 156
    .local v0, "copylen":I
    :goto_1f
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 157
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2c

    goto :goto_c

    .line 145
    .end local v0    # "copylen":I
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2f
    move v0, p3

    .line 155
    goto :goto_1f
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 171
    monitor-exit p0

    return-void

    .line 170
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 8
    .param p1, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 183
    monitor-enter p0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_9

    .line 188
    :goto_7
    monitor-exit p0

    return-wide v2

    .line 186
    :cond_9
    :try_start_9
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 187
    .local v0, "temp":I
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, v2, p1

    if-gez v1, :cond_1e

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    :goto_17
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 188
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v0

    int-to-long v2, v1

    goto :goto_7

    .line 187
    :cond_1e
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_24

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    goto :goto_17

    .line 183
    .end local v0    # "temp":I
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method
