.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private target:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedInputStream;)V
    .registers 2
    .param p1, "target"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 54
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
    .line 66
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 67
    .local v0, "stream":Ljava/io/PipedInputStream;
    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {v0}, Ljava/io/PipedInputStream;->done()V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 71
    :cond_a
    return-void
.end method

.method public connect(Ljava/io/PipedInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p1, :cond_a

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stream == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_a
    monitor-enter p1

    .line 87
    :try_start_b
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_1a

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :catchall_17
    move-exception v0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0

    .line 90
    :cond_1a
    :try_start_1a
    iget-boolean v0, p1, Ljava/io/PipedInputStream;->isConnected:Z

    if-eqz v0, :cond_26

    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_26
    invoke-virtual {p1}, Ljava/io/PipedInputStream;->establishConnection()V

    .line 94
    iput-object p1, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 95
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_17

    .line 96
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 108
    .local v0, "stream":Ljava/io/PipedInputStream;
    if-nez v0, :cond_5

    .line 115
    :goto_4
    return-void

    .line 112
    :cond_5
    monitor-enter v0

    .line 113
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v0

    goto :goto_4

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public write(I)V
    .registers 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 173
    .local v0, "stream":Ljava/io/PipedInputStream;
    if-nez v0, :cond_c

    .line 174
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_c
    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    .line 177
    return-void
.end method

.method public write([BII)V
    .registers 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 148
    return-void
.end method
