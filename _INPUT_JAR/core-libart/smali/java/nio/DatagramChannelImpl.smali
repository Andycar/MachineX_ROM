.class Ljava/nio/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
    }
.end annotation


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field connected:Z

.field private final fd:Ljava/io/FileDescriptor;

.field isBound:Z

.field localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/DatagramSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 73
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 93
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 94
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 4
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 73
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 83
    invoke-static {v1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljava/nio/DatagramChannelImpl;)I
    .registers 2
    .param p0, "x0"    # Ljava/nio/DatagramChannelImpl;

    .prologue
    .line 53
    iget v0, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    return v0
.end method

.method private checkNotNull(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 501
    if-nez p1, :cond_a

    .line 502
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_a
    return-void
.end method

.method private checkOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 483
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 485
    :cond_c
    return-void
.end method

.method private checkOpenConnected()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 492
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_f

    .line 493
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 495
    :cond_f
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .registers 13
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 387
    iget-object v10, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v10

    .line 388
    const/4 v7, 0x0

    .line 390
    .local v7, "readCount":I
    :try_start_6
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 391
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    :try_end_16
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_16} :catch_21
    .catchall {:try_start_6 .. :try_end_16} :catchall_2c

    move-result v7

    .line 396
    if-lez v7, :cond_1f

    :goto_19
    :try_start_19
    invoke-virtual {p0, v9}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 398
    monitor-exit v10

    move v0, v7

    :goto_1e
    return v0

    :cond_1f
    move v9, v8

    .line 396
    goto :goto_19

    .line 392
    :catch_21
    move-exception v6

    .line 396
    .local v6, "e":Ljava/io/InterruptedIOException;
    if-lez v7, :cond_2a

    :goto_24
    invoke-virtual {p0, v9}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v10

    move v0, v8

    goto :goto_1e

    :cond_2a
    move v9, v8

    goto :goto_24

    .end local v6    # "e":Ljava/io/InterruptedIOException;
    :catchall_2c
    move-exception v0

    if-lez v7, :cond_30

    move v8, v9

    :cond_30
    invoke-virtual {p0, v8}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v0

    .line 399
    :catchall_34
    move-exception v0

    monitor-exit v10
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .registers 12
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 275
    const/4 v8, 0x0

    .line 276
    .local v8, "retAddr":Ljava/net/SocketAddress;
    new-instance v4, Ljava/net/DatagramPacket;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v4, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 277
    .local v4, "receivePacket":Ljava/net/DatagramPacket;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 280
    .local v6, "oldposition":I
    :cond_d
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v2, p1

    move v3, v0

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    move-result v7

    .line 281
    .local v7, "received":I
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 283
    if-lez v7, :cond_26

    .line 284
    add-int v0, v6, v7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    :cond_26
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    .line 290
    :goto_2a
    return-object v8

    .line 289
    :cond_2b
    if-nez p2, :cond_d

    goto :goto_2a
.end method

