.class public abstract Ljava/net/SocketImpl;
.super Ljava/lang/Object;
.source "SocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected address:Ljava/net/InetAddress;

.field protected fd:Ljava/io/FileDescriptor;

.field protected localport:I

.field protected port:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract bind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/SocketAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract create(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getFD$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getLocalPort()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Ljava/net/SocketImpl;->localport:I

    return v0
.end method

.method protected abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getPort()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Ljava/net/SocketImpl;->port:I

    return v0
.end method

.method protected abstract listen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onBind(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    .prologue
    .line 305
    return-void
.end method

.method public onClose()V
    .registers 1

    .prologue
    .line 323
    return-void
.end method

.method public onConnect(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    .prologue
    .line 314
    return-void
.end method

.method protected abstract sendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 296
    return-void
.end method

.method protected shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Method has not been implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Method has not been implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected supportsUrgentData()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket[address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/SocketImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
