.class public Ljava/io/InputStreamReader;
.super Ljava/io/Reader;
.source "InputStreamReader.java"


# instance fields
.field private final bytes:Ljava/nio/ByteBuffer;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private endOfInput:Z

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 57
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-boolean v3, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 45
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 78
    if-nez p2, :cond_18

    .line 79
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "charsetName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_18
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 83
    :try_start_1a
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_30} :catch_36

    .line 90
    iget-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    return-void

    .line 86
    :catch_36
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-boolean v2, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 45
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 121
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 122
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 125
    iget-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-boolean v1, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 45
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    .line 105
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 106
    iput-object p2, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 107
    iget-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    return-void
.end method

.method private isOpen()Z
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_3
    iget-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-eqz v0, :cond_c

    .line 139
    iget-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 141
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 142
    iget-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    .line 143
    iget-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 146
    :cond_1b
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 176
    iget-object v2, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_4
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v3

    if-nez v3, :cond_15

    .line 178
    new-instance v1, Ljava/io/IOException;

    const-string v3, "InputStreamReader is closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1

    .line 180
    :cond_15
    const/4 v3, 0x1

    :try_start_16
    new-array v0, v3, [C

    .line 181
    .local v0, "buf":[C
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    if-eq v3, v1, :cond_23

    const/4 v1, 0x0

    aget-char v1, v0, v1

    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_12

    return v1
.end method

.method public read([CII)I
    .registers 15
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 200
    iget-object v8, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 201
    :try_start_6
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v9

    if-nez v9, :cond_17

    .line 202
    new-instance v6, Ljava/io/IOException;

    const-string v7, "InputStreamReader is closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 271
    :catchall_14
    move-exception v6

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v6

    .line 205
    :cond_17
    :try_start_17
    array-length v9, p1

    invoke-static {v9, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 206
    if-nez p3, :cond_1f

    .line 207
    monitor-exit v8

    .line 270
    :goto_1e
    return v6

    .line 210
    :cond_1f
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 211
    .local v4, "out":Ljava/nio/CharBuffer;
    sget-object v5, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 215
    .local v5, "result":Ljava/nio/charset/CoderResult;
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-nez v9, :cond_7c

    .line 217
    .local v2, "needInput":Z
    :goto_2d
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->hasRemaining()Z
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_14

    move-result v6

    if-eqz v6, :cond_43

    .line 219
    if-eqz v2, :cond_bc

    .line 221
    :try_start_35
    iget-object v6, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_7f

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_40} :catch_7e
    .catchall {:try_start_35 .. :try_end_40} :catchall_14

    move-result v6

    if-le v6, p2, :cond_7f

    .line 259
    :cond_43
    :goto_43
    :try_start_43
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v5, v6, :cond_63

    iget-boolean v6, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    if-eqz v6, :cond_63

    .line 260
    iget-object v6, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v4, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 261
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v5, v6, :cond_5e

    .line 262
    iget-object v6, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v6, v4}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 264
    :cond_5e
    iget-object v6, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v6}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 266
    :cond_63
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v6

    if-nez v6, :cond_6f

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 267
    :cond_6f
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 270
    :cond_72
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    sub-int/2addr v6, p2

    if-nez v6, :cond_f2

    move v6, v7

    :goto_7a
    monitor-exit v8

    goto :goto_1e

    .end local v2    # "needInput":Z
    :cond_7c
    move v2, v6

    .line 215
    goto :goto_2d

    .line 225
    .restart local v2    # "needInput":Z
    :catch_7e
    move-exception v6

    .line 229
    :cond_7f
    iget-object v6, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    sub-int v1, v6, v9

    .line 230
    .local v1, "desiredByteCount":I
    iget-object v6, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int v3, v6, v9

    .line 231
    .local v3, "off":I
    iget-object v6, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v6, v9, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 233
    .local v0, "actualByteCount":I
    if-ne v0, v7, :cond_ad

    .line 234
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    goto :goto_43

    .line 236
    :cond_ad
    if-eqz v0, :cond_43

    .line 239
    iget-object v6, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 240
    const/4 v2, 0x0

    .line 244
    .end local v0    # "actualByteCount":I
    .end local v1    # "desiredByteCount":I
    .end local v3    # "off":I
    :cond_bc
    iget-object v6, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v4, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 246
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 248
    iget-object v6, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    if-ne v6, v9, :cond_ef

    .line 249
    iget-object v6, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 250
    iget-object v6, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 251
    iget-object v6, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    :cond_ef
    const/4 v2, 0x1

    goto/16 :goto_2d

    .line 270
    :cond_f2
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I
    :try_end_f5
    .catchall {:try_start_43 .. :try_end_f5} :catchall_14

    move-result v6

    sub-int/2addr v6, p2

    goto :goto_7a
.end method

.method public ready()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v2, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    :try_start_4
    iget-object v3, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    if-nez v3, :cond_13

    .line 295
    new-instance v1, Ljava/io/IOException;

    const-string v3, "InputStreamReader is closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1

    .line 298
    :cond_13
    :try_start_13
    iget-object v3, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_20} :catch_26
    .catchall {:try_start_13 .. :try_end_20} :catchall_10

    move-result v3

    if-lez v3, :cond_24

    :cond_23
    const/4 v1, 0x1

    :cond_24
    :try_start_24
    monitor-exit v2

    .line 300
    :goto_25
    return v1

    .line 299
    :catch_26
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_10

    goto :goto_25
.end method
