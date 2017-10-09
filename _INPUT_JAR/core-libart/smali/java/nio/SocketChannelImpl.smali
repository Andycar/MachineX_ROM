.class Ljava/nio/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;,
        Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;,
        Ljava/nio/SocketChannelImpl$SocketAdapter;
    }
.end annotation


# static fields
.field private static final SOCKET_STATUS_CLOSED:I = 0x3

.field private static final SOCKET_STATUS_CONNECTED:I = 0x2

.field private static final SOCKET_STATUS_PENDING:I = 0x1

.field private static final SOCKET_STATUS_UNCONNECTED:I = 0x0

.field private static final SOCKET_STATUS_UNINITIALIZED:I = -0x1


# instance fields
.field private connectAddress:Ljava/net/InetSocketAddress;

.field private final fd:Ljava/io/FileDescriptor;

.field private volatile isBound:Z

.field private localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

.field private status:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "existingFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 74
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 80
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 114
    iput-object p2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Z)V
    .registers 5
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "connect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 74
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 80
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 86
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 104
    iput v1, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 105
    if-eqz p2, :cond_2a

    const/4 v0, 0x1

    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_27
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 106
    return-void

    .line 105
    :cond_2a
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_27
.end method

.method static synthetic access$000(Ljava/nio/SocketChannelImpl;)Z
    .registers 2
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$100(Ljava/nio/SocketChannelImpl;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$200(Ljava/nio/SocketChannelImpl;)I
    .registers 2
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    return v0
.end method

.method static synthetic access$300(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;
    .registers 2
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$400(Ljava/nio/SocketChannelImpl;)I
    .registers 2
    .param p0, "x0"    # Ljava/nio/SocketChannelImpl;

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    return v0
.end method

.method private declared-synchronized checkOpenConnected()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 424
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 423
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 426
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 427
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_d

    .line 429
    :cond_1c
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkUnconnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 436
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 435
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 438
    :cond_10
    :try_start_10
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 439
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 441
    :cond_1b
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 442
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_d

    .line 444
    :cond_26
    monitor-exit p0

    return-void
.end method

.method private isEINPROGRESS(Ljava/io/IOException;)Z
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 255
    :cond_7
    :goto_7
    return v1

    .line 249
    :cond_8
    instance-of v2, p1, Ljava/net/ConnectException;

    if-eqz v2, :cond_7

    .line 250
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 251
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Landroid/system/ErrnoException;

    if-eqz v2, :cond_7

    .line 252
    check-cast v0, Landroid/system/ErrnoException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EINPROGRESS:I

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .registers 12
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 336
    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v9

    .line 337
    const/4 v6, 0x0

    .line 339
    .local v6, "readCount":I
    :try_start_6
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 340
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 342
    :cond_f
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    move-result v6

    .line 343
    if-lez v6, :cond_24

    .line 344
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_33

    .line 347
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 348
    if-lez v6, :cond_31

    :goto_2c
    invoke-virtual {p0, v7}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 351
    :cond_2f
    monitor-exit v9

    return v6

    :cond_31
    move v7, v8

    .line 348
    goto :goto_2c

    .line 347
    :catchall_33
    move-exception v0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 348
    if-lez v6, :cond_44

    move v1, v7

    :goto_3d
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_40
    throw v0

    .line 352
    :catchall_41
    move-exception v0

    monitor-exit v9
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    move v1, v8

    .line 348
    goto :goto_3d
.end method

.method static validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .registers 4
    .param p0, "socketAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 451
    if-nez p0, :cond_a

    .line 452
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "socketAddress == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_a
    instance-of v1, p0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_14

    .line 455
    new-instance v1, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v1

    :cond_14
    move-object v0, p0

    .line 457
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 458
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 459
    new-instance v1, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v1}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v1

    .line 461
    :cond_23
    return-object v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 397
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 398
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_e

    .line 399
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_38

    move v0, v1

    .line 415
    :goto_d
    return v0

    .line 401
    :cond_e
    const/4 v0, 0x0

    .line 403
    .local v0, "writeCount":I
    :try_start_f
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 404
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 406
    :cond_18
    iget-object v2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v0

    .line 407
    if-lez v0, :cond_2b

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_3d

    .line 411
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 412
    if-ltz v0, :cond_3b

    :goto_33
    invoke-virtual {p0, v3}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 415
    :cond_36
    monitor-exit v4

    goto :goto_d

    .line 416
    .end local v0    # "writeCount":I
    :catchall_38
    move-exception v1

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v1

    .restart local v0    # "writeCount":I
    :cond_3b
    move v3, v1

    .line 412
    goto :goto_33

    .line 411
    :catchall_3d
    move-exception v2

    :try_start_3e
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 412
    if-ltz v0, :cond_47

    move v1, v3

    :cond_47
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_4a
    throw v2
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_38
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Z
    .registers 12
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 177
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkUnconnected()V

    .line 180
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 181
    .local v2, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 182
    .local v5, "normalAddr":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 185
    .local v6, "port":I
    invoke-virtual {v5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 186
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    .line 189
    :cond_1b
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v3

    .line 190
    .local v3, "isBlocking":Z
    const/4 v1, 0x0

    .line 193
    .local v1, "finished":Z
    if-eqz v3, :cond_25

    .line 194
    :try_start_22
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 199
    :cond_25
    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v9, v5, v6}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_44
    .catchall {:try_start_22 .. :try_end_2a} :catchall_5d

    .line 200
    if-eqz v3, :cond_42

    move v4, v7

    .line 201
    .local v4, "newStatus":I
    :goto_2d
    const/4 v1, 0x1

    .line 213
    if-eqz v3, :cond_33

    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 220
    :cond_33
    :goto_33
    iget-boolean v9, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    if-nez v9, :cond_3a

    .line 221
    invoke-virtual {p0, v8}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    .line 225
    :cond_3a
    invoke-virtual {p0, v2, v4, v8}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    .line 227
    iget v9, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v9, v7, :cond_64

    :goto_41
    return v8

    .end local v4    # "newStatus":I
    :cond_42
    move v4, v8

    .line 200
    goto :goto_2d

    .line 202
    :catch_44
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    :try_start_45
    invoke-direct {p0, v0}, Ljava/nio/SocketChannelImpl;->isEINPROGRESS(Ljava/io/IOException;)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5d

    move-result v9

    if-eqz v9, :cond_52

    .line 204
    const/4 v4, 0x1

    .line 213
    .restart local v4    # "newStatus":I
    if-eqz v3, :cond_33

    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    goto :goto_33

    .line 206
    .end local v4    # "newStatus":I
    :cond_52
    :try_start_52
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 207
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 208
    const/4 v1, 0x1

    .line 210
    :cond_5c
    throw v0
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_5d

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5d
    move-exception v7

    if-eqz v3, :cond_63

    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_63
    throw v7

    .line 227
    .restart local v4    # "newStatus":I
    :cond_64
    const/4 v8, 0x0

    goto :goto_41
.end method

.method public finishConnect()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 260
    monitor-enter p0

    .line 261
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_12

    .line 262
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4

    .line 270
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v4

    .line 264
    :cond_12
    :try_start_12
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v5, v4, :cond_18

    .line 265
    monitor-exit p0

    .line 294
    :goto_17
    return v1

    .line 267
    :cond_18
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v5, v1, :cond_22

    .line 268
    new-instance v4, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v4}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v4

    .line 270
    :cond_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_f

    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, "finished":Z
    :try_start_24
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 275
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 276
    .local v2, "inetAddress":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 277
    .local v3, "port":I
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v2, v3, v6, v7}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    :try_end_3a
    .catch Ljava/net/ConnectException; {:try_start_24 .. :try_end_3a} :catch_5f
    .catchall {:try_start_24 .. :try_end_3a} :catchall_6b

    move-result v1

    .line 285
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 288
    monitor-enter p0

    .line 289
    if-eqz v1, :cond_70

    :goto_41
    :try_start_41
    iput v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 290
    if-eqz v1, :cond_5a

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v4, :cond_5a

    .line 291
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    .line 293
    :cond_5a
    monitor-exit p0

    goto :goto_17

    :catchall_5c
    move-exception v4

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_5c

    throw v4

    .line 278
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "port":I
    :catch_5f
    move-exception v0

    .line 279
    .local v0, "e":Ljava/net/ConnectException;
    :try_start_60
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 280
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 281
    const/4 v1, 0x1

    .line 283
    :cond_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_6b

    .line 285
    .end local v0    # "e":Ljava/net/ConnectException;
    :catchall_6b
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    throw v4

    .line 289
    .restart local v2    # "inetAddress":Ljava/net/InetAddress;
    .restart local v3    # "port":I
    :cond_70
    :try_start_70
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_5c

    goto :goto_41
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 469
    monitor-enter p0

    :try_start_2
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v0, v1, :cond_1f

    .line 470
    const/4 v0, 0x3

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 473
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 474
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 475
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onClose()V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_21

    .line 478
    :cond_1f
    monitor-exit p0

    return-void

    .line 469
    :catchall_21
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
    .line 481
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 482
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .registers 3

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnectionPending()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 171
    monitor-enter p0

    :try_start_2
    iget v1, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_a

    if-ne v1, v0, :cond_8

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

