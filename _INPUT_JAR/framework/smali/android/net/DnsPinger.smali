.class public final Landroid/net/DnsPinger;
.super Landroid/os/Handler;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsPinger$1;,
        Landroid/net/DnsPinger$DnsResult;,
        Landroid/net/DnsPinger$DnsArg;,
        Landroid/net/DnsPinger$ActivePing;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x50003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x50002

.field private static final ACTION_PING_DNS:I = 0x50001

.field private static final ACTION_PING_DNS_SPECIFIC:I = 0x50004

.field private static final BASE:I = 0x50000

.field public static final CACHED_RESULT:I = 0x1

.field private static final DBG:Z

.field public static final DNS_PING_RESULT:I = 0x50000

.field public static final DNS_PING_RESULT_SPECIFIC:I = 0x50005

.field private static final DNS_PORT:I = 0x35

.field private static final DNS_RESPONSE_BUFFER_SIZE:I = 0x200

.field public static final NO_INTERNET:I = -0x3

.field public static final PRIVATE_IP_ADDRESS:I = 0x2

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final REQUESTED_URL_ALREADY_IP_ADDRESS:I = 0x3

.field private static final SMARTCM_DBG:Z = false

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field DnsResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/DnsPinger$DnsResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/DnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionType:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsQuery:[B

.field private mEventCounter:I

.field mLp:Landroid/net/LinkProperties;

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    .line 70
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TAG"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "target"    # Landroid/os/Handler;
    .param p5, "connectionType"    # I

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    iput-object v1, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    .line 508
    iput-object v1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 154
    iput-object p2, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    .line 156
    iput-object p4, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    .line 157
    iput p5, p0, Landroid/net/DnsPinger;->mConnectionType:I

    .line 158
    invoke-static {p5}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid connectionType in constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 163
    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/net/DnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DnsPinger;->mEventCounter:I

    .line 165
    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_7

    .line 519
    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 525
    :goto_6
    return-object v0

    .line 521
    :cond_7
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_17

    .line 522
    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 525
    :cond_17
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    goto :goto_6
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .registers 5

    .prologue
    .line 530
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "dns":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_21

    .line 533
    :cond_14
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_21
    :try_start_21
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_24} :catch_26

    move-result-object v2

    .line 540
    :goto_25
    return-object v2

    .line 538
    :catch_26
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "getDefaultDns::malformed default dns address"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 540
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private isDnsResponsePrivateAddress(Ljava/lang/String;)Z
    .registers 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 749
    iget-object v7, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 750
    .local v5, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    if-eqz v5, :cond_be

    .line 751
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 752
    .local v6, "size":I
    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_be

    .line 753
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    aget-byte v7, v7, v9

    and-int/lit16 v1, v7, 0xff

    .line 754
    .local v1, "ipByte1st":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    aget-byte v7, v7, v8

    and-int/lit16 v2, v7, 0xff

    .line 755
    .local v2, "ipByte2nd":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v10, 0x2

    aget-byte v7, v7, v10

    and-int/lit16 v3, v7, 0xff

    .line 756
    .local v3, "ipByte3rd":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v10, 0x3

    aget-byte v7, v7, v10

    and-int/lit16 v4, v7, 0xff

    .line 757
    .local v4, "ipByte4th":I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_7c

    const/16 v7, 0xc0

    if-ne v1, v7, :cond_62

    const/16 v7, 0xa8

    if-eq v2, v7, :cond_7c

    :cond_62
    const/16 v7, 0xac

    if-ne v1, v7, :cond_6e

    const/16 v7, 0x10

    if-lt v2, v7, :cond_6e

    const/16 v7, 0x1f

    if-le v2, v7, :cond_7c

    :cond_6e
    if-ne v1, v8, :cond_ba

    const/16 v7, 0x21

    if-ne v2, v7, :cond_ba

    const/16 v7, 0xcb

    if-ne v3, v7, :cond_ba

    const/16 v7, 0x27

    if-ne v4, v7, :cond_ba

    .line 761
    :cond_7c
    sget-boolean v7, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v7, :cond_b8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " - Dns Response with Private Network IP Address !!! - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_b8
    move v7, v8

    .line 767
    .end local v0    # "i":I
    .end local v1    # "ipByte1st":I
    .end local v2    # "ipByte2nd":I
    .end local v3    # "ipByte3rd":I
    .end local v4    # "ipByte4th":I
    .end local v6    # "size":I
    :goto_b9
    return v7

    .line 752
    .restart local v0    # "i":I
    .restart local v1    # "ipByte1st":I
    .restart local v2    # "ipByte2nd":I
    .restart local v3    # "ipByte3rd":I
    .restart local v4    # "ipByte4th":I
    .restart local v6    # "size":I
    :cond_ba
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_12

    .end local v0    # "i":I
    .end local v1    # "ipByte1st":I
    .end local v2    # "ipByte2nd":I
    .end local v3    # "ipByte3rd":I
    .end local v4    # "ipByte4th":I
    .end local v6    # "size":I
    :cond_be
    move v7, v9

    .line 767
    goto :goto_b9
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 775
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void
.end method

