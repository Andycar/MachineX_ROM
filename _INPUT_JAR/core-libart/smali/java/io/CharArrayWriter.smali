.class public Ljava/io/CharArrayWriter;
.super Ljava/io/Writer;
.source "CharArrayWriter.java"


# instance fields
.field protected buf:[C

.field protected count:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 49
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialSize"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 63
    if-gez p1, :cond_d

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_d
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 67
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private expand(I)V
    .registers 7
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 80
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v2, p1

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    if-gt v2, v3, :cond_a

    .line 88
    :goto_9
    return-void

    .line 84
    :cond_a
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 85
    .local v0, "newLen":I
    new-array v1, v0, [C

    .line 86
    .local v1, "newbuf":[C
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 87
    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    goto :goto_9
.end method


# virtual methods
.method public append(C)Ljava/io/CharArrayWriter;
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 246
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 261
    if-nez p1, :cond_4

    .line 262
    const-string p1, "null"

    .line 264
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    .line 265
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;
    .registers 7
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 293
    if-nez p1, :cond_4

    .line 294
    const-string p1, "null"

    .line 296
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "output":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    .line 298
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 104
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 117
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_3
    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    monitor-exit v1

    return v0

    .line 119
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public toCharArray()[C
    .registers 7

    .prologue
    .line 130
    iget-object v2, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_3
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    new-array v0, v1, [C

    .line 132
    .local v0, "result":[C
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 133
    monitor-exit v2

    return-object v0

    .line 134
    .end local v0    # "result":[C
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 146
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v1

    return-object v0

    .line 148
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public write(I)V
    .registers 6
    .param p1, "oneChar"    # I

    .prologue
    .line 185
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 187
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v0, v2

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 204
    if-nez p1, :cond_a

    .line 205
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "str == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_a
    or-int v0, p2, p3

    if-ltz v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_1b

    .line 208
    :cond_15
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 210
    :cond_1b
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_1e
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 212
    add-int v0, p2, p3

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, p2, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 213
    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw v0
.end method

.method public write([CII)V
    .registers 7
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 167
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 168
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_7
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 170
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 171
    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    .line 172
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .registers 6
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_3
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
