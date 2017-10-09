.class public Llibcore/net/RawSocket;
.super Ljava/lang/Object;
.source "RawSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ETH_P_ARP:S = 0x806s

.field public static final ETH_P_IP:S = 0x800s


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mProtocolType:S


# direct methods
.method public constructor <init>(Ljava/lang/String;S)V
    .registers 6
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "protocolType"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/RawSocket;->guard:Ldalvik/system/CloseGuard;

    .line 64
    iput-object p1, p0, Llibcore/net/RawSocket;->mInterfaceName:Ljava/lang/String;

    .line 65
    iput-short p2, p0, Llibcore/net/RawSocket;->mProtocolType:S

    .line 66
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Llibcore/net/RawSocket;->fd:Ljava/io/FileDescriptor;

    .line 67
    iget-object v0, p0, Llibcore/net/RawSocket;->fd:Ljava/io/FileDescriptor;

    iget-short v1, p0, Llibcore/net/RawSocket;->mProtocolType:S

    iget-object v2, p0, Llibcore/net/RawSocket;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Llibcore/net/RawSocket;->create(Ljava/io/FileDescriptor;SLjava/lang/String;)V

    .line 68
    iget-object v0, p0, Llibcore/net/RawSocket;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private static native create(Ljava/io/FileDescriptor;SLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native recvPacket(Ljava/io/FileDescriptor;[BIIII)I
.end method

.method private static native sendPacket(Ljava/io/FileDescriptor;Ljava/lang/String;S[B[BII)I
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Llibcore/net/RawSocket;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 129
    iget-object v0, p0, Llibcore/net/RawSocket;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 130
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Llibcore/net/RawSocket;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Llibcore/net/RawSocket;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 137
    :cond_9
    invoke-virtual {p0}, Llibcore/net/RawSocket;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 139
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 141
    return-void

    .line 139
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public read([BIIII)I
    .registers 12
    .param p1, "packet"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "destPort"    # I
    .param p5, "timeoutMillis"    # I

    .prologue
    .line 82
    if-nez p1, :cond_a

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packet == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_a
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 88
    const v0, 0xffff

    if-le p4, v0, :cond_2c

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2c
    iget-object v0, p0, Llibcore/net/RawSocket;->fd:Ljava/io/FileDescriptor;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Llibcore/net/RawSocket;->recvPacket(Ljava/io/FileDescriptor;[BIIII)I

    move-result v0

    return v0
.end method

.method public write([B[BII)I
    .registers 12
    .param p1, "destMac"    # [B
    .param p2, "packet"    # [B
    .param p3, "offset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 104
    if-nez p1, :cond_a

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "destMac == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_a
    if-nez p2, :cond_14

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packet == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_14
    array-length v0, p2

    invoke-static {v0, p3, p4}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 114
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_36

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC length must be 6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_36
    iget-object v0, p0, Llibcore/net/RawSocket;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Llibcore/net/RawSocket;->mInterfaceName:Ljava/lang/String;

    iget-short v2, p0, Llibcore/net/RawSocket;->mProtocolType:S

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Llibcore/net/RawSocket;->sendPacket(Ljava/io/FileDescriptor;Ljava/lang/String;S[B[BII)I

    move-result v0

    return v0
.end method
