.class public abstract Ljava/net/DatagramSocketImpl;
.super Ljava/lang/Object;
.source "DatagramSocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected fd:Ljava/io/FileDescriptor;

.field protected localPort:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract bind(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract close()V
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 248
    return-void
.end method

.method protected abstract create()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected disconnect()V
    .registers 1

    .prologue
    .line 255
    return-void
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getLocalPort()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    return v0
.end method

.method protected abstract getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract join(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract leave(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected onBind(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    .prologue
    .line 279
    return-void
.end method

.method protected onClose()V
    .registers 1

    .prologue
    .line 306
    return-void
.end method

.method protected onConnect(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    .prologue
    .line 288
    return-void
.end method

.method protected onDisconnect()V
    .registers 1

    .prologue
    .line 297
    return-void
.end method

.method protected abstract peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract receive(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
