.class public Ljava/io/StringReader;
.super Ljava/io/Reader;
.source "StringReader.java"


# instance fields
.field private count:I

.field private markpos:I

.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/StringReader;->markpos:I

    .line 46
    iput-object p1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringReader;->count:I

    .line 48
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
    .line 96
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "StringReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_e
    return-void
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public mark(I)V
    .registers 5
    .param p1, "readLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-gez p1, :cond_1b

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLimit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1b
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_1e
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 91
    iget v0, p0, Ljava/io/StringReader;->pos:I

    iput v0, p0, Ljava/io/StringReader;->markpos:I

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 109
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
    .line 124
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 126
    iget v0, p0, Ljava/io/StringReader;->pos:I

    iget v2, p0, Ljava/io/StringReader;->count:I

    if-eq v0, v2, :cond_1a

    .line 127
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v2, p0, Ljava/io/StringReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/StringReader;->pos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    monitor-exit v1

    .line 129
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_19

    .line 130
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public read([CII)I
    .registers 9
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v3, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 147
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 148
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 149
    if-nez p3, :cond_f

    .line 150
    const/4 v1, 0x0

    monitor-exit v3

    .line 159
    :goto_e
    return v1

    .line 152
    :cond_f
    iget v2, p0, Ljava/io/StringReader;->pos:I

    iget v4, p0, Ljava/io/StringReader;->count:I

    if-ne v2, v4, :cond_1b

    .line 153
    const/4 v1, -0x1

    monitor-exit v3

    goto :goto_e

    .line 160
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v2

    .line 155
    :cond_1b
    :try_start_1b
    iget v2, p0, Ljava/io/StringReader;->pos:I

    add-int/2addr v2, p3

    iget v4, p0, Ljava/io/StringReader;->count:I

    if-le v2, v4, :cond_33

    iget v0, p0, Ljava/io/StringReader;->count:I

    .line 156
    .local v0, "end":I
    :goto_24
    iget-object v2, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v4, p0, Ljava/io/StringReader;->pos:I

    invoke-virtual {v2, v4, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 157
    iget v2, p0, Ljava/io/StringReader;->pos:I

    sub-int v1, v0, v2

    .line 158
    .local v1, "read":I
    iput v0, p0, Ljava/io/StringReader;->pos:I

    .line 159
    monitor-exit v3

    goto :goto_e

    .line 155
    .end local v0    # "end":I
    .end local v1    # "read":I
    :cond_33
    iget v2, p0, Ljava/io/StringReader;->pos:I
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_18

    add-int v0, v2, p3

    goto :goto_24
.end method

.method public ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 177
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 178
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

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
    .line 194
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 196
    iget v0, p0, Ljava/io/StringReader;->markpos:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    iget v0, p0, Ljava/io/StringReader;->markpos:I

    :goto_d
    iput v0, p0, Ljava/io/StringReader;->pos:I

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 196
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 197
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
    .line 222
    iget-object v3, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 223
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 225
    iget v2, p0, Ljava/io/StringReader;->pos:I

    neg-int v1, v2

    .line 226
    .local v1, "minSkip":I
    iget v2, p0, Ljava/io/StringReader;->count:I

    iget v4, p0, Ljava/io/StringReader;->pos:I

    sub-int v0, v2, v4

    .line 228
    .local v0, "maxSkip":I
    if-eqz v0, :cond_16

    int-to-long v4, v0

    cmp-long v2, p1, v4

    if-lez v2, :cond_20

    .line 229
    :cond_16
    int-to-long p1, v0

    .line 234
    :cond_17
    :goto_17
    iget v2, p0, Ljava/io/StringReader;->pos:I

    int-to-long v4, v2

    add-long/2addr v4, p1

    long-to-int v2, v4

    iput v2, p0, Ljava/io/StringReader;->pos:I

    .line 235
    monitor-exit v3

    return-wide p1

    .line 230
    :cond_20
    int-to-long v4, v1

    cmp-long v2, p1, v4

    if-gez v2, :cond_17

    .line 231
    int-to-long p1, v1

    goto :goto_17

    .line 236
    .end local v0    # "maxSkip":I
    .end local v1    # "minSkip":I
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method
