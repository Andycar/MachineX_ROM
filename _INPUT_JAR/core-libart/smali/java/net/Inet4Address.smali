.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field public static final ALL:Ljava/net/InetAddress;

.field public static final ANY:Ljava/net/InetAddress;

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 35
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_2a

    invoke-direct {v0, v1, v3}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 41
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_30

    invoke-direct {v0, v1, v3}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .line 48
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_36

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    return-void

    .line 35
    nop

    :array_2a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 41
    :array_30
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 48
    :array_36
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>([BLjava/lang/String;)V
    .registers 4
    .param p1, "ipaddress"    # [B
    .param p2, "hostName"    # Ljava/lang/String;

    .prologue
    .line 52
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    invoke-direct {p0, v0, p1, p2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    .line 53
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/net/Inet4Address;

    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    iget-object v2, p0, Ljava/net/Inet4Address;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isAnyLocalAddress()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1d

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_1d

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    if-nez v2, :cond_1d

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    if-nez v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method

.method public isLinkLocalAddress()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public isLoopbackAddress()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isMCGlobal()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_8

    .line 94
    :cond_7
    :goto_7
    return v1

    .line 74
    :cond_8
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v1, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 81
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x8

    const v3, 0xe00001

    if-lt v2, v3, :cond_7

    .line 90
    ushr-int/lit8 v2, v0, 0x18

    const/16 v3, 0xee

    if-gt v2, v3, :cond_7

    .line 94
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public isMCLinkLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_1a

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_1a

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    if-nez v2, :cond_1a

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method public isMCNodeLocal()Z
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xfc

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public isMCSiteLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public isMulticastAddress()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isSiteLocalAddress()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 118
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    .line 125
    :cond_c
    :goto_c
    return v0

    .line 120
    :cond_d
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xac

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_c

    .line 122
    :cond_21
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa8

    if-eq v2, v3, :cond_c

    :cond_35
    move v0, v1

    .line 125
    goto :goto_c
.end method
