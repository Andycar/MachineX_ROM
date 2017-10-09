.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_BACKLOG:I = 0x32

.field static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private localAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_16

    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 64
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->create(Z)V

    .line 65
    return-void

    .line 62
    :cond_16
    new-instance v0, Ljava/net/PlainServerSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainServerSocketImpl;-><init>()V

    goto :goto_d
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/16 v0, 0x32

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 75
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 86
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .registers 8
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-direct {p0, p1}, Ljava/net/ServerSocket;->checkListen(I)V

    .line 98
    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v2, :cond_2e

    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v2}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v2

    :goto_10
    iput-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 100
    if-nez p3, :cond_34

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 102
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_16
    monitor-enter p0

    .line 103
    :try_start_17
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3e

    .line 105
    :try_start_1d
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p1}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 106
    invoke-direct {p0}, Ljava/net/ServerSocket;->readBackBindState()V

    .line 107
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-lez p2, :cond_36

    .end local p2    # "backlog":I
    :goto_29
    invoke-virtual {v2, p2}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2c} :catch_39
    .catchall {:try_start_1d .. :try_end_2c} :catchall_3e

    .line 112
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_3e

    .line 113
    return-void

    .line 98
    .end local v0    # "addr":Ljava/net/InetAddress;
    .restart local p2    # "backlog":I
    :cond_2e
    new-instance v2, Ljava/net/PlainServerSocketImpl;

    invoke-direct {v2}, Ljava/net/PlainServerSocketImpl;-><init>()V

    goto :goto_10

    :cond_34
    move-object v0, p3

    .line 100
    goto :goto_16

    .line 107
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_36
    const/16 p2, 0x32

    goto :goto_29

    .line 108
    .end local p2    # "backlog":I
    :catch_39
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    :try_start_3a
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 110
    throw v1

    .line 112
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3e
    move-exception v2

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_3e

    throw v2
.end method

.method private checkListen(I)V
    .registers 5
    .param p1, "aPort"    # I

    .prologue
    .line 149
    if-ltz p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_20

    .line 150
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

    .line 152
    :cond_20
    return-void
.end method

.method private checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 380
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_e
    return-void
.end method

.method private readBackBindState()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljava/net/ServerSocket;->localAddress:Ljava/net/InetAddress;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->isBound:Z

    .line 121
    return-void
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .registers 4
    .param p0, "aFactory"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const-class v1, Ljava/net/ServerSocket;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_12

    .line 234
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 233
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 236
    :cond_12
    :try_start_12
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    .line 237
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    .line 134
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v2

    if-nez v2, :cond_11

    .line 135
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket is not bound"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_11
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 140
    .local v0, "aSocket":Ljava/net/Socket;
    :try_start_16
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 145
    return-object v0

    .line 141
    :catch_1a
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 143
    throw v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 296
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .registers 10
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    .line 313
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 314
    new-instance v4, Ljava/net/BindException;

    const-string v5, "Socket is already bound"

    invoke-direct {v4, v5}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_11
    if-nez p1, :cond_28

    .line 319
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 320
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 333
    .local v3, "port":I
    :goto_16
    monitor-enter p0

    .line 335
    :try_start_17
    iget-object v4, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v3}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 336
    invoke-direct {p0}, Ljava/net/ServerSocket;->readBackBindState()V

    .line 337
    iget-object v4, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-lez p2, :cond_74

    .end local p2    # "backlog":I
    :goto_23
    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_26} :catch_77
    .catchall {:try_start_17 .. :try_end_26} :catchall_7c

    .line 342
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_7c

    .line 343
    return-void

    .line 322
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "port":I
    .restart local p2    # "backlog":I
    :cond_28
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_49

    .line 323
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_49
    move-object v2, p1

    .line 326
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 327
    .local v2, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0    # "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_6f

    .line 328
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :cond_6f
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .restart local v3    # "port":I
    goto :goto_16

    .line 337
    .end local v2    # "inetAddr":Ljava/net/InetSocketAddress;
    :cond_74
    const/16 p2, 0x32

    goto :goto_23

    .line 338
    .end local p2    # "backlog":I
    :catch_77
    move-exception v1

    .line 339
    .local v1, "e":Ljava/io/IOException;
    :try_start_78
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 340
    throw v1

    .line 342
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_7c
    move-exception v4

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_7c

    throw v4
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    .line 163
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    .line 164
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpl$()Ljava/net/SocketImpl;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/net/ServerSocket;->localAddress:Ljava/net/InetAddress;

    goto :goto_7
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 188
    const/4 v0, -0x1

    .line 190
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 353
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 354
    const/4 v0, 0x0

    .line 356
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Ljava/net/ServerSocket;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    .line 425
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    .line 406
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    .line 201
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 200
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final implAccept(Ljava/net/Socket;)V
    .registers 4
    .param p1, "aSocket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->accepted()V

    .line 218
    monitor-exit p0

    .line 219
    return-void

    .line 218
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 366
    iget-boolean v0, p0, Ljava/net/ServerSocket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 375
    iget-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    return v0
.end method

.method public setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 455
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    .line 414
    const/4 v0, 0x1

    if-ge p1, v0, :cond_e

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_e
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 418
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
    .line 393
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    .line 394
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 395
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
    .line 251
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    .line 252
    if-gez p1, :cond_11

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 251
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_11
    :try_start_11
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_e

    .line 256
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 268
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "ServerSocket["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 270
    const-string v1, "unbound]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    :goto_1c
    return-object v1

    :cond_1d
    const-string v1, "addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",port=0,localport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method
