.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static factory:Ljava/net/DatagramSocketImplFactory;


# instance fields
.field address:Ljava/net/InetAddress;

.field impl:Ljava/net/DatagramSocketImpl;

.field isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field private lock:Ljava/lang/Object;

.field private pendingConnectException:Ljava/net/SocketException;

.field port:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 53
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 79
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkPort(I)V

    .line 80
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 81
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .registers 5
    .param p1, "aPort"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 53
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 96
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkPort(I)V

    .line 97
    if-nez p2, :cond_1b

    sget-object p2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .end local p2    # "addr":Ljava/net/InetAddress;
    :cond_1b
    invoke-virtual {p0, p1, p2}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/net/DatagramSocketImpl;)V
    .registers 4
    .param p1, "socketImpl"    # Ljava/net/DatagramSocketImpl;

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 53
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 397
    if-nez p1, :cond_1e

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketImpl == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1e
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 401
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 6
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/DatagramSocket;->port:I

    .line 47
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 49
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 53
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 416
    if-eqz p1, :cond_41

    .line 417
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_37

    .line 418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local address not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    move-object v1, p1

    .line 421
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/net/DatagramSocket;->checkPort(I)V

    .line 423
    :cond_41
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_5c

    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_4b
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 425
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V

    .line 426
    if-eqz p1, :cond_57

    .line 428
    :try_start_54
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_57
    .catch Ljava/net/SocketException; {:try_start_54 .. :try_end_57} :catch_62

    .line 435
    :cond_57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 436
    return-void

    .line 423
    :cond_5c
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V

    goto :goto_4b

    .line 429
    :catch_62
    move-exception v0

    .line 430
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 431
    throw v0
.end method

.method private checkPort(I)V
    .registers 5
    .param p1, "aPort"    # I

    .prologue
    .line 101
    if-ltz p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_20

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_20
    return-void
.end method

.method private ensureBound()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    .line 446
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 449
    :cond_11
    return-void
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/DatagramSocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    const-class v1, Ljava/net/DatagramSocket;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v0, :cond_12

    .line 383
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 382
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 385
    :cond_12
    :try_start_12
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    .line 386
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 8
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 468
    if-nez p1, :cond_11

    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "localPort":I
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 484
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_8
    iget-object v3, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3, v2, v0}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 485
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 486
    return-void

    .line 472
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "localPort":I
    :cond_11
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_32

    .line 473
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local address not an InetSocketAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_32
    move-object v1, p1

    .line 476
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 477
    .local v1, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 478
    .restart local v0    # "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_58

    .line 479
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host is unresolved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_58
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 482
    .restart local v2    # "localPort":I
    invoke-direct {p0, v2}, Ljava/net/DatagramSocket;->checkPort(I)V

    goto :goto_8
.end method

.method checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 440
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_e
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 113
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->close()V

    .line 114
    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 554
    if-nez p1, :cond_a

    .line 555
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "address == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_a
    :try_start_a
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_12} :catch_13

    .line 563
    :goto_12
    return-void

    .line 559
    :catch_13
    move-exception v0

    .line 561
    .local v0, "connectException":Ljava/net/SocketException;
    iput-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    goto :goto_12
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 7
    .param p1, "peer"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 507
    if-nez p1, :cond_a

    .line 508
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "peer == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_a
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_2b

    .line 512
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peer not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    move-object v0, p1

    .line 515
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 516
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_51

    .line 517
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host is unresolved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_51
    iget-object v2, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    :try_start_54
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 522
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    .line 524
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 525
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iput v1, p0, Ljava/net/DatagramSocket;->port:I

    .line 526
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 528
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v3, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    iget v4, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {v1, v3, v4}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 529
    monitor-exit v2

    .line 530
    return-void

    .line 529
    :catchall_74
    move-exception v1

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_54 .. :try_end_76} :catchall_74

    throw v1
.end method

