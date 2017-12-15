.class public Lcom/android/internal/util/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mBuffer:[B

.field private mLineFinished:Z

.field private final mStream:Ljava/io/InputStream;

.field private mTail:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    .line 49
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 52
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 53
    return-void
.end method

.method private consumeBuf(I)V
    .registers 6
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 80
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-nez v0, :cond_17

    .line 81
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 83
    :cond_17
    return-void
.end method

.method private fillBuf()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int v0, v2, v3

    .line 60
    .local v0, "length":I
    if-nez v0, :cond_11

    .line 61
    new-instance v2, Ljava/io/IOException;

    const-string v3, "attempting to fill already-full buffer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_11
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget v4, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 65
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    .line 66
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 68
    :cond_23
    return v1
.end method

.method private invalidLong(I)Ljava/lang/NumberFormatException;
    .registers 8
    .param p1, "tokenIndex"    # I

    .prologue
    .line 214
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private nextTokenIndex()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v2, :cond_6

    .line 94
    const/4 v1, -0x1

    .line 107
    :cond_5
    :goto_5
    return v1

    .line 97
    :cond_6
    const/4 v1, 0x0

    .line 100
    .local v1, "i":I
    :cond_7
    :goto_7
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v1, v2, :cond_1e

    .line 101
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v0, v2, v1

    .line 102
    .local v0, "b":B
    const/16 v2, 0xa

    if-ne v0, v2, :cond_17

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    goto :goto_5

    .line 106
    :cond_17
    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 110
    .end local v0    # "b":B
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v2

    if-gtz v2, :cond_7

    .line 112
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "End of stream while looking for token boundary"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseAndConsumeLong(I)J
    .registers 14
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 190
    iget-object v8, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v8, v8, v3

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_22

    move v2, v1

    .line 193
    .local v2, "negative":Z
    :goto_b
    const-wide/16 v6, 0x0

    .line 194
    .local v6, "result":J
    if-eqz v2, :cond_24

    .local v1, "i":I
    :goto_f
    if-ge v1, p1, :cond_39

    .line 195
    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v3, v3, v1

    add-int/lit8 v0, v3, -0x30

    .line 196
    .local v0, "digit":I
    if-ltz v0, :cond_1d

    const/16 v3, 0x9

    if-le v0, v3, :cond_26

    .line 197
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .end local v0    # "digit":I
    .end local v1    # "i":I
    .end local v2    # "negative":Z
    .end local v6    # "result":J
    :cond_22
    move v2, v3

    .line 190
    goto :goto_b

    .restart local v2    # "negative":Z
    .restart local v6    # "result":J
    :cond_24
    move v1, v3

    .line 194
    goto :goto_f

    .line 202
    .restart local v0    # "digit":I
    .restart local v1    # "i":I
    :cond_26
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    int-to-long v10, v0

    sub-long v4, v8, v10

    .line 203
    .local v4, "next":J
    cmp-long v3, v4, v6

    if-lez v3, :cond_35

    .line 204
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 206
    :cond_35
    move-wide v6, v4

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 209
    .end local v0    # "digit":I
    .end local v4    # "next":J
    :cond_39
    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 210
    if-eqz v2, :cond_41

    .end local v6    # "result":J
    :goto_40
    return-wide v6

    .restart local v6    # "result":J
    :cond_41
    neg-long v6, v6

    goto :goto_40
.end method

.method private parseAndConsumeString(I)Ljava/lang/String;
    .registers 6
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 185
    .local v0, "s":Ljava/lang/String;
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 186
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 232
    return-void
.end method

.method public finishLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-boolean v1, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v1, :cond_8

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 138
    :goto_7
    return-void

    .line 132
    :cond_8
    const/4 v0, 0x0

    .line 135
    .local v0, "i":I
    :cond_9
    :goto_9
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_1e

    .line 136
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1b

    .line 137
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    goto :goto_7

    .line 135
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 141
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-gtz v1, :cond_9

    .line 143
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for line boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasMoreData()Z
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public nextInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v0

    .line 223
    .local v0, "value":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1b

    .line 224
    :cond_12
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "parsed value larger than integer"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_1b
    long-to-int v2, v0

    return v2
.end method

.method public nextLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 163
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 164
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required long"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public nextOptionalLong(J)J
    .registers 6
    .param p1, "def"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 176
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 179
    .end local p1    # "def":J
    :goto_7
    return-wide p1

    .restart local p1    # "def":J
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(I)J

    move-result-wide p1

    goto :goto_7
.end method

.method public nextString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 151
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 152
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required string"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