.method private sendResponse(III)V
    .registers 7
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I

    .prologue
    .line 480
    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_2e

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 485
    :cond_2e
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    .line 486
    iget-object v1, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v2, 0x50005

    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, v2, p1, p3, v0}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    :goto_42
    return-void

    .line 488
    :cond_43
    iget-object v0, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const/high16 v1, 0x50000

    invoke-virtual {p0, v1, p1, p3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_42
.end method

.method private sendResponse(IIILjava/lang/String;II)V
    .registers 13
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "delay"    # I

    .prologue
    .line 493
    sget-boolean v1, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v1, :cond_4e

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responding to packet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " externalId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and val "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPECIFIC DNS PING: url - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseVal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 501
    :cond_4e
    :try_start_4e
    iget-object v1, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DnsPinger$DnsResult;

    iget-object v0, v1, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 502
    .local v0, "resultIp":Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v2, 0x50005

    invoke-virtual {p0, v2, p1, p3, v0}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, p6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6b} :catch_6c

    .line 505
    .end local v0    # "resultIp":Ljava/net/InetAddress;
    :goto_6b
    return-void

    .line 503
    :catch_6c
    move-exception v1

    goto :goto_6b
.end method

.method private updateDnsDB([BILjava/lang/String;)V
    .registers 33
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 622
    .local v6, "currTime":J
    const/4 v4, 0x0

    .line 624
    .local v4, "currPos":I
    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v18, v25, v26

    .line 627
    .local v18, "packetId":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v8, v25, v26

    .line 630
    .local v8, "flag":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v17, v25, v26

    .line 633
    .local v17, "numOfQuestion":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v15, v25, v26

    .line 636
    .local v15, "numOfAnswerRR":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v16, v25, v26

    .line 639
    .local v16, "numOfAthorityRR":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v14, v25, v26

    .line 642
    .local v14, "numOfAdditionalRR":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v24, "url":Ljava/lang/StringBuilder;
    :goto_98
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    if-eqz v25, :cond_cf

    .line 644
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_9f
    aget-byte v25, p1, v4

    move/from16 v0, v25

    if-gt v9, v0, :cond_c5

    .line 645
    const-string v25, "%c"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int v28, v4, v9

    aget-byte v28, p1, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    add-int/lit8 v9, v9, 0x1

    goto :goto_9f

    .line 647
    :cond_c5
    const/16 v25, 0x2e

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    aget-byte v25, p1, v4

    add-int v4, v4, v25

    goto :goto_98

    .line 650
    .end local v9    # "i":I
    :cond_cf
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e6

    .line 658
    :cond_e6
    add-int/lit8 v4, v4, 0x4

    .line 664
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v13, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .local v5, "dbgShowResult":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f3
    if-ge v9, v15, :cond_187

    add-int/lit8 v25, v4, 0xc

    const/16 v26, 0x200

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_187

    .line 670
    add-int/lit8 v4, v4, 0x2

    .line 672
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v23, v25, v26

    .line 675
    .local v23, "rrType":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v19, v25, v26

    .line 678
    .local v19, "rrClass":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x18

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x10

    add-int v25, v25, v26

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    add-int v25, v25, v26

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v22, v25, v26

    .line 681
    .local v22, "rrTtl":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    aget-byte v26, p1, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v21, v25, v26

    .line 683
    .local v21, "rrLength":I
    add-int v25, v4, v21

    const/16 v26, 0x200

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_233

    .line 710
    .end local v19    # "rrClass":I
    .end local v21    # "rrLength":I
    .end local v22    # "rrTtl":I
    .end local v23    # "rrType":I
    :cond_187
    sget-boolean v25, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v25, :cond_1b7

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DNS Result - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 713
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_31f

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_1d4
    sget-boolean v25, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v25, :cond_232

    .line 722
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Hashmap DnsResultMap contains "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " entries, url: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " IPs"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 724
    :cond_232
    return-void

    .line 685
    .restart local v19    # "rrClass":I
    .restart local v21    # "rrLength":I
    .restart local v22    # "rrTtl":I
    .restart local v23    # "rrType":I
    :cond_233
    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_2df

    .line 686
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v10, "ipString":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/16 v25, 0x2e

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/16 v25, 0x2e

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const/16 v25, 0x2e

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 693
    add-int/lit8 v4, v4, 0x1

    aget-byte v25, p1, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    new-instance v12, Landroid/net/DnsPinger$DnsResult;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v25

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/net/DnsPinger$DnsResult;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;J)V

    .line 696
    .local v12, "mDnsResult":Landroid/net/DnsPinger$DnsResult;
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    const-string v25, "["

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v25, "] "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .end local v10    # "ipString":Ljava/lang/StringBuilder;
    .end local v12    # "mDnsResult":Landroid/net/DnsPinger$DnsResult;
    :cond_2db
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_f3

    .line 701
    :cond_2df
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v20, "rrData":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2e5
    move/from16 v0, v21

    if-ge v11, v0, :cond_2db

    .line 703
    const/16 v25, 0x5b

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    const-string v25, "%02X"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v4, v4, 0x1

    aget-byte v28, p1, v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const/16 v25, 0x5d

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e5

    .line 716
    .end local v11    # "j":I
    .end local v19    # "rrClass":I
    .end local v20    # "rrData":Ljava/lang/StringBuilder;
    .end local v21    # "rrLength":I
    .end local v22    # "rrTtl":I
    .end local v23    # "rrType":I
    :cond_31f
    const/4 v9, 0x0

    :goto_320
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_1d4

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v9, v9, 0x1

    goto :goto_320
