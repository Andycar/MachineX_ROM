.class public final Llibcore/io/IoBridge;
.super Ljava/lang/Object;
.source "IoBridge.java"


# static fields
.field public static final JAVA_IP_MULTICAST_TTL:I = 0x11

.field public static final JAVA_MCAST_BLOCK_SOURCE:I = 0x17

.field public static final JAVA_MCAST_JOIN_GROUP:I = 0x13

.field public static final JAVA_MCAST_JOIN_SOURCE_GROUP:I = 0x15

.field public static final JAVA_MCAST_LEAVE_GROUP:I = 0x14

.field public static final JAVA_MCAST_LEAVE_SOURCE_GROUP:I = 0x16

.field public static final JAVA_MCAST_UNBLOCK_SOURCE:I = 0x18


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static available(Ljava/io/FileDescriptor;)I
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 57
    :try_start_1
    new-instance v0, Landroid/util/MutableInt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 58
    .local v0, "available":Landroid/util/MutableInt;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->FIONREAD:I

    invoke-interface {v3, p0, v4, v0}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I

    .line 59
    iget v3, v0, Landroid/util/MutableInt;->value:I

    if-gez v3, :cond_15

    .line 66
    const/4 v3, 0x0

    iput v3, v0, Landroid/util/MutableInt;->value:I

    .line 68
    :cond_15
    iget v2, v0, Landroid/util/MutableInt;->value:I
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_17} :catch_18

    .line 72
    .end local v0    # "available":Landroid/util/MutableInt;
    :cond_17
    return v2

    .line 69
    :catch_18
    move-exception v1

    .line 70
    .local v1, "errnoException":Landroid/system/ErrnoException;
    iget v3, v1, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->ENOTTY:I

    if-eq v3, v4, :cond_17

    .line 74
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 80
    instance-of v4, p1, Ljava/net/Inet6Address;

    if-eqz v4, :cond_42

    move-object v2, p1

    .line 81
    check-cast v2, Ljava/net/Inet6Address;

    .line 82
    .local v2, "inet6Address":Ljava/net/Inet6Address;
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    if-nez v4, :cond_42

    invoke-virtual {v2}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 85
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 86
    .local v3, "nif":Ljava/net/NetworkInterface;
    if-nez v3, :cond_32

    .line 87
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t bind to a link-local address without a scope id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_32
    :try_start_32
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_41
    .catch Ljava/net/UnknownHostException; {:try_start_32 .. :try_end_41} :catch_48

    move-result-object p1

    .line 97
    .end local v2    # "inet6Address":Ljava/net/Inet6Address;
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    :cond_42
    :try_start_42
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_47
    .catch Landroid/system/ErrnoException; {:try_start_42 .. :try_end_47} :catch_4f

    .line 101
    return-void

    .line 91
    .restart local v2    # "inet6Address":Ljava/net/Inet6Address;
    .restart local v3    # "nif":Ljava/net/NetworkInterface;
    :catch_48
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 98
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    .end local v2    # "inet6Address":Ljava/net/Inet6Address;
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    :catch_4f
    move-exception v0

    .line 99
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v4, Ljava/net/BindException;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/net/BindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static booleanFromInt(I)Z
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 310
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static booleanToInt(Z)I
    .registers 2
    .param p0, "b"    # Z

    .prologue
    .line 314
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_9

    .line 207
    :cond_8
    :goto_8
    return-void

    .line 197
    :cond_9
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 198
    .local v0, "intFd":I
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 199
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 200
    .local v1, "oldFd":Ljava/io/FileDescriptor;
    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 201
    invoke-static {v1}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 203
    :try_start_1c
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_8

    .line 204
    :catch_22
    move-exception v2

    goto :goto_8
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, p2, v1}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_4} :catch_5

    .line 114
    return-void

    .line 111
    :catch_5
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/IoBridge;->connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_13

    .line 132
    return-void

    .line 123
    :catch_4
    move-exception v0

    .line 124
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v2, Ljava/net/ConnectException;

    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 125
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catch_f
    move-exception v1

    .line 126
    .local v1, "ex":Ljava/net/SocketException;
    throw v1

    .line 127
    .end local v1    # "ex":Ljava/net/SocketException;
    :catch_11
    move-exception v1

    .line 128
    .local v1, "ex":Ljava/net/SocketTimeoutException;
    throw v1

    .line 129
    .end local v1    # "ex":Ljava/net/SocketTimeoutException;
    :catch_13
    move-exception v1

    .line 130
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;
    .registers 7
    .param p0, "inetAddress"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "timeoutMs"    # I
    .param p3, "cause"    # Landroid/system/ErrnoException;

    .prologue
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "detail":Ljava/lang/String;
    if-lez p2, :cond_42

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_42
    if-eqz p3, :cond_5f

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_5f
    return-object v0