.method private receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .registers 14
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    const/4 v10, 0x0

    .line 248
    .local v10, "retAddr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 251
    .local v8, "oldposition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 252
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {v6, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 257
    .local v6, "receivePacket":Ljava/net/DatagramPacket;
    :cond_22
    :goto_22
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v7

    move v5, v0

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v9

    .line 258
    .local v9, "received":I
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 259
    if-lez v9, :cond_4c

    .line 260
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 261
    add-int v0, v8, v9

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 267
    :cond_4c
    :goto_4c
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v10

    .line 271
    :goto_50
    return-object v10

    .line 254
    .end local v6    # "receivePacket":Ljava/net/DatagramPacket;
    .end local v9    # "received":I
    :cond_51
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v6, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .restart local v6    # "receivePacket":Ljava/net/DatagramPacket;
    goto :goto_22

    .line 264
    .restart local v9    # "received":I
    :cond_61
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_4c

    .line 270
    :cond_69
    if-nez p2, :cond_22

    goto :goto_50
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 10
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 452
    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 453
    const/4 v0, 0x0

    .line 455
    .local v0, "result":I
    :try_start_6
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 456
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1b

    move-result v0

    .line 458
    if-lez v0, :cond_19

    :goto_14
    :try_start_14
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 460
    monitor-exit v4

    return v0

    :cond_19
    move v2, v3

    .line 458
    goto :goto_14

    :catchall_1b
    move-exception v1

    if-lez v0, :cond_25

    :goto_1e
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v1

    .line 461
    :catchall_22
    move-exception v1

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    move v2, v3

    .line 458
    goto :goto_1e
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .registers 7
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 143
    iget-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    if-eqz v3, :cond_11

    .line 144
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 141
    :catchall_e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 148
    :cond_11
    :try_start_11
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 149
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 150
    .local v1, "remoteAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_e

    move-result v2

    .line 152
    .local v2, "remotePort":I
    :try_start_1d
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 153
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, v1, v2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_25
    .catch Ljava/net/ConnectException; {:try_start_1d .. :try_end_25} :catch_37
    .catchall {:try_start_1d .. :try_end_25} :catchall_3d

    .line 157
    const/4 v3, 0x1

    :try_start_26
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 162
    :goto_29
    iget-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v3, :cond_31

    .line 163
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    .line 167
    :cond_31
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/DatagramChannelImpl;->onConnect(Ljava/net/InetAddress;IZ)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_e

    .line 168
    monitor-exit p0

    return-object p0

    .line 154
    :catch_37
    move-exception v3

    .line 157
    const/4 v3, 0x1

    :try_start_39
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    goto :goto_29

    :catchall_3d
    move-exception v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v3
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_e
.end method

.method public declared-synchronized disconnect()Ljava/nio/channels/DatagramChannel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_26

    move-result v2

    if-nez v2, :cond_10

    :cond_d
    move-object v1, p0

    .line 198
    .end local p0    # "this":Ljava/nio/DatagramChannelImpl;
    .local v1, "this":Ljava/nio/DatagramChannelImpl;
    :goto_e
    monitor-exit p0

    return-object v1

    .line 191
    .end local v1    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local p0    # "this":Ljava/nio/DatagramChannelImpl;
    :cond_10
    const/4 v2, 0x1

    :try_start_11
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_26

    .line 194
    :try_start_14
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1e
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_1e} :catch_20
    .catchall {:try_start_14 .. :try_end_1e} :catchall_26

    move-object v1, p0

    .line 198
    .end local p0    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local v1    # "this":Ljava/nio/DatagramChannelImpl;
    goto :goto_e

    .line 195
    .end local v1    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local p0    # "this":Ljava/nio/DatagramChannelImpl;
    :catch_20
    move-exception v0

    .line 196
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :try_start_21
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_26

    .line 186
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

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
    .line 466
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V

    .line 467
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 469
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 470
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->onClose()V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1d

    .line 472
    :cond_1b
    monitor-exit p0

    return-void

    .line 466
    :catchall_1d
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
    .line 475
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 476
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onBind(Z)V
    .registers 8
    .param p1, "updateSocketState"    # Z

    .prologue
    .line 120
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_2a

    move-result-object v2

    .line 124
    .local v2, "sa":Ljava/net/SocketAddress;
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    move-object v1, v2

    .line 125
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 126
    .local v1, "localSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 127
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    .line 128
    if-eqz p1, :cond_29

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v3, :cond_29

    .line 129
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    iget v5, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    invoke-virtual {v3, v4, v5}, Ljava/net/DatagramSocket;->onBind(Ljava/net/InetAddress;I)V

    .line 131
    :cond_29
    return-void

    .line 121
    .end local v1    # "localSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "sa":Ljava/net/SocketAddress;
    :catch_2a
    move-exception v0

    .line 122
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method onConnect(Ljava/net/InetAddress;IZ)V
    .registers 5
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I
    .param p3, "updateSocketState"    # Z

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 178
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 179
    if-eqz p3, :cond_15

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_15

    .line 180
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocket;->onConnect(Ljava/net/InetAddress;I)V

    .line 182
    :cond_15
    return-void
.end method

