.class public final Landroid/net/NetworkCapabilities;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final DEFAULT_CAPABILITIES:J = 0xe000L

.field private static final MAX_NET_CAPABILITY:I = 0x13

.field private static final MAX_TRANSPORT:I = 0x4

.field private static final MIN_NET_CAPABILITY:I = 0x0

.field private static final MIN_TRANSPORT:I = 0x0

.field public static final NET_CAPABILITY_BIP:I = 0x13

.field public static final NET_CAPABILITY_CAS:I = 0x10

.field public static final NET_CAPABILITY_CBS:I = 0x5

.field public static final NET_CAPABILITY_DUN:I = 0x2

.field public static final NET_CAPABILITY_EIMS:I = 0xa

.field public static final NET_CAPABILITY_ENT1:I = 0x11

.field public static final NET_CAPABILITY_FOTA:I = 0x3

.field public static final NET_CAPABILITY_IA:I = 0x7

.field public static final NET_CAPABILITY_IMS:I = 0x4

.field public static final NET_CAPABILITY_INTERNET:I = 0xc

.field public static final NET_CAPABILITY_MMS:I = 0x0

.field public static final NET_CAPABILITY_MMS2:I = 0x12

.field public static final NET_CAPABILITY_NOT_METERED:I = 0xb

.field public static final NET_CAPABILITY_NOT_RESTRICTED:I = 0xd

.field public static final NET_CAPABILITY_NOT_VPN:I = 0xf

.field public static final NET_CAPABILITY_RCS:I = 0x8

.field public static final NET_CAPABILITY_SUPL:I = 0x1

.field public static final NET_CAPABILITY_TRUSTED:I = 0xe

.field public static final NET_CAPABILITY_WIFI_P2P:I = 0x6

.field public static final NET_CAPABILITY_XCAP:I = 0x9

.field private static final RESTRICTED_CAPABILITIES:J = 0x7bcL

.field private static final TAG:Ljava/lang/String; = "NetworkCapabilities"

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1


# instance fields
.field private mLinkDownBandwidthKbps:I

.field private mLinkUpBandwidthKbps:I

.field private mNetworkCapabilities:J

.field private mNetworkSpecifier:Ljava/lang/String;

.field private mTransportTypes:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 630
    new-instance v0, Landroid/net/NetworkCapabilities$1;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/32 v0, 0xe000

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_19

    .line 59
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 60
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 61
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 62
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 63
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    .line 65
    :cond_19
    return-void
.end method

.method static synthetic access$002(Landroid/net/NetworkCapabilities;J)J
    .registers 4
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/net/NetworkCapabilities;J)J
    .registers 4
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-wide p1
.end method

.method static synthetic access$202(Landroid/net/NetworkCapabilities;I)I
    .registers 2
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/NetworkCapabilities;I)I
    .registers 2
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    return-object p1
.end method

.method private combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 506
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 508
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 510
    return-void
.end method

.method private combineNetCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 299
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 300
    return-void
.end method