.end method

.method private static connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 136
    if-nez p3, :cond_9

    .line 137
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 173
    :goto_8
    return-void

    .line 149
    :cond_9
    const/4 v4, 0x0

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p3

    add-long v2, v4, v6

    .line 154
    .local v2, "finishTimeMs":J
    :try_start_14
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 155
    const/4 v4, 0x1

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_8

    .line 157
    :catch_1e
    move-exception v0

    .line 158
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EINPROGRESS:I

    if-eq v4, v5, :cond_26

    .line 159
    throw v0

    .line 167
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v1, v4

    .line 168
    .local v1, "remainingTimeoutMs":I
    if-gtz v1, :cond_3a

    .line 169
    new-instance v4, Ljava/net/SocketTimeoutException;

    const/4 v5, 0x0

    invoke-static {p1, p2, p3, v5}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    :cond_3a
    invoke-static {p0, p1, p2, p3, v1}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 172
    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    goto :goto_8
.end method

.method private static getGroupSourceReqOp(I)I
    .registers 4
    .param p0, "javaValue"    # I

    .prologue
    .line 416
    packed-switch p0, :pswitch_data_28

    .line 426
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown java value for setsocketopt op lookup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 418
    :pswitch_1c
    sget v0, Landroid/system/OsConstants;->MCAST_JOIN_SOURCE_GROUP:I

    .line 424
    :goto_1e
    return v0

    .line 420
    :pswitch_1f
    sget v0, Landroid/system/OsConstants;->MCAST_LEAVE_SOURCE_GROUP:I

    goto :goto_1e

    .line 422
    :pswitch_22
    sget v0, Landroid/system/OsConstants;->MCAST_BLOCK_SOURCE:I

    goto :goto_1e

    .line 424
    :pswitch_25
    sget v0, Landroid/system/OsConstants;->MCAST_UNBLOCK_SOURCE:I

    goto :goto_1e

    .line 416
    :pswitch_data_28
    .packed-switch 0x15
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public static getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 629
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .line 630
    .local v3, "sa":Ljava/net/SocketAddress;
    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 631
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v4

    return-object v4

    .line 632
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "sa":Ljava/net/SocketAddress;
    :catch_f
    move-exception v1

    .line 633
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public static getSocketLocalPort(Ljava/io/FileDescriptor;)I
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 639
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .line 640
    .local v3, "sa":Ljava/net/SocketAddress;
    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 641
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v4

    return v4

    .line 642
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "sa":Ljava/net/SocketAddress;
    :catch_f
    move-exception v1

    .line 643
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public static getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 256
    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoBridge;->getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 257
    :catch_5
    move-exception v0

    .line 258
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 263
    sparse-switch p1, :sswitch_data_11c

    .line 305
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown socket option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :sswitch_1c
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v3, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 303
    :goto_26
    return-object v1

    .line 269
    :sswitch_27
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    .line 273
    :sswitch_36
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 277
    :sswitch_49
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    .line 281
    :sswitch_58
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_TCLASS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    .line 283
    :sswitch_67
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_BROADCAST:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 285
    :sswitch_7a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 287
    :sswitch_8d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    .line 288
    .local v0, "linger":Landroid/system/StructLinger;
    invoke-virtual {v0}, Landroid/system/StructLinger;->isOn()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 289
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 291
    :cond_a3
    iget v1, v0, Landroid/system/StructLinger;->l_linger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_26

    .line 293
    .end local v0    # "linger":Landroid/system/StructLinger;
    :sswitch_ab
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_OOBINLINE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_26

    .line 295
    :sswitch_bf
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_26

    .line 297
    :sswitch_cf
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_REUSEADDR:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_26

    .line 299
    :sswitch_e3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_26

    .line 301
    :sswitch_f3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v1

    invoke-virtual {v1}, Landroid/system/StructTimeval;->toMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_26

    .line 303
    :sswitch_108
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v3, Landroid/system/OsConstants;->TCP_NODELAY:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_26

    .line 263
    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_108
        0x3 -> :sswitch_58
        0x4 -> :sswitch_cf
        0x8 -> :sswitch_7a
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_49
        0x12 -> :sswitch_36
        0x1f -> :sswitch_27
        0x20 -> :sswitch_67
        0x80 -> :sswitch_8d
        0x1001 -> :sswitch_e3
        0x1002 -> :sswitch_bf
        0x1003 -> :sswitch_ab
        0x1006 -> :sswitch_f3
    .end sparse-switch
