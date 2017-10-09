.class public abstract Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Ljava/nio/channels/InterruptibleChannel;


# instance fields
.field private volatile closed:Z

.field private final interruptAndCloseRunnable:Ljava/lang/Runnable;

.field volatile interrupted:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    .line 40
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    .line 42
    new-instance v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;-><init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    .line 53
    return-void
.end method


# virtual methods
.method protected final begin()V
    .registers 3

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->pushInterruptAction$(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-nez v0, :cond_10

    .line 77
    monitor-enter p0

    .line 78
    :try_start_5
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-nez v0, :cond_f

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    .line 80
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V

    .line 82
    :cond_f
    monitor-exit p0

    .line 84
    :cond_10
    return-void

    .line 82
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected final end(Z)V
    .registers 4
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/AsynchronousCloseException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->popInterruptAction$(Ljava/lang/Runnable;)V

    .line 111
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    if-eqz v0, :cond_16

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    .line 113
    new-instance v0, Ljava/nio/channels/ClosedByInterruptException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedByInterruptException;-><init>()V

    throw v0

    .line 115
    :cond_16
    if-nez p1, :cond_22

    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-eqz v0, :cond_22

    .line 116
    new-instance v0, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v0}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v0

    .line 118
    :cond_22
    return-void
.end method

.method protected abstract implCloseChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final declared-synchronized isOpen()Z
    .registers 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