.method private combineSpecifiers(Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 557
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "otherSpecifier":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 563
    :goto_a
    return-void

    .line 559
    :cond_b
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 560
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t combine two networkSpecifiers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_1b
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private combineTransportTypes(Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 429
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 430
    return-void
.end method

.method private enumerateBits(J)[I
    .registers 14
    .param p1, "val"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 286
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 287
    .local v4, "size":I
    new-array v3, v4, [I

    .line 288
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 289
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "resource":I
    move v1, v0

    .line 290
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_b
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_21

    .line 291
    and-long v6, p1, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_22

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput v2, v3, v1

    .line 292
    :goto_1b
    const/4 v5, 0x1

    shr-long/2addr p1, v5

    .line 293
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_b

    .line 295
    :cond_21
    return-object v3

    :cond_22
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1b
.end method

.method private equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 516
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 307
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 569
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 570
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 572
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method private equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 436
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 512
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-gt v0, v1, :cond_e

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 303
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 565
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .registers 8
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const-wide/16 v4, 0x0

    .line 432
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "capability"    # I

    .prologue
    .line 239
    if-ltz p1, :cond_6

    const/16 v0, 0x13

    if-le p1, v0, :cond_e

    .line 240
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NetworkCapability out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_e
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 243
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "transportType"    # I

    .prologue
    .line 380
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-le p1, v0, :cond_d

    .line 381
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TransportType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_d
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 384
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 385
    return-object p0
.end method

.method public combineCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 581
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineNetCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 582
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineTransportTypes(Landroid/net/NetworkCapabilities;)V

    .line 583
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V

    .line 584
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSpecifiers(Landroid/net/NetworkCapabilities;)V

    .line 585
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 601
    if-eqz p1, :cond_7

    instance-of v2, p1, Landroid/net/NetworkCapabilities;

    if-nez v2, :cond_8

    .line 603
    :cond_7
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 602
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 603
    .local v0, "that":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public firstNetCapToApnType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 716
    const-string v0, ""

    .line 717
    .local v0, "apnType":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v1

    .line 719
    .local v1, "types":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_28

    .line 731
    :goto_c
    :pswitch_c
    return-object v0

    .line 720
    :pswitch_d
    const-string v0, "ims"

    goto :goto_c

    .line 721
    :pswitch_10
    const-string v0, "fota"

    goto :goto_c

    .line 722
    :pswitch_13
    const-string v0, "default"

    goto :goto_c

    .line 723
    :pswitch_16
    const-string/jumbo v0, "supl"

    goto :goto_c

    .line 724
    :pswitch_1a
    const-string v0, "dun"

    goto :goto_c

    .line 725
    :pswitch_1d
    const-string/jumbo v0, "mms"

    goto :goto_c

    .line 726
    :pswitch_21
    const-string v0, "cbs"

    goto :goto_c

    .line 727
    :pswitch_24
    const-string v0, "cas"

    goto :goto_c

    .line 719
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_16
        :pswitch_1a
        :pswitch_10
        :pswitch_d
        :pswitch_21
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_13
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_24
    .end packed-switch
.end method

.method public getCapabilities()[I
    .registers 3

    .prologue
    .line 269
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkCapabilities;->enumerateBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getDiffCapabilities(Landroid/net/NetworkCapabilities;)[I
    .registers 8
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 706
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long v0, v2, v4

    .line 707
    .local v0, "diffNc":J
    invoke-direct {p0, v0, v1}, Landroid/net/NetworkCapabilities;->enumerateBits(J)[I

    move-result-object v2

    return-object v2
.end method

.method public getLinkDownstreamBandwidthKbps()I
    .registers 2

    .prologue
    .line 502
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return v0
.end method

.method public getLinkUpstreamBandwidthKbps()I
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return v0
.end method

.method public getNetworkSpecifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportTypes()[I
    .registers 3

    .prologue
    .line 412
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkCapabilities;->enumerateBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public hasCapability(I)Z
    .registers 8
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    if-ltz p1, :cond_8

    const/16 v2, 0x13

    if-le p1, v2, :cond_a

    :cond_8
    move v0, v1

    .line 282
    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shl-int v4, v0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method public hasTransport(I)Z
    .registers 8
    .param p1, "transportType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    if-ltz p1, :cond_7

    const/4 v2, 0x4

    if-le p1, v2, :cond_9

    :cond_7
    move v0, v1

    .line 425
    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shl-int v4, v0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    const/16 v4, 0x20

    .line 611
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v0, v6

    long-to-int v0, v0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v2, v6

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    :goto_30
    add-int/2addr v0, v1

    return v0

    :cond_32
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    goto :goto_30
.end method

.method public maybeMarkCapabilitiesRestricted()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 322
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v2, -0xe7bd

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1a

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v2, 0x7bc

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1a

    .line 326
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 328
    :cond_1a
    return-void
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "capability"    # I

    .prologue
    .line 254
    if-ltz p1, :cond_6

    const/16 v0, 0x13

    if-le p1, v0, :cond_e

    .line 255
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NetworkCapability out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_e
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 258
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "transportType"    # I

    .prologue
    .line 396
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-le p1, v0, :cond_d

    .line 397
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TransportType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_d
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 400
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 401
    return-object p0
.end method

.method public satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 592
    if-eqz p1, :cond_1c

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public setLinkDownstreamBandwidthKbps(I)V
    .registers 2
    .param p1, "downKbps"    # I

    .prologue
    .line 492
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 493
    return-void
.end method

.method public setLinkUpstreamBandwidthKbps(I)V
    .registers 2
    .param p1, "upKbps"    # I

    .prologue
    .line 463
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 464
    return-void
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)V
    .registers 4
    .param p1, "networkSpecifier"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have a single transport specified to use setNetworkSpecifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_17
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    .line 543
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    .line 649
    .local v5, "types":[I
    array-length v7, v5

    if-lez v7, :cond_2c

    const-string v4, " Transports: "

    .line 650
    .local v4, "transports":Ljava/lang/String;
    :goto_9
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_a
    :goto_a
    array-length v7, v5

    if-ge v2, v7, :cond_93

    .line 651
    aget v7, v5, v2

    packed-switch v7, :pswitch_data_2dc

    .line 658
    :goto_12
    add-int/lit8 v2, v2, 0x1

    array-length v7, v5

    if-ge v2, v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 649
    .end local v2    # "i":I
    .end local v4    # "transports":Ljava/lang/String;
    :cond_2c
    const-string v4, ""

    goto :goto_9

    .line 652
    .restart local v2    # "i":I
    .restart local v4    # "transports":Ljava/lang/String;
    :pswitch_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CELLULAR"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 653
    :pswitch_43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "WIFI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 654
    :pswitch_57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 655
    :pswitch_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ETHERNET"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 656
    :pswitch_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VPN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 661
    :cond_93
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v5

    .line 662
    array-length v7, v5

    if-lez v7, :cond_be

    const-string v0, " Capabilities: "

    .line 663
    .local v0, "capabilities":Ljava/lang/String;
    :goto_9c
    const/4 v2, 0x0

    :cond_9d
    :goto_9d
    array-length v7, v5

    if-ge v2, v7, :cond_24b

    .line 664
    aget v7, v5, v2

    packed-switch v7, :pswitch_data_2ea

    .line 687
    :goto_a5
    :pswitch_a5
    add-int/lit8 v2, v2, 0x1

    array-length v7, v5

    if-ge v2, v7, :cond_9d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    .line 662
    .end local v0    # "capabilities":Ljava/lang/String;
    :cond_be
    const-string v0, ""

    goto :goto_9c

    .line 665
    .restart local v0    # "capabilities":Ljava/lang/String;
    :pswitch_c1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MMS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    .line 666
    :pswitch_d5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MMS2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    .line 667
    :pswitch_e9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SUPL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    .line 668
    :pswitch_fd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "DUN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    .line 669
    :pswitch_111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "FOTA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    .line 670
    :pswitch_125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IMS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 671
    :pswitch_13a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CBS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 672
    :pswitch_14f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "WIFI_P2P"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 673
    :pswitch_164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 674
    :pswitch_179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "RCS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 675
    :pswitch_18e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "XCAP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 676
    :pswitch_1a3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EIMS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 677
    :pswitch_1b8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NOT_METERED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 678
    :pswitch_1cd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "INTERNET"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 679
    :pswitch_1e2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NOT_RESTRICTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 680
    :pswitch_1f7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TRUSTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 681
    :pswitch_20c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NOT_VPN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 683
    :pswitch_221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ENT1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 685
    :pswitch_236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BIP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    .line 690
    :cond_24b
    iget v7, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-lez v7, :cond_2b9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " LinkUpBandwidth>="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Kbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 692
    .local v6, "upBand":Ljava/lang/String;
    :goto_26a
    iget v7, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-lez v7, :cond_2bc

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " LinkDnBandwidth>="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Kbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "dnBand":Ljava/lang/String;
    :goto_289
    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    if-nez v7, :cond_2bf

    const-string v3, ""

    .line 698
    .local v3, "specifier":Ljava/lang/String;
    :goto_28f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 690
    .end local v1    # "dnBand":Ljava/lang/String;
    .end local v3    # "specifier":Ljava/lang/String;
    .end local v6    # "upBand":Ljava/lang/String;
    :cond_2b9
    const-string v6, ""

    goto :goto_26a

    .line 692
    .restart local v6    # "upBand":Ljava/lang/String;
    :cond_2bc
    const-string v1, ""

    goto :goto_289

    .line 695
    .restart local v1    # "dnBand":Ljava/lang/String;
    :cond_2bf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Specifier: <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_28f

    .line 651
    nop

    :pswitch_data_2dc
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_43
        :pswitch_57
        :pswitch_6b
        :pswitch_7f
    .end packed-switch

    .line 664
    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_e9
        :pswitch_fd
        :pswitch_111
        :pswitch_125
        :pswitch_13a
        :pswitch_14f
        :pswitch_164
        :pswitch_179
        :pswitch_18e
        :pswitch_1a3
        :pswitch_1b8
        :pswitch_1cd
        :pswitch_1e2
        :pswitch_1f7
        :pswitch_20c
        :pswitch_a5
        :pswitch_221
        :pswitch_d5
        :pswitch_236
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 624
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 625
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 626
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    return-void
.end method