.end method

.method public static isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    .registers 16
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .param p4, "remainingTimeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 212
    const/4 v8, 0x1

    :try_start_3
    new-array v4, v8, [Landroid/system/StructPollfd;

    const/4 v8, 0x0

    new-instance v9, Landroid/system/StructPollfd;

    invoke-direct {v9}, Landroid/system/StructPollfd;-><init>()V

    aput-object v9, v4, v8

    .line 213
    .local v4, "pollFds":[Landroid/system/StructPollfd;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    iput-object p0, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 214
    const/4 v8, 0x0

    aget-object v8, v4, v8

    sget v9, Landroid/system/OsConstants;->POLLOUT:I

    int-to-short v9, v9

    iput-short v9, v8, Landroid/system/StructPollfd;->events:S

    .line 215
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4, p4}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v5

    .line 216
    .local v5, "rc":I
    if-nez v5, :cond_23

    .line 229
    .end local v4    # "pollFds":[Landroid/system/StructPollfd;
    .end local v5    # "rc":I
    :cond_22
    :goto_22
    return v6

    .line 219
    .restart local v4    # "pollFds":[Landroid/system/StructPollfd;
    .restart local v5    # "rc":I
    :cond_23
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v10, Landroid/system/OsConstants;->SO_ERROR:I

    invoke-interface {v8, p0, v9, v10}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    .line 220
    .local v1, "connectError":I
    if-nez v1, :cond_31

    move v6, v7

    .line 221
    goto :goto_22

    .line 223
    :cond_31
    new-instance v7, Landroid/system/ErrnoException;

    const-string v8, "isConnected"

    invoke-direct {v7, v8, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_39
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_39} :catch_39

    .line 224
    .end local v1    # "connectError":I
    .end local v4    # "pollFds":[Landroid/system/StructPollfd;
    .end local v5    # "rc":I
    :catch_39
    move-exception v3

    .line 225
    .local v3, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v7

    if-nez v7, :cond_48

    .line 226
    new-instance v6, Ljava/net/SocketException;

    const-string v7, "Socket closed"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 228
    :cond_48
    iget v7, v3, Landroid/system/ErrnoException;->errno:I

    sget v8, Landroid/system/OsConstants;->EINTR:I

    if-eq v7, v8, :cond_22

    .line 231
    move-object v0, v3

    .line 234
    .local v0, "cause":Landroid/system/ErrnoException;
    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "detail":Ljava/lang/String;
    iget v6, v0, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->ETIMEDOUT:I

    if-ne v6, v7, :cond_5f

    .line 236
    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6, v2, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 238
    :cond_5f
    new-instance v6, Ljava/net/ConnectException;

    invoke-direct {v6, v2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I
    .registers 5
    .param p0, "isRead"    # Z
    .param p1, "isConnected"    # Z
    .param p2, "errnoException"    # Landroid/system/ErrnoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 588
    if-eqz p0, :cond_f

    .line 589
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_a

    .line 590
    const/4 v0, 0x0

    return v0

    .line 592
    :cond_a
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0

    .line 595
    :cond_f
    if-eqz p1, :cond_1f

    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_1f

    .line 596
    new-instance v0, Ljava/net/PortUnreachableException;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 597
    :cond_1f
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_2b

    .line 598
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 600
    :cond_2b
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method private static maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I
    .registers 5
    .param p0, "isDatagram"    # Z
    .param p1, "errnoException"    # Landroid/system/ErrnoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 535
    if-eqz p0, :cond_10

    .line 536
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNRESET:I

    if-eq v0, v1, :cond_f

    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_16

    .line 543
    :cond_f
    return v2

    .line 540
    :cond_10
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_f

    .line 546
    :cond_16
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public static open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 438
    const/4 v2, 0x0

    .line 441
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    sget v4, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v4, p1

    sget v5, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v4, v5, :cond_51

    const/4 v3, 0x0

    .line 442
    .local v3, "mode":I
    :goto_9
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, v3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 445
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v4

    iget v4, v4, Landroid/system/StructStat;->st_mode:I

    invoke-static {v4}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 446
    new-instance v4, Landroid/system/ErrnoException;

    const-string v5, "open"

    sget v6, Landroid/system/OsConstants;->EISDIR:I

    invoke-direct {v4, v5, v6}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_27} :catch_27

    .line 449
    .end local v3    # "mode":I
    :catch_27
    move-exception v0

    .line 451
    .local v0, "errnoException":Landroid/system/ErrnoException;
    if-eqz v2, :cond_2d

    .line 452
    :try_start_2a
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_54

    .line 456
    :cond_2d
    :goto_2d
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 458
    throw v1

    .line 441
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :cond_51
    const/16 v3, 0x180

    goto :goto_9

    .line 454
    .restart local v0    # "errnoException":Landroid/system/ErrnoException;
    :catch_54
    move-exception v4

    goto :goto_2d

    .line 448
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .restart local v3    # "mode":I
    :cond_56
    return-object v2
.end method

.method private static postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    .registers 6
    .param p0, "isRead"    # Z
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .param p2, "isConnected"    # Z
    .param p3, "srcAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "byteCount"    # I

    .prologue
    .line 574
    if-eqz p0, :cond_6

    if-nez p4, :cond_6

    .line 575
    const/4 p4, -0x1

    .line 584
    .end local p4    # "byteCount":I
    :cond_5
    :goto_5
    return p4

    .line 577
    .restart local p4    # "byteCount":I
    :cond_6
    if-eqz p1, :cond_5

    .line 578
    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setReceivedLength(I)V

    .line 579
    if-nez p2, :cond_5

    .line 580
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 581
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_5
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 467
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 468
    if-nez p3, :cond_8

    .line 480
    :cond_7
    :goto_7
    return v1

    .line 472
    :cond_8
    :try_start_8
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_d} :catch_12

    move-result v1

    .line 473
    .local v1, "readCount":I
    if-nez v1, :cond_7

    .line 474
    const/4 v1, -0x1

    goto :goto_7

    .line 477
    .end local v1    # "readCount":I
    :catch_12
    move-exception v0

    .line 478
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v2, v3, :cond_7

    .line 482
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    .registers 10
    .param p0, "isRead"    # Z
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "packet"    # Ljava/net/DatagramPacket;
    .param p5, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    if-eqz p4, :cond_14

    if-nez p5, :cond_14

    :try_start_4
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    .line 565
    .local v2, "srcAddress":Ljava/net/InetSocketAddress;
    :goto_9
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p1, p2, p3, v2}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v1

    .line 566
    .local v1, "result":I
    invoke-static {p0, p4, p5, v2, v1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_12} :catch_16

    move-result v1

    .line 570
    .end local v2    # "srcAddress":Ljava/net/InetSocketAddress;
    :goto_13
    return v1

    .line 564
    .end local v1    # "result":I
    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 567
    :catch_16
    move-exception v0

    .line 568
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-static {p0, p5, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_13
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I
    .registers 19
    .param p0, "isRead"    # Z
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "packet"    # Ljava/net/DatagramPacket;
    .param p7, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    if-eqz p6, :cond_1e

    if-nez p7, :cond_1e

    :try_start_4
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8}, Ljava/net/InetSocketAddress;-><init>()V

    .line 553
    .local v8, "srcAddress":Ljava/net/InetSocketAddress;
    :goto_9
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v10

    .line 554
    .local v10, "result":I
    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-static {p0, v0, v1, v8, v10}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_1c} :catch_20

    move-result v10

    .line 558
    .end local v8    # "srcAddress":Ljava/net/InetSocketAddress;
    :goto_1d
    return v10

    .line 552
    .end local v10    # "result":I
    :cond_1e
    const/4 v8, 0x0

    goto :goto_9

    .line 555
    :catch_20
    move-exception v9

    .line 556
    .local v9, "errnoException":Landroid/system/ErrnoException;
    move/from16 v0, p7

    invoke-static {p0, v0, v9}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    move-result v10

    .restart local v10    # "result":I
    goto :goto_1d
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .registers 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # I
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 521
    if-eqz p3, :cond_d

    const/4 v7, 0x1

    .line 522
    .local v7, "isDatagram":Z
    :goto_4
    if-nez v7, :cond_f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_f

    .line 531
    :goto_c
    return v8

    .end local v7    # "isDatagram":Z
    :cond_d
    move v7, v8

    .line 521
    goto :goto_4

    .line 527
    .restart local v7    # "isDatagram":Z
    :cond_f
    :try_start_f
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_19
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_19} :catch_1b

    move-result v8

    .local v8, "result":I
    goto :goto_c

    .line 528
    .end local v8    # "result":I
    :catch_1b
    move-exception v6

    .line 529
    .local v6, "errnoException":Landroid/system/ErrnoException;
    invoke-static {v7, v6}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    move-result v8

    .restart local v8    # "result":I
    goto :goto_c
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .registers 18
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flags"    # I
    .param p5, "inetAddress"    # Ljava/net/InetAddress;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    if-eqz p5, :cond_9

    const/4 v9, 0x1

    .line 508
    .local v9, "isDatagram":Z
    :goto_3
    if-nez v9, :cond_b

    if-gtz p3, :cond_b

    .line 509
    const/4 v10, 0x0

    .line 517
    :goto_8
    return v10

    .line 507
    .end local v9    # "isDatagram":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 513
    .restart local v9    # "isDatagram":Z
    :cond_b
    :try_start_b
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_19
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_19} :catch_1b

    move-result v10

    .local v10, "result":I
    goto :goto_8

    .line 514
    .end local v10    # "result":I
    :catch_1b
    move-exception v8

    .line 515
    .local v8, "errnoException":Landroid/system/ErrnoException;
    invoke-static {v9, v8}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    move-result v10

    .restart local v10    # "result":I
    goto :goto_8
