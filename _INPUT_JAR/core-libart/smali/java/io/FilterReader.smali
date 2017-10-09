.class public abstract Ljava/io/FilterReader;
.super Ljava/io/Reader;
.source "FilterReader.java"


# instance fields
.field protected in:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Ljava/io/Reader;)V
    .registers 2
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 45
    iput-object p1, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    .line 46
    return-void
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
    .line 56
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_3
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .param p1, "readlimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    .line 80
    :try_start_4
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 81
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    :try_start_e
    throw v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 79
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 3

    .prologue
    .line 96
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_3
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 98
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_3
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    monitor-exit v1

    return v0

    .line 115
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public read([CII)I
    .registers 6
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_3
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    monitor-exit v1

    return v0

    .line 131
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_3
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 149
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_3
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public skip(J)J
    .registers 8
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Ljava/io/FilterReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_3
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 189
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
