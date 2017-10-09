.class Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
.super Ljava/net/ServerSocket;
.source "ServerSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/ServerSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerSocketAdapter"
.end annotation


# instance fields
.field private final channelImpl:Ljava/nio/ServerSocketChannelImpl;


# direct methods
.method constructor <init>(Ljava/nio/ServerSocketChannelImpl;)V
    .registers 2
    .param p1, "aChannelImpl"    # Ljava/nio/ServerSocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    .line 121
    iput-object p1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    .line 122
    return-void
.end method

.method static synthetic access$000(Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "x0"    # Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFD$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 171
    invoke-super {p0}, Ljava/net/ServerSocket;->getImpl$()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->isBound()Z

    move-result v1

    if-nez v1, :cond_c

    .line 126
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 128
    :cond_c
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 129
    .local v0, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_1a

    .line 130
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 132
    :cond_1a
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    monitor-enter v1

    .line 163
    :try_start_3
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V

    .line 164
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 165
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl;->close()V

    .line 167
    :cond_13
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    return-object v0
.end method

.method public implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    .registers 7
    .param p1, "clientSocketChannel"    # Ljava/nio/SocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 137
    .local v0, "clientSocket":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 139
    .local v1, "connectOK":Z
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_25

    .line 140
    :try_start_6
    invoke-super {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 143
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 146
    .local v2, "remoteAddress":Ljava/net/InetSocketAddress;
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/nio/SocketChannelImpl;->onAccept(Ljava/net/InetSocketAddress;Z)V

    .line 147
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_22

    .line 148
    const/4 v1, 0x1

    .line 150
    if-nez v1, :cond_21

    .line 151
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 154
    :cond_21
    return-object v0

    .line 147
    .end local v2    # "remoteAddress":Ljava/net/InetSocketAddress;
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 150
    :catchall_25
    move-exception v3

    if-nez v1, :cond_2b

    .line 151
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_2b
    throw v3
.end method