.end method

.method public static setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/io/IoBridge;->setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 327
    return-void

    .line 324
    :catch_4
    move-exception v0

    .line 325
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 16
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 330
    sparse-switch p1, :sswitch_data_1ac

    .line 411
    new-instance v9, Ljava/net/SocketException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown socket option: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 332
    :sswitch_1c
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "Use IP_MULTICAST_IF2 on Android"

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 335
    :sswitch_24
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    .line 336
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 408
    :goto_43
    return-void

    .line 340
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_44
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_LOOP:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v9

    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 341
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_43

    .line 346
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_6c
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_TTL:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 347
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_43

    .line 350
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_8c
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v12, Landroid/system/OsConstants;->IP_TOS:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 351
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v11, Landroid/system/OsConstants;->IPV6_TCLASS:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_43

    .line 354
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_ac
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_BROADCAST:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_43

    .line 357
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_c0
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 360
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_d5
    const/4 v5, 0x0

    .line 361
    .local v5, "on":Z
    const/4 v7, 0x0

    .line 362
    .local v7, "seconds":I
    instance-of v9, p2, Ljava/lang/Integer;

    if-eqz v9, :cond_e9

    .line 363
    const/4 v5, 0x1

    .line 364
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const v10, 0xffff

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 366
    :cond_e9
    new-instance v3, Landroid/system/StructLinger;

    invoke-static {v5}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v9

    invoke-direct {v3, v9, v7}, Landroid/system/StructLinger;-><init>(II)V

    .line 367
    .local v3, "linger":Landroid/system/StructLinger;
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-interface {v9, p0, v10, v11, v3}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    goto/16 :goto_43

    .line 370
    .end local v3    # "linger":Landroid/system/StructLinger;
    .end local v5    # "on":Z
    .end local v7    # "seconds":I
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_fd
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_OOBINLINE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 373
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_112
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVBUF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 376
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_123
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_REUSEADDR:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 379
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_138
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_SNDBUF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 382
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_149
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 383
    .local v4, "millis":I
    int-to-long v10, v4

    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v8

    .line 384
    .local v8, "tv":Landroid/system/StructTimeval;
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    goto/16 :goto_43

    .line 387
    .end local v4    # "millis":I
    .end local v8    # "tv":Landroid/system/StructTimeval;
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_15f
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v11, Landroid/system/OsConstants;->TCP_NODELAY:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v12

    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_174
    move-object v0, p2

    .line 392
    check-cast v0, Landroid/system/StructGroupReq;

    .line 393
    .local v0, "groupReq":Landroid/system/StructGroupReq;
    iget-object v9, v0, Landroid/system/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_18c

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    .line 394
    .local v2, "level":I
    :goto_17f
    const/16 v9, 0x13

    if-ne p1, v9, :cond_18f

    sget v6, Landroid/system/OsConstants;->MCAST_JOIN_GROUP:I

    .line 395
    .local v6, "op":I
    :goto_185
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p0, v2, v6, v0}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    goto/16 :goto_43

    .line 393
    .end local v2    # "level":I
    .end local v6    # "op":I
    :cond_18c
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    goto :goto_17f

    .line 394
    .restart local v2    # "level":I
    :cond_18f
    sget v6, Landroid/system/OsConstants;->MCAST_LEAVE_GROUP:I

    goto :goto_185

    .end local v0    # "groupReq":Landroid/system/StructGroupReq;
    .end local v2    # "level":I
    :sswitch_192
    move-object v1, p2

    .line 403
    check-cast v1, Landroid/system/StructGroupSourceReq;

    .line 404
    .local v1, "groupSourceReq":Landroid/system/StructGroupSourceReq;
    iget-object v9, v1, Landroid/system/StructGroupSourceReq;->gsr_group:Ljava/net/InetAddress;

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_1a8

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    .line 406
    .restart local v2    # "level":I
    :goto_19d
    invoke-static {p1}, Llibcore/io/IoBridge;->getGroupSourceReqOp(I)I

    move-result v6

    .line 407
    .restart local v6    # "op":I
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p0, v2, v6, v1}, Llibcore/io/Os;->setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V

    goto/16 :goto_43

    .line 404
    .end local v2    # "level":I
    .end local v6    # "op":I
    :cond_1a8
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    goto :goto_19d

    .line 330
    nop

    :sswitch_data_1ac
    .sparse-switch
        0x1 -> :sswitch_15f
        0x3 -> :sswitch_8c
        0x4 -> :sswitch_123
        0x8 -> :sswitch_c0
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_6c
        0x12 -> :sswitch_44
        0x13 -> :sswitch_174
        0x14 -> :sswitch_174
        0x15 -> :sswitch_192
        0x16 -> :sswitch_192
        0x17 -> :sswitch_192
        0x18 -> :sswitch_192
        0x1f -> :sswitch_24
        0x20 -> :sswitch_ac
        0x80 -> :sswitch_d5
        0x1001 -> :sswitch_138
        0x1002 -> :sswitch_112
        0x1003 -> :sswitch_fd
        0x1006 -> :sswitch_149
    .end sparse-switch
.end method

.method public static socket(Z)Ljava/io/FileDescriptor;
    .registers 7
    .param p0, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 608
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->AF_INET6:I

    if-eqz p0, :cond_1a

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    :goto_8
    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 617
    .local v1, "fd":Ljava/io/FileDescriptor;
    if-nez p0, :cond_19

    .line 618
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v4, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    const/4 v5, 0x1

    invoke-interface {v2, v1, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 621
    :cond_19
    return-object v1

    .line 608
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :cond_1a
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_8

    .line 622
    :catch_1d
    move-exception v0

    .line 623
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 492
    if-nez p3, :cond_7

    .line 504
    :cond_6
    return-void

    .line 496
    :cond_7
    :goto_7
    if-lez p3, :cond_6

    .line 497
    :try_start_9
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_e} :catch_12

    move-result v0

    .line 498
    .local v0, "bytesWritten":I
    sub-int/2addr p3, v0

    .line 499
    add-int/2addr p2, v0

    .line 500
    goto :goto_7

    .line 501
    .end local v0    # "bytesWritten":I
    :catch_12
    move-exception v1

    .line 502
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method
