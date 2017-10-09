.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x200


# instance fields
.field protected buf:[B

.field closed:Z

.field eof:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field nativeEndBufSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .prologue
    .line 90
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;
    .param p3, "bufferSize"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    .line 106
    if-nez p1, :cond_10

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_10
    if-nez p2, :cond_1a

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1a
    if-gtz p3, :cond_35

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSize <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_35
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 115
    instance-of v0, p1, Ljava/util/zip/ZipFile$RAFStream;

    if-eqz v0, :cond_3e

    .line 116
    iput p3, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    .line 120
    :goto_3d
    return-void

    .line 118
    :cond_3e
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    goto :goto_3d
.end method

.method private checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 289
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_c
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    .line 234
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v0, :cond_9

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_11

    .line 249
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 250
    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 251
    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 252
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 254
    :cond_11
    return-void
.end method

.method protected fill()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    .line 190
    iget v1, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    if-lez v1, :cond_16

    .line 191
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/util/zip/ZipFile$RAFStream;

    .line 192
    .local v0, "is":Ljava/util/zip/ZipFile$RAFStream;
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget v2, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipFile$RAFStream;->fill(Ljava/util/zip/Inflater;I)I

    move-result v1

    iput v1, p0, Ljava/util/zip/InflaterInputStream;->len:I

    .line 198
    .end local v0    # "is":Ljava/util/zip/ZipFile$RAFStream;
    :cond_15
    :goto_15
    return-void

    .line 194
    :cond_16
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-lez v1, :cond_15

    .line 195
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_15
.end method

.method public mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    .prologue
    .line 266
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 140
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    .line 141
    array-length v3, p1

    invoke-static {v3, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 143
    if-nez p3, :cond_d

    .line 144
    const/4 v1, 0x0

    .line 166
    :cond_c
    :goto_c
    return v1

    .line 147
    :cond_d
    iget-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v3, :cond_13

    move v1, v2

    .line 148
    goto :goto_c

    .line 152
    :cond_13
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 153
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 158
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .line 159
    .local v1, "result":I
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 160
    if-gtz v1, :cond_c

    .line 162
    iget-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v3, :cond_34

    move v1, v2

    .line 163
    goto :goto_c

    .line 164
    :cond_34
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 165
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    move v1, v2

    .line 166
    goto :goto_c

    .line 167
    :cond_41
    iget v3, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v3, v2, :cond_13

    .line 168
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 169
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3
    :try_end_4e
    .catch Ljava/util/zip/DataFormatException; {:try_start_1e .. :try_end_4e} :catch_4e

    .line 172
    .end local v1    # "result":I
    :catch_4e
    move-exception v0

    .line 173
    .local v0, "e":Ljava/util/zip/DataFormatException;
    iput-boolean v4, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    .line 174
    iget v3, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v3, v2, :cond_5b

    .line 175
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 177
    :cond_5b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_e
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
