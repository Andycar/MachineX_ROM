.class Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
.super Ljava/net/DatagramSocket;
.source "DatagramChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DatagramChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramSocketAdapter"
.end annotation


# instance fields
.field private final channelImpl:Ljava/nio/DatagramChannelImpl;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V
    .registers 5
    .param p1, "socketimpl"    # Ljava/net/DatagramSocketImpl;
    .param p2, "channelImpl"    # Ljava/nio/DatagramChannelImpl;

    .prologue
    .line 527
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    .line 528
    iput-object p2, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    .line 531
    iget-boolean v0, p2, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-eqz v0, :cond_12

    .line 532
    iget-object v0, p2, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    # getter for: Ljava/nio/DatagramChannelImpl;->localPort:I
    invoke-static {p2}, Ljava/nio/DatagramChannelImpl;->access$000(Ljava/nio/DatagramChannelImpl;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    .line 534
    :cond_12
    iget-boolean v0, p2, Ljava/nio/DatagramChannelImpl;->connected:Z

    if-eqz v0, :cond_2f

    .line 535
    iget-object v0, p2, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p2, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    .line 541
    :goto_25
    invoke-virtual {p2}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 542
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onClose()V

    .line 544
    :cond_2e
    return-void

    .line 539
    :cond_2f
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onDisconnect()V

    goto :goto_25
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 557
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 559
    :cond_e
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 560
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    .line 561
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 624
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    monitor-enter v1

    .line 625
    :try_start_3
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 626
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    move-result v0

    if-eqz v0, :cond_13

    .line 628
    :try_start_e
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_18
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    .line 633
    :cond_13
    :goto_13
    :try_start_13
    monitor-exit v1

    .line 634
    return-void

    .line 633
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0

    .line 629
    :catch_18
    move-exception v0

    goto :goto_13
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 584
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->connect(Ljava/net/SocketAddress;)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9

    .line 588
    :goto_8
    return-void

    .line 585
    :catch_9
    move-exception v0

    goto :goto_8
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
    const/4 v4, 0x0

    .line 565
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Socket is already connected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_f
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 571
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v1, v4}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    move-object v0, p1

    .line 573
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 574
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/DatagramChannelImpl;->onConnect(Ljava/net/InetAddress;IZ)V

    .line 577
    return-void
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 638
    invoke-super {p0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 639
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V

    .line 640
    return-void
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    return-object v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .registers 5
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v1}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_e

    .line 593
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 596
    :cond_e
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isBound()Z

    move-result v0

    .line 597
    .local v0, "wasBound":Z
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 598
    if-nez v0, :cond_1d

    .line 601
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    .line 603
    :cond_1d
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 5
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v1}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_e

    .line 608
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 613
    :cond_e
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isBound()Z

    move-result v0

    .line 614
    .local v0, "wasBound":Z
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 615
    if-nez v0, :cond_1d

    .line 618
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    .line 620
    :cond_1d
    return-void
.end method
