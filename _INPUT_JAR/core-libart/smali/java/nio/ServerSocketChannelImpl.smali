.class final Ljava/nio/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
    }
.end annotation


# instance fields
.field private final acceptLock:Ljava/lang/Object;

.field private final socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-direct {v0, p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;-><init>(Ljava/nio/ServerSocketChannelImpl;)V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    .line 52
    return-void
.end method

.method private shouldThrowSocketTimeoutExceptionFromAccept(Ljava/net/SocketTimeoutException;)Z
    .registers 6
    .param p1, "e"    # Ljava/net/SocketTimeoutException;

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 98
    :cond_7
    :goto_7
    return v1

    .line 92
    :cond_8
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 93
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Landroid/system/ErrnoException;

    if-eqz v2, :cond_7

    .line 94
    check-cast v0, Landroid/system/ErrnoException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v2, v3, :cond_7

    .line 95
    const/4 v1, 0x0

    goto :goto_7
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_c

    .line 61
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 63
    :cond_c
    iget-object v2, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v2}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->isBound()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 64
    new-instance v2, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v2

    .line 68
    :cond_1a
    new-instance v1, Ljava/nio/SocketChannelImpl;

    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 70
    .local v1, "result":Ljava/nio/SocketChannelImpl;
    :try_start_24
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->begin()V

    .line 71
    iget-object v3, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_49

    .line 73
    :try_start_2a
    iget-object v2, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v2, v1}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    :try_end_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_2a .. :try_end_2f} :catch_3e
    .catchall {:try_start_2a .. :try_end_2f} :catchall_46

    .line 81
    :cond_2f
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_46

    .line 83
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    .line 85
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_52

    .end local v1    # "result":Ljava/nio/SocketChannelImpl;
    :goto_3d
    return-object v1

    .line 74
    .restart local v1    # "result":Ljava/nio/SocketChannelImpl;
    :catch_3e
    move-exception v0

    .line 75
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_3f
    invoke-direct {p0, v0}, Ljava/nio/ServerSocketChannelImpl;->shouldThrowSocketTimeoutExceptionFromAccept(Ljava/net/SocketTimeoutException;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 76
    throw v0

    .line 81
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 83
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    throw v2

    .line 85
    :cond_52
    const/4 v1, 0x0

    goto :goto_3d
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    # invokes: Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->getFD$()Ljava/io/FileDescriptor;
    invoke-static {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->access$000(Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 108
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->close()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 110
    :cond_e
    monitor-exit p0

    return-void

    .line 107
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 3
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    # invokes: Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->getFD$()Ljava/io/FileDescriptor;
    invoke-static {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->access$000(Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 103
    return-void
.end method

.method public socket()Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    return-object v0
.end method
