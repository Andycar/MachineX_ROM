.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# instance fields
.field protected lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_d

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lock == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_d
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
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

    .line 123
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    const/4 v3, 0x1

    :try_start_5
    new-array v0, v3, [C

    .line 125
    .local v0, "charArray":[C
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-eq v3, v1, :cond_14

    .line 126
    const/4 v1, 0x0

    aget-char v1, v0, v1

    monitor-exit v2

    .line 128
    :goto_13
    return v1

    :cond_14
    monitor-exit v2

    goto :goto_13

    .line 129
    .end local v0    # "charArray":[C
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 5
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    .line 244
    .local v1, "length":I
    new-array v0, v1, [C

    .line 245
    .local v0, "buf":[C
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 246
    if-lez v1, :cond_14

    .line 247
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 249
    :cond_14
    return v1
.end method

.method public read([C)I
    .registers 4
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 20
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const-wide/16 v10, 0x0

    cmp-long v9, p1, v10

    if-gez v9, :cond_21

    .line 205
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "charCount < 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 207
    :cond_21
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 208
    const-wide/16 v4, 0x0

    .line 209
    .local v4, "skipped":J
    const-wide/16 v12, 0x200

    cmp-long v9, p1, v12

    if-gez v9, :cond_44

    move-wide/from16 v0, p1

    long-to-int v8, v0

    .line 210
    .local v8, "toRead":I
    :goto_31
    :try_start_31
    new-array v2, v8, [C

    .line 211
    .local v2, "charsSkipped":[C
    :cond_33
    :goto_33
    cmp-long v9, v4, p1

    if-gez v9, :cond_59

    .line 212
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v8}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 213
    .local v3, "read":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_47

    .line 214
    monitor-exit v10

    move-wide v6, v4

    .line 224
    .end local v3    # "read":I
    .end local v4    # "skipped":J
    .local v6, "skipped":J
    :goto_43
    return-wide v6

    .line 209
    .end local v2    # "charsSkipped":[C
    .end local v6    # "skipped":J
    .end local v8    # "toRead":I
    .restart local v4    # "skipped":J
    :cond_44
    const/16 v8, 0x200

    goto :goto_31

    .line 216
    .restart local v2    # "charsSkipped":[C
    .restart local v3    # "read":I
    .restart local v8    # "toRead":I
    :cond_47
    int-to-long v12, v3

    add-long/2addr v4, v12

    .line 217
    if-ge v3, v8, :cond_4e

    .line 218
    monitor-exit v10

    move-wide v6, v4

    .end local v4    # "skipped":J
    .restart local v6    # "skipped":J
    goto :goto_43

    .line 220
    .end local v6    # "skipped":J
    .restart local v4    # "skipped":J
    :cond_4e
    sub-long v12, p1, v4

    int-to-long v14, v8

    cmp-long v9, v12, v14

    if-gez v9, :cond_33

    .line 221
    sub-long v12, p1, v4

    long-to-int v8, v12

    goto :goto_33

    .line 224
    .end local v3    # "read":I
    :cond_59
    monitor-exit v10

    move-wide v6, v4

    .end local v4    # "skipped":J
    .restart local v6    # "skipped":J
    goto :goto_43

    .line 225
    .end local v2    # "charsSkipped":[C
    .end local v6    # "skipped":J
    .restart local v4    # "skipped":J
    :catchall_5c
    move-exception v9

    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_31 .. :try_end_5e} :catchall_5c

    throw v9
.end method