.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .registers 5
    .param p1, "aPort"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 157
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_22

    .line 159
    :try_start_12
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z
    :try_end_1a
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_1a} :catch_25
    .catchall {:try_start_12 .. :try_end_1a} :catchall_22

    .line 165
    monitor-exit p0

    return-void

    .line 155
    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    goto :goto_b

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1

    .line 161
    :catch_25
    move-exception v0

    .line 162
    .local v0, "e":Ljava/net/SocketException;
    :try_start_26
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 163
    throw v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_22
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 139
    :cond_c
    :goto_c
    return-void

    .line 135
    :cond_d
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    goto :goto_c
.end method

.method public getBroadcast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 654
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .prologue
    .line 699
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 706
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v0, v0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v1, v1, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 186
    :goto_8
    return-object v1

    .line 185
    :catch_9
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/net/SocketException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 197
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    const/4 v0, -0x1

    .line 203
    :goto_7
    return v0

    .line 200
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_10

    .line 201
    const/4 v0, 0x0

    goto :goto_7

    .line 203
    :cond_10
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 595
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_e

    .line 596
    :cond_c
    const/4 v0, 0x0

    .line 598
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_d
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Ljava/net/DatagramSocket;->port:I

    return v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 230
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 229
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 584
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 585
    const/4 v0, 0x0

    .line 587
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 628
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 238
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 237
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 249
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 248
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 679
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 569
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 688
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 576
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    return v0
.end method

.method isMulticastSocket()Z
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    .prologue
    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 496
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->onBind(Ljava/net/InetAddress;I)V

    .line 497
    return-void
.end method

.method public onClose()V
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 124
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->onClose()V

    .line 125
    return-void
.end method

.method public onConnect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    .prologue
    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 540
    iput-object p1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 541
    iput p2, p0, Ljava/net/DatagramSocket;->port:I

    .line 542
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->onConnect(Ljava/net/InetAddress;I)V

    .line 543
    return-void
.end method

.method public onDisconnect()V
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 151
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->onDisconnect()V

    .line 152
    return-void
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .registers 5
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 266
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    .line 267
    if-nez p1, :cond_14

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pack == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 265
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 270
    :cond_14
    :try_start_14
    iget-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-eqz v0, :cond_22

    .line 271
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Pending connect failure"

    iget-object v2, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    invoke-direct {v0, v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 273
    :cond_22
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->resetLengthForReceive()V

    .line 274
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_11

    .line 275
    monitor-exit p0

    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 5
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 287
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    .line 289
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 290
    .local v0, "packAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    if-eqz v1, :cond_38

    .line 291
    if-eqz v0, :cond_28

    .line 292
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    if-eq v1, v2, :cond_32

    .line 293
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Packet address mismatch with connected address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_28
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 297
    iget v1, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 305
    :cond_32
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    .line 306
    return-void

    .line 301
    :cond_38
    if-nez v0, :cond_32

    .line 302
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination address is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBroadcast(Z)V
    .registers 5
    .param p1, "broadcast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 642
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x20

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 643
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 8
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 318
    if-nez p1, :cond_a

    .line 319
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "netInterface == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_a
    :try_start_a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v2, v2, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 326
    return-void

    .line 323
    :catch_1c
    move-exception v0

    .line 324
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    .line 344
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 343
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 346
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 347
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_c

    .line 348
    monitor-exit p0

    return-void
.end method

.method public setReuseAddress(Z)V
    .registers 5
    .param p1, "reuse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 616
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 617
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 332
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    .line 333
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 332
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 336
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_c

    .line 337
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 362
    monitor-enter p0

    if-gez p1, :cond_e

    .line 363
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 362
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 365
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 366
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_b

    .line 367
    monitor-exit p0

    return-void
.end method

.method public setTrafficClass(I)V
    .registers 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 665
    if-ltz p1, :cond_9

    const/16 v0, 0xff

    if-le p1, v0, :cond_22

    .line 666
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value doesn\'t fit in an unsigned byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_22
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 669
    return-void
.end method