.method onDisconnect(Z)V
    .registers 3
    .param p1, "updateSocketState"    # Z

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 209
    if-eqz p1, :cond_19

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_19

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 210
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->onDisconnect()V

    .line 212
    :cond_19
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 330
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 332
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_f

    move v2, v3

    .line 351
    :cond_e
    :goto_e
    return v2

    .line 337
    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 338
    :cond_1b
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 339
    .local v2, "readCount":I
    if-lez v2, :cond_e

    .line 340
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_e

    .line 344
    .end local v2    # "readCount":I
    :cond_2a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v0, v4, [B

    .line 345
    .local v0, "readArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 346
    .local v1, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 347
    .restart local v2    # "readCount":I
    if-lez v2, :cond_e

    .line 348
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_e
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 14
    .param p1, "targets"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 359
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 360
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 361
    .local v6, "totalCount":I
    if-nez v6, :cond_11

    .line 362
    const-wide/16 v8, 0x0

    .line 380
    :goto_10
    return-wide v8

    .line 367
    :cond_11
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 369
    .local v4, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 370
    .local v5, "readCount":I
    move v1, v5

    .line 371
    .local v1, "left":I
    move v0, p2

    .line 373
    .local v0, "index":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 374
    .local v3, "readArray":[B
    :goto_1f
    if-lez v1, :cond_36

    .line 375
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 376
    .local v2, "putLength":I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 377
    add-int/lit8 v0, v0, 0x1

    .line 378
    sub-int/2addr v1, v2

    .line 379
    goto :goto_1f

    .line 380
    .end local v2    # "putLength":I
    :cond_36
    int-to-long v8, v5

    goto :goto_10
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .registers 10
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 217
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 219
    iget-boolean v6, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v6, :cond_f

    move-object v2, v5

    .line 242
    :goto_e
    return-object v2

    .line 223
    :cond_f
    const/4 v2, 0x0

    .line 225
    .local v2, "retAddr":Ljava/net/SocketAddress;
    :try_start_10
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 228
    iget-object v7, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_16
    .catch Ljava/io/InterruptedIOException; {:try_start_10 .. :try_end_16} :catch_33
    .catchall {:try_start_10 .. :try_end_16} :catchall_3f

    .line 229
    :try_start_16
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    .line 230
    .local v1, "loop":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 231
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    .line 235
    :goto_24
    monitor-exit v7
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_30

    .line 240
    if-eqz v2, :cond_3b

    :goto_27
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    goto :goto_e

    .line 233
    :cond_2b
    :try_start_2b
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    goto :goto_24

    .line 235
    .end local v1    # "loop":Z
    :catchall_30
    move-exception v6

    monitor-exit v7
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_30

    :try_start_32
    throw v6
    :try_end_33
    .catch Ljava/io/InterruptedIOException; {:try_start_32 .. :try_end_33} :catch_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_3f

    .line 236
    :catch_33
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz v2, :cond_3d

    :goto_36
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    move-object v2, v5

    goto :goto_e

    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v1    # "loop":Z
    :cond_3b
    move v3, v4

    goto :goto_27

    .end local v1    # "loop":Z
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_3d
    move v3, v4

    goto :goto_36

    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_3f
    move-exception v5

    if-eqz v2, :cond_46

    :goto_42
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v5

    :cond_46
    move v3, v4

    goto :goto_42
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .registers 13
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .param p2, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 295
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 296
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    move-object v0, p2

    .line 298
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 299
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_17

    .line 300
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 303
    :cond_17
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 304
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :cond_4a
    iget-object v6, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 309
    const/4 v2, 0x0

    .line 311
    .local v2, "sendCount":I
    :try_start_4e
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 313
    .local v1, "oldPosition":I
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-static {v3, p1, v7, v8, v9}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v2

    .line 314
    if-lez v2, :cond_6b

    .line 315
    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 317
    :cond_6b
    iget-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v3, :cond_73

    .line 318
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V
    :try_end_73
    .catchall {:try_start_4e .. :try_end_73} :catchall_7c

    .line 321
    :cond_73
    if-ltz v2, :cond_7a

    :goto_75
    :try_start_75
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 323
    monitor-exit v6

    return v2

    :cond_7a
    move v4, v5

    .line 321
    goto :goto_75

    .end local v1    # "oldPosition":I
    :catchall_7c
    move-exception v3

    if-ltz v2, :cond_86

    :goto_7f
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v3

    .line 324
    :catchall_83
    move-exception v3

    monitor-exit v6
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_83

    throw v3

    :cond_86
    move v4, v5

    .line 321
    goto :goto_7f
.end method

.method public declared-synchronized socket()Ljava/net/DatagramSocket;
    .registers 5

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_15

    .line 103
    new-instance v0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;

    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/PlainDatagramSocketImpl;-><init>(Ljava/io/FileDescriptor;I)V

    invoke-direct {v0, v1, p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;-><init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 105
    :cond_15
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 102
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 404
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 405
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_e

    .line 406
    const/4 v0, 0x0

    .line 413
    :cond_d
    :goto_d
    return v0

    .line 409
    :cond_e
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 410
    .local v0, "writeCount":I
    if-lez v0, :cond_d

    .line 411
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_d
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 14
    .param p1, "sources"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 425
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 426
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 427
    .local v0, "count":I
    if-nez v0, :cond_11

    .line 428
    const-wide/16 v8, 0x0

    .line 448
    :goto_10
    return-wide v8

    .line 430
    :cond_11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 431
    .local v6, "writeBuf":Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, "val":I
    :goto_16
    add-int v8, p3, p2

    if-ge v5, v8, :cond_29

    .line 432
    aget-object v4, p1, v5

    .line 433
    .local v4, "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 434
    .local v2, "oldPosition":I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 435
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 431
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 437
    .end local v2    # "oldPosition":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_29
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 438
    invoke-direct {p0, v6}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 439
    .local v3, "result":I
    move v5, p2

    .line 440
    move v7, v3

    .line 441
    .local v7, "written":I
    :goto_32
    if-lez v3, :cond_4a

    .line 442
    aget-object v4, p1, v5

    .line 443
    .restart local v4    # "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 444
    .local v1, "gap":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 445
    add-int/lit8 v5, v5, 0x1

    .line 446
    sub-int/2addr v3, v1

    .line 447
    goto :goto_32

    .line 448
    .end local v1    # "gap":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_4a
    int-to-long v8, v7

    goto :goto_10
.end method