.end method

.method private updateDnsQuery(Ljava/lang/String;)V
    .registers 15
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x2e

    const/4 v11, 0x5

    const/16 v10, 0xc

    const/4 v9, 0x0

    .line 565
    new-array v1, v10, [B

    fill-array-data v1, :array_5a

    .line 573
    .local v1, "header":[B
    new-array v7, v11, [B

    fill-array-data v7, :array_64

    .line 579
    .local v7, "trailer":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 580
    .local v3, "length":I
    const/4 v0, 0x0

    .line 581
    .local v0, "blockSize":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v4, "mid":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 585
    .local v5, "middle":[B
    move v2, v3

    .local v2, "i":I
    :goto_2f
    if-ltz v2, :cond_3f

    .line 586
    aget-byte v8, v5, v2

    if-ne v8, v12, :cond_3b

    .line 587
    aput-byte v0, v5, v2

    .line 588
    const/4 v0, 0x0

    .line 585
    :goto_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 590
    :cond_3b
    add-int/lit8 v8, v0, 0x1

    int-to-byte v0, v8

    goto :goto_38

    .line 594
    :cond_3f
    add-int/lit8 v8, v3, 0x12

    new-array v6, v8, [B

    .line 595
    .local v6, "query":[B
    invoke-static {v1, v9, v6, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 596
    add-int/lit8 v8, v3, 0x1

    invoke-static {v5, v9, v6, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 597
    add-int/lit8 v8, v3, 0xd

    invoke-static {v7, v9, v6, v8, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 610
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, p0, Landroid/net/DnsPinger;->mDnsQuery:[B

    .line 611
    return-void

    .line 565
    nop

    :array_5a
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 573
    :array_64
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private updateDnsResultMap(Ljava/lang/String;)V
    .registers 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 727
    iget-object v7, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 728
    .local v5, "mDnsResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 729
    .local v0, "currTime":J
    if-eqz v5, :cond_66

    .line 730
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 731
    .local v6, "size":I
    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_66

    .line 732
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    and-int/lit16 v3, v7, 0xff

    .line 733
    .local v3, "ipByte1st":I
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v4, v7, 0xff

    .line 734
    .local v4, "ipByte2nd":I
    const/16 v7, 0xa

    if-eq v3, v7, :cond_50

    const/16 v7, 0xc0

    if-ne v3, v7, :cond_44

    const/16 v7, 0xa8

    if-eq v4, v7, :cond_50

    :cond_44
    const/16 v7, 0xac

    if-ne v3, v7, :cond_56

    const/16 v7, 0x10

    if-lt v4, v7, :cond_56

    const/16 v7, 0x1f

    if-gt v4, v7, :cond_56

    .line 737
    :cond_50
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 731
    :cond_53
    :goto_53
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 738
    :cond_56
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-wide v8, v7, Landroid/net/DnsPinger$DnsResult;->ttl:J

    cmp-long v7, v0, v8

    if-lez v7, :cond_53

    .line 740
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_53

    .line 746
    .end local v2    # "i":I
    .end local v3    # "ipByte1st":I
    .end local v4    # "ipByte2nd":I
    .end local v6    # "size":I
    :cond_66
    return-void
.end method


# virtual methods
.method public cancelPings()V
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 476
    const v0, 0x50003

    invoke-virtual {p0, v0}, Landroid/net/DnsPinger;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 477
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 458
    return-void
.end method

.method public getDnsList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 359
    .local v0, "curLinkProps":Landroid/net/LinkProperties;
    if-nez v0, :cond_27

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurLinkProperties:: LP for type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 370
    :goto_26
    return-object v2

    .line 364
    :cond_27
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 365
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_3b

    .line 366
    :cond_33
    const-string v2, "getDns::LinkProps has null dns - returning default"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    goto :goto_26

    .line 370
    :cond_3b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_26
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_39e

    .line 350
    :cond_7
    :goto_7
    return-void

    .line 172
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/net/DnsPinger$DnsArg;

    .line 173
    .local v14, "dnsArg":Landroid/net/DnsPinger$DnsArg;
    iget v2, v14, Landroid/net/DnsPinger$DnsArg;->seq:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 177
    :try_start_1a
    new-instance v21, Landroid/net/DnsPinger$ActivePing;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$1;)V

    .line 178
    .local v21, "newActivePing":Landroid/net/DnsPinger$ActivePing;
    iget-object v13, v14, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 179
    .local v13, "dnsAddress":Ljava/net/InetAddress;
    iget-object v2, v14, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->updateDnsQuery(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    .line 181
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/net/DnsPinger$ActivePing;->timeout:I

    .line 182
    iget-object v2, v14, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    .line 183
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v0, v21

    iput-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 185
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_54} :catch_118

    .line 189
    :try_start_54
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_67} :catch_130
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_67} :catch_118

    .line 199
    :goto_67
    :try_start_67
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x50001

    if-ne v2, v3, :cond_14c

    .line 200
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v21

    iput-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    .line 205
    :goto_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mDnsQuery:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 206
    .local v11, "buf":[B
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget-short v3, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    .line 207
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iget-short v3, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    .line 210
    new-instance v22, Ljava/net/DatagramPacket;

    array-length v2, v11

    const/16 v3, 0x35

    move-object/from16 v0, v22

    invoke-direct {v0, v11, v2, v13, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 212
    .local v22, "packet":Ljava/net/DatagramPacket;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_e5

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending a ping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/net/DnsPinger$ActivePing;->internalId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with packetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    iget-short v3, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 218
    :cond_e5
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/net/DnsPinger;->mEventCounter:I

    .line 221
    const v2, 0x50002

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_116} :catch_118

    goto/16 :goto_7

    .line 223
    .end local v11    # "buf":[B
    .end local v13    # "dnsAddress":Ljava/net/InetAddress;
    .end local v21    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    .end local v22    # "packet":Ljava/net/DatagramPacket;
    :catch_118
    move-exception v15

    .line 228
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x50001

    if-ne v2, v3, :cond_15d

    .line 229
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270e

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_7

    .line 191
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v13    # "dnsAddress":Ljava/net/InetAddress;
    .restart local v21    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    :catch_130
    move-exception v15

    .line 192
    .local v15, "e":Ljava/lang/Exception;
    :try_start_131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDnsPing::Error binding to socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    goto/16 :goto_67

    .line 202
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_14c
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v21

    iput-short v2, v0, Landroid/net/DnsPinger$ActivePing;->packetId:S
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_15b} :catch_118

    goto/16 :goto_7d

    .line 231
    .end local v13    # "dnsAddress":Ljava/net/InetAddress;
    .end local v21    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    .local v15, "e":Ljava/io/IOException;
    :cond_15d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270f

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_7

    .line 236
    .end local v14    # "dnsArg":Landroid/net/DnsPinger$DnsArg;
    .end local v15    # "e":Ljava/io/IOException;
    :pswitch_16b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/DnsPinger;->mEventCounter:I

    if-ne v2, v3, :cond_7

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_17d
    :goto_17d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/DnsPinger$ActivePing;

    .line 246
    .local v12, "curPing":Landroid/net/DnsPinger$ActivePing;
    const/16 v2, 0x200

    :try_start_18b
    new-array v0, v2, [B

    move-object/from16 v24, v0

    .line 247
    .local v24, "responseBuf":[B
    new-instance v23, Ljava/net/DatagramPacket;

    const/16 v2, 0x200

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 253
    .local v23, "replyPacket":Ljava/net/DatagramPacket;
    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 256
    const/16 v18, 0x0

    .line 257
    .local v18, "isUsableResponse":Z
    const/4 v2, 0x0

    aget-byte v2, v24, v2

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_1fd

    const/4 v2, 0x1

    aget-byte v2, v24, v2

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    if-ne v2, v3, :cond_1fd

    .line 259
    const/16 v18, 0x1

    .line 273
    :cond_1b7
    :goto_1b7
    if-eqz v18, :cond_283

    .line 284
    const/4 v2, 0x3

    aget-byte v2, v24, v2

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_249

    const/4 v2, 0x6

    aget-byte v2, v24, v2

    if-nez v2, :cond_1ca

    const/4 v2, 0x7

    aget-byte v2, v24, v2

    if-eqz v2, :cond_249

    .line 287
    :cond_1ca
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v12, Landroid/net/DnsPinger$ActivePing;->start:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    .line 289
    invoke-virtual/range {v24 .. v24}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual/range {v23 .. v23}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iget-object v4, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->updateDnsDB([BILjava/lang/String;)V

    .line 290
    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17d

    .line 291
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_17d

    .line 303
    .end local v18    # "isUsableResponse":Z
    .end local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v24    # "responseBuf":[B
    :catch_1fb
    move-exception v2

    goto :goto_17d

    .line 261
    .restart local v18    # "isUsableResponse":Z
    .restart local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .restart local v24    # "responseBuf":[B
    :cond_1fd
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_209

    const-string/jumbo v2, "response ID doesn\'t match with query ID."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 262
    :cond_209
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_211
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/DnsPinger$ActivePing;

    .line 263
    .local v10, "activePingForIdCheck":Landroid/net/DnsPinger$ActivePing;
    const/4 v2, 0x0

    aget-byte v2, v24, v2

    iget-short v3, v10, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_211

    const/4 v2, 0x1

    aget-byte v2, v24, v2

    iget-short v3, v10, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v3, v3

    if-ne v2, v3, :cond_211

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    if-eqz v2, :cond_211

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    iget-object v3, v10, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 266
    const-string/jumbo v2, "response ID didn\'t match, but DNS response is usable."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 267
    const/16 v18, 0x1

    .line 268
    goto/16 :goto_1b7

    .line 293
    .end local v10    # "activePingForIdCheck":Landroid/net/DnsPinger$ActivePing;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_249
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_254

    const-string v2, "Reply code is not 0(No Error) or Answer Record Count is 0"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 294
    :cond_254
    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;
    :try_end_25b
    .catch Ljava/net/SocketTimeoutException; {:try_start_18b .. :try_end_25b} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_25b} :catch_25d

    goto/16 :goto_17d

    .line 305
    .end local v18    # "isUsableResponse":Z
    .end local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v24    # "responseBuf":[B
    :catch_25d
    move-exception v15

    .line 306
    .local v15, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_27a

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DnsPinger.pingDns got socket exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 309
    :cond_27a
    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto/16 :goto_17d

    .line 301
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v18    # "isUsableResponse":Z
    .restart local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .restart local v24    # "responseBuf":[B
    :cond_283
    :try_start_283
    const-string/jumbo v2, "response ID didn\'t match, ignoring packet"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_28b
    .catch Ljava/net/SocketTimeoutException; {:try_start_283 .. :try_end_28b} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_283 .. :try_end_28b} :catch_25d

    goto/16 :goto_17d

    .line 312
    .end local v12    # "curPing":Landroid/net/DnsPinger$ActivePing;
    .end local v18    # "isUsableResponse":Z
    .end local v23    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v24    # "responseBuf":[B
    :cond_28d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 313
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :cond_295
    :goto_295
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_356

    .line 314
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/DnsPinger$ActivePing;

    .line 315
    .restart local v12    # "curPing":Landroid/net/DnsPinger$ActivePing;
    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    if-eqz v2, :cond_334

    .line 316
    iget-short v2, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_324

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_324

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v3, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 318
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    if-eqz v20, :cond_2f9

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2f9

    .line 320
    :try_start_2c8
    iget v3, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v4, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    sget-object v7, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v8, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;II)V
    :try_end_2f0
    .catch Ljava/lang/Exception; {:try_start_2c8 .. :try_end_2f0} :catch_39a

    .line 330
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :goto_2f0
    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 331
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto :goto_295

    .line 324
    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :cond_2f9
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_319

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are no results about "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_319
    iget v2, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto :goto_2f0

    .line 328
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :cond_324
    iget v2, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v4, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto :goto_2f0

    .line 332
    :cond_334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v12, Landroid/net/DnsPinger$ActivePing;->start:J

    iget v6, v12, Landroid/net/DnsPinger$ActivePing;->timeout:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_295

    .line 334
    iget v2, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/net/DnsPinger;->sendResponse(III)V

    .line 335
    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 336
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_295

    .line 339
    .end local v12    # "curPing":Landroid/net/DnsPinger$ActivePing;
    :cond_356
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 340
    const v2, 0x50002

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/DnsPinger;->mEventCounter:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 345
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :pswitch_377
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_37f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_391

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$ActivePing;

    .line 346
    .local v9, "activePing":Landroid/net/DnsPinger$ActivePing;
    iget-object v2, v9, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_37f

    .line 347
    .end local v9    # "activePing":Landroid/net/DnsPinger$ActivePing;
    :cond_391
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_7

    .line 321
    .end local v16    # "i$":Ljava/util/Iterator;
    .restart local v12    # "curPing":Landroid/net/DnsPinger$ActivePing;
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/DnsPinger$DnsResult;>;"
    :catch_39a
    move-exception v2

    goto/16 :goto_2f0

    .line 169
    nop

    :pswitch_data_39e
    .packed-switch 0x50001
        :pswitch_8
        :pswitch_16b
        :pswitch_377
        :pswitch_8
    .end packed-switch
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .registers 9
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I

    .prologue
    .line 381
    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 382
    .local v0, "id":I
    const-string/jumbo v1, "www.google.com"

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    .line 383
    const v1, 0x50001

    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v3, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string/jumbo v4, "www.google.com"

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 385
    return v0
.end method

.method public pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I
    .registers 19
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 416
    sget-object v2, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 419
    .local v3, "id":I
    :try_start_6
    invoke-static/range {p4 .. p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 420
    .local v9, "addr":Ljava/net/InetAddress;
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL is already an IP address. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 421
    :cond_26
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v4, 0x50005

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v3, v5, v9}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v12, 0x32

    invoke-virtual {v2, v4, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_35} :catch_36

    .line 447
    .end local v9    # "addr":Ljava/net/InetAddress;
    :goto_35
    return v3

    .line 424
    :catch_36
    move-exception v2

    .line 427
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7a

    .line 428
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_5d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Result Hashmap - NO HIT!!! SENDING DNS QUERY!  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 429
    :cond_5d
    const v2, 0x50004

    new-instance v4, Landroid/net/DnsPinger$DnsArg;

    iget-object v5, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object/from16 v0, p4

    invoke-direct {v4, p0, p1, v5, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_35

    .line 432
    :cond_7a
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    .line 433
    const/4 v10, 0x0

    .line 434
    .local v10, "numOfResults":I
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 435
    iget-object v2, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    .line 437
    :cond_98
    if-nez v10, :cond_de

    .line 438
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Result Hashmap - HIT!!! BUT NO RESULTS   ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 439
    :cond_c0
    const v2, 0x50004

    new-instance v4, Landroid/net/DnsPinger$DnsArg;

    iget-object v5, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move-object/from16 v0, p4

    invoke-direct {v4, p0, p1, v5, v0}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_35

    .line 442
    :cond_de
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_104

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Result Hashmap - HIT!!! USE PREVIOUS RESULT   ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 443
    :cond_104
    sget-object v2, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v2, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 444
    .local v7, "index":I
    const/16 v4, -0x2b67

    const/4 v5, 0x1

    const/16 v8, 0x32

    move-object v2, p0

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;II)V

    goto/16 :goto_35
.end method

.method public pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I
    .registers 9
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 399
    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 400
    .local v0, "id":I
    const v1, 0x50004

    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v3, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, p1, v3, p4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 402
    return v0
.end method

.method public setCurrentLinkProperties(Landroid/net/LinkProperties;)V
    .registers 5
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 510
    if-eqz p1, :cond_1b

    .line 511
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentLinkProperties: lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1b
    iput-object p1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    .line 514
    return-void
.end method
