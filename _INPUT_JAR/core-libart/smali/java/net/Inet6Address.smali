.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# static fields
.field public static final ANY:Ljava/net/InetAddress;

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field private ifname:Ljava/lang/String;

.field private scope_id:I

.field private scope_id_set:Z

.field private scope_ifname_set:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 38
    new-instance v0, Ljava/net/Inet6Address;

    new-array v1, v3, [B

    fill-array-data v1, :array_60

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    .line 44
    new-instance v0, Ljava/net/Inet6Address;

    new-array v1, v3, [B

    fill-array-data v1, :array_6c

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2, v4}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 245
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "ipaddress"

    const-class v3, [B

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_id"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_id_set"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_ifname_set"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "ifname"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/Inet6Address;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    .line 38
    nop

    :array_60
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 44
    :array_6c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>([BLjava/lang/String;I)V
    .registers 5
    .param p1, "ipaddress"    # [B
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "scope_id"    # I

    .prologue
    .line 66
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    invoke-direct {p0, v0, p1, p2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    .line 67
    iput p3, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 68
    if-eqz p3, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 69
    return-void

    .line 68
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private compareLocalType(Ljava/net/Inet6Address;)Z
    .registers 4
    .param p1, "ia"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 169
    :cond_d
    :goto_d
    return v0

    .line 163
    :cond_e
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_d

    .line 166
    :cond_1a
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 169
    :cond_26
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "scope_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p1, :cond_7

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_24

    .line 88
    :cond_7
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an IPv6 address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_24
    if-gez p2, :cond_27

    .line 91
    const/4 p2, 0x0

    .line 94
    :cond_27
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p1, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .registers 11
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 118
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    .line 121
    .local v0, "address":Ljava/net/Inet6Address;
    if-nez p2, :cond_9

    .line 147
    :cond_8
    return-object v0

    .line 127
    :cond_9
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 128
    .local v1, "addressList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 129
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 130
    .local v2, "ia":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_d

    move-object v4, v2

    .line 131
    check-cast v4, Ljava/net/Inet6Address;

    .line 132
    .local v4, "v6ia":Ljava/net/Inet6Address;
    invoke-direct {v4, v0}, Ljava/net/Inet6Address;->compareLocalType(Ljava/net/Inet6Address;)Z

    move-result v3

    .line 133
    .local v3, "isSameType":Z
    if-eqz v3, :cond_d

    .line 134
    iput-boolean v7, v0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 135
    iget v5, v4, Ljava/net/Inet6Address;->scope_id:I

    iput v5, v0, Ljava/net/Inet6Address;->scope_id:I

    .line 136
    iput-boolean v7, v0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 137
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 144
    .end local v2    # "ia":Ljava/net/InetAddress;
    .end local v3    # "isSameType":Z
    .end local v4    # "v6ia":Ljava/net/Inet6Address;
    :cond_39
    iget-boolean v5, v0, Ljava/net/Inet6Address;->scope_id_set:Z

    if-nez v5, :cond_8

    .line 145
    new-instance v5, Ljava/net/UnknownHostException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scope id not found for address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 270
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "ipaddress"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 271
    const-string v1, "scope_id"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 272
    const-string v1, "scope_id_set"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 273
    const-string v1, "ifname"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 274
    const-string v1, "scope_ifname_set"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 275
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 255
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    if-nez v1, :cond_2e

    .line 256
    const-string v1, "ipaddress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    :goto_e
    const-string v1, "scope_id"

    iget v2, p0, Ljava/net/Inet6Address;->scope_id:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 262
    const-string v1, "scope_id_set"

    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 263
    const-string v1, "scope_ifname_set"

    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 264
    const-string v1, "ifname"

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 266
    return-void

    .line 258
    :cond_2e
    const-string v1, "ipaddress"

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e
.end method


# virtual methods
.method public getScopeId()I
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 239
    :try_start_1
    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v1

    .line 241
    :cond_f
    :goto_f
    return-object v1

    .line 240
    :catch_10
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/net/SocketException;
    goto :goto_f
.end method

.method public isAnyLocalAddress()Z
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    iget-object v1, v1, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public isIPv4CompatibleAddress()Z
    .registers 3

    .prologue
    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_10

    .line 183
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_d

    .line 184
    const/4 v1, 0x0

    .line 187
    :goto_c
    return v1

    .line 182
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public isLinkLocalAddress()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public isLoopbackAddress()Z
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    iget-object v1, v1, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public isMCGlobal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0xe

    if-ne v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public isMCLinkLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_16

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method public isMCNodeLocal()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 207
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_15

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v0, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method public isMCOrgLocal()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

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

    .line 215
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_16

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x5

    if-ne v2, v3, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method public isMulticastAddress()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isSiteLocalAddress()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_21
    return-object v0

    .line 281
    :cond_22
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    if-eqz v0, :cond_44

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/Inet6Address;->scope_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 284
    :cond_44
    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method