.method public onAccept(Ljava/net/InetSocketAddress;Z)V
    .registers 4
    .param p1, "remoteAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "updateSocketState"    # Z

    .prologue
    .line 493
    invoke-virtual {p0, p2}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    .line 494
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    .line 495
    return-void
.end method

.method onBind(Z)V
    .registers 8
    .param p1, "updateSocketState"    # Z

    .prologue
    .line 151
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_2a

    move-result-object v2

    .line 155
    .local v2, "sa":Ljava/net/SocketAddress;
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    move-object v1, v2

    .line 156
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 157
    .local v1, "localSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 158
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    .line 159
    if-eqz p1, :cond_29

    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v3, :cond_29

    .line 160
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    iget v5, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-virtual {v3, v4, v5}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    .line 162
    :cond_29
    return-void

    .line 152
    .end local v1    # "localSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "sa":Ljava/net/SocketAddress;
    :catch_2a
    move-exception v0

    .line 153
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "status"    # I
    .param p3, "updateSocketState"    # Z

    .prologue
    .line 238
    iput p2, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 239
    iput-object p1, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 240
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1e

    if-eqz p3, :cond_1e

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_1e

    .line 241
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    .line 243
    :cond_1e
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 300
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 301
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_d
    return v0

    :cond_e
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_d
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
    .line 309
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 310
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 311
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 312
    .local v6, "totalCount":I
    if-nez v6, :cond_11

    .line 313
    const-wide/16 v8, 0x0

    .line 332
    :goto_10
    return-wide v8

    .line 315
    :cond_11
    new-array v3, v6, [B

    .line 316
    .local v3, "readArray":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 319
    .local v4, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 320
    .local v5, "readCount":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 321
    if-lez v5, :cond_39

    .line 322
    move v1, v5

    .line 323
    .local v1, "left":I
    move v0, p2

    .line 325
    .local v0, "index":I
    :goto_22
    if-lez v1, :cond_39

    .line 326
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 327
    .local v2, "putLength":I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 329
    sub-int/2addr v1, v2

    .line 330
    goto :goto_22

    .line 332
    .end local v0    # "index":I
    .end local v1    # "left":I
    .end local v2    # "putLength":I
    :cond_39
    int-to-long v8, v5

    goto :goto_10
.end method

.method public declared-synchronized socket()Ljava/net/Socket;
    .registers 8

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-nez v3, :cond_27

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 127
    .local v2, "port":I
    :try_start_7
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_17

    .line 128
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 129
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 131
    :cond_17
    new-instance v3, Ljava/nio/SocketChannelImpl$SocketAdapter;

    new-instance v4, Ljava/net/PlainSocketImpl;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v6, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-direct {v4, v5, v6, v0, v2}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V

    invoke-direct {v3, v4, p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;-><init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_27
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_27} :catch_2b
    .catchall {:try_start_7 .. :try_end_27} :catchall_2e

    .line 136
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "port":I
    :cond_27
    :try_start_27
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2e

    :goto_29
    monitor-exit p0

    return-object v3

    .line 132
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "port":I
    :catch_2b
    move-exception v1

    .line 133
    .local v1, "e":Ljava/net/SocketException;
    const/4 v3, 0x0

    goto :goto_29

    .line 123
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v2    # "port":I
    :catchall_2e
    move-exception v3

    monitor-exit p0

    throw v3
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
    .line 357
    if-nez p1, :cond_a

    .line 358
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_a
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 361
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_15

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_14
    return v0

    :cond_15
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_14
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
    .line 369
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 370
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 371
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 372
    .local v0, "count":I
    if-nez v0, :cond_11

    .line 373
    const-wide/16 v8, 0x0

    .line 393
    :goto_10
    return-wide v8

    .line 375
    :cond_11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 376
    .local v6, "writeBuf":Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, "val":I
    :goto_16
    add-int v8, p3, p2

    if-ge v5, v8, :cond_29

    .line 377
    aget-object v4, p1, v5

    .line 378
    .local v4, "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 379
    .local v2, "oldPosition":I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 380
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 382
    .end local v2    # "oldPosition":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_29
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 383
    invoke-direct {p0, v6}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 384
    .local v3, "result":I
    move v5, p2

    .line 385
    move v7, v3

    .line 386
    .local v7, "written":I
    :goto_32
    if-lez v3, :cond_4a

    .line 387
    aget-object v4, p1, v5

    .line 388
    .restart local v4    # "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 389
    .local v1, "gap":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    add-int/lit8 v5, v5, 0x1

    .line 391
    sub-int/2addr v3, v1

    .line 392
    goto :goto_32

    .line 393
    .end local v1    # "gap":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_4a
    int-to-long v8, v7

    goto :goto_10
.end method
