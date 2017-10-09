.class Ljava/nio/SocketChannelImpl$SocketAdapter;
.super Ljava/net/Socket;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketAdapter"
.end annotation


# instance fields
.field private final channel:Ljava/nio/SocketChannelImpl;

.field private final socketImpl:Ljava/net/PlainSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V
    .registers 5
    .param p1, "socketImpl"    # Ljava/net/PlainSocketImpl;
    .param p2, "channel"    # Ljava/nio/SocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 507
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    .line 508
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    .line 509
    invoke-static {p0}, Ljava/net/SocketUtils;->setCreated(Ljava/net/Socket;)V

    .line 512
    # getter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$000(Ljava/nio/SocketChannelImpl;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 513
    # getter for: Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$100(Ljava/nio/SocketChannelImpl;)Ljava/net/InetAddress;

    move-result-object v0

    # getter for: Ljava/nio/SocketChannelImpl;->localPort:I
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$200(Ljava/nio/SocketChannelImpl;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    .line 515
    :cond_1b
    invoke-virtual {p2}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 516
    # getter for: Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$300(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    # getter for: Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->access$300(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    .line 518
    :cond_34
    invoke-virtual {p2}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 519
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onClose()V

    .line 522
    :cond_3d
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 549
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 551
    :cond_e
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    # getter for: Ljava/nio/SocketChannelImpl;->status:I
    invoke-static {v1}, Ljava/nio/SocketChannelImpl;->access$400(Ljava/nio/SocketChannelImpl;)I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 552
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0

    .line 554
    :cond_1d
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 555
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    .line 556
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    monitor-enter v1

    .line 561
    :try_start_3
    invoke-super {p0}, Ljava/net/Socket;->close()V

    .line 562
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 565
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 567
    :cond_13
    monitor-exit v1

    .line 568
    return-void

    .line 567
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 7
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_f

    .line 532
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 534
    :cond_f
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 535
    new-instance v1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v1

    .line 537
    :cond_1b
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 538
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1, v3}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    .line 539
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_32

    move-object v0, p1

    .line 540
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 541
    .local v0, "remoteInetAddress":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    .line 544
    .end local v0    # "remoteInetAddress":Ljava/net/InetSocketAddress;
    :cond_32
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/PlainSocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;

    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1, v2}, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;

    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1, v2}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method
