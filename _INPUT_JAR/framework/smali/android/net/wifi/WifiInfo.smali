.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FREQUENCY_UNITS:Ljava/lang/String; = "MHz"

.field public static final INVALID_RSSI:I = -0x7f

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final MAX_RSSI:I = 0xc8

.field public static final MIN_RSSI:I = -0x7e

.field private static final TAG:Ljava/lang/String; = "WifiInfo"

.field private static final WIFI_MAC_FILE:Ljava/lang/String; = "/efs/wifi/.mac.info"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public badRssiCount:I

.field public linkStuckCount:I

.field public lowRssiCount:I

.field private mBSSID:Ljava/lang/String;

.field private mCaptivePortal:Z

.field private mDefaultAp:Z

.field private mExpiration:Ljava/lang/String;

.field private mFrequency:I

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLinkSpeed:I

.field private mMacAddress:Ljava/lang/String;

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mRssi:I

.field private mSharedAp:Z

.field private mSkipInternetCheck:Z

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mWifiSsid:Landroid/net/wifi/WifiSsid;

.field public rxSuccess:J

.field public rxSuccessRate:D

.field public score:I

.field public txBad:J

.field public txBadRate:D

.field public txRetries:J

.field public txRetriesRate:D

.field public txSuccess:J

.field public txSuccessRate:D


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 51
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object v3, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 247
    iput-object v3, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 248
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 249
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 250
    const/16 v0, -0x7f

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 251
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 252
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 253
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 254
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 255
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 257
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 258
    iput-object v3, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    if-eqz p1, :cond_71

    .line 292
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 293
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 294
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 295
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 296
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 297
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 298
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 299
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 300
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 301
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 302
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 303
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 304
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 305
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 306
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 307
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 308
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 309
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 310
    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 311
    iget v0, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 312
    iget v0, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 313
    iget v0, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 314
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 315
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 316
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 318
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 319
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 322
    :cond_71
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiInfo;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    return-object p1
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2
    .param p0, "suppState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 545
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static getMacAddressFromFile()Ljava/lang/String;
    .registers 12

    .prologue
    .line 450
    const/4 v3, 0x0

    .line 451
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 452
    .local v5, "length":I
    const/16 v6, 0x11

    .line 453
    .local v6, "macLength":I
    const/16 v9, 0x20

    new-array v0, v9, [B

    .line 454
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 457
    .local v7, "retValue":Ljava/lang/String;
    :try_start_9
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/efs/wifi/.mac.info"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_3b
    .catchall {:try_start_9 .. :try_end_1a} :catchall_52

    .line 458
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1a
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 459
    if-lt v5, v6, :cond_2a

    .line 460
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_69
    .catchall {:try_start_1a .. :try_end_26} :catchall_62

    .line 461
    .end local v7    # "retValue":Ljava/lang/String;
    .local v8, "retValue":Ljava/lang/String;
    :try_start_26
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_6c
    .catchall {:try_start_26 .. :try_end_29} :catchall_65

    move-result-object v7

    .line 466
    .end local v8    # "retValue":Ljava/lang/String;
    .restart local v7    # "retValue":Ljava/lang/String;
    :cond_2a
    if-eqz v4, :cond_70

    .line 468
    :try_start_2c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_31

    move-object v3, v4

    .line 475
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_30
    :goto_30
    return-object v7

    .line 469
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_31
    move-exception v1

    .line 470
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "WifiInfo"

    const-string v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 471
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_30

    .line 463
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3b
    move-exception v2

    .line 464
    .local v2, "ignore":Ljava/io/IOException;
    :goto_3c
    :try_start_3c
    const-string v9, "WifiInfo"

    const-string v10, "Failed to get MAC address from /efs/wifi/.mac.info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_52

    .line 466
    if-eqz v3, :cond_30

    .line 468
    :try_start_45
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_30

    .line 469
    :catch_49
    move-exception v1

    .line 470
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "WifiInfo"

    const-string v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 466
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ignore":Ljava/io/IOException;
    :catchall_52
    move-exception v9

    :goto_53
    if-eqz v3, :cond_58

    .line 468
    :try_start_55
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 471
    :cond_58
    :goto_58
    throw v9

    .line 469
    :catch_59
    move-exception v1

    .line 470
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "WifiInfo"

    const-string v11, "Failed to close .mac.info file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 466
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_62
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_53

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v7    # "retValue":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "retValue":Ljava/lang/String;
    :catchall_65
    move-exception v9

    move-object v7, v8

    .end local v8    # "retValue":Ljava/lang/String;
    .restart local v7    # "retValue":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_53

    .line 463
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_69
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3c

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v7    # "retValue":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "retValue":Ljava/lang/String;
    :catch_6c
    move-exception v2

    move-object v7, v8

    .end local v8    # "retValue":Ljava/lang/String;
    .restart local v7    # "retValue":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3c

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :cond_70
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_30
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 650
    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 655
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_6
    :goto_6
    return-object p0

    .line 651
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 652
    .restart local v0    # "length":I
    if-le v0, v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 653
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .registers 3
    .param p0, "stateName"    # Ljava/lang/String;

    .prologue
    .line 559
    const-string v1, "4WAY_HANDSHAKE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 560
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 565
    :goto_a
    return-object v1

    .line 563
    :cond_b
    :try_start_b
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_14} :catch_16

    move-result-object v1

    goto :goto_a

    .line 564
    :catch_16
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAp()Z
    .registers 2

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    return v0
.end method

.method public getExpiration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return v0
.end method

.method public getHiddenSSID()Z
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 536
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    move-result v0

    goto :goto_5
.end method

.method public getIpAddress()I
    .registers 3

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "result":I
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_f

    .line 525
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v0

    .line 527
    :cond_f
    return v0
.end method

.method public getLinkSpeed()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 444
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_a
.end method

.method public getMeteredHint()Z
    .registers 2

    .prologue
    .line 485
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return v0
.end method

.method public getNetworkId()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .registers 4

    .prologue
    .line 337
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_31

    .line 338
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "unicode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .end local v0    # "unicode":Ljava/lang/String;
    :goto_29
    return-object v1

    .line 342
    .restart local v0    # "unicode":Ljava/lang/String;
    :cond_2a
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 345
    .end local v0    # "unicode":Ljava/lang/String;
    :cond_31
    const-string v1, "<unknown ssid>"

    goto :goto_29
.end method

.method public getSkipInternetCheck()Z
    .registers 2

    .prologue
    .line 575
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    return v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public getWifiSsid()Landroid/net/wifi/WifiSsid;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public is24GHz()Z
    .registers 2

    .prologue
    .line 422
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .registers 2

    .prologue
    .line 430
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public isCaptivePortal()Z
    .registers 2

    .prologue
    .line 591
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    return v0
.end method

.method public isSharedAp()Z
    .registers 2

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    return v0
.end method

.method public reset()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 265
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 267
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 268
    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 269
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 270
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 271
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 272
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 273
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 274
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 275
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 276
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 277
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 278
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 279
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 280
    iput v1, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 281
    iput v1, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 282
    iput v1, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 283
    iput v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 284
    return-void
.end method

.method public setBSSID(Ljava/lang/String;)V
    .registers 2
    .param p1, "BSSID"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setCaptivePortal(Z)V
    .registers 2
    .param p1, "captivePortal"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 600
    return-void
.end method

.method public setDefaultAp(Z)V
    .registers 2
    .param p1, "defaultAp"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 614
    return-void
.end method

.method public setExpiration(Ljava/lang/String;)V
    .registers 2
    .param p1, "expiration"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setFrequency(I)V
    .registers 2
    .param p1, "frequency"    # I

    .prologue
    .line 414
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 415
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 519
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 520
    return-void
.end method

.method public setLinkSpeed(I)V
    .registers 2
    .param p1, "linkSpeed"    # I

    .prologue
    .line 400
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 401
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setMeteredHint(Z)V
    .registers 2
    .param p1, "meteredHint"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 481
    return-void
.end method

.method public setNetworkId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 490
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 491
    return-void
.end method

.method public setRssi(I)V
    .registers 3
    .param p1, "rssi"    # I

    .prologue
    .line 382
    const/16 v0, -0x7f

    if-ge p1, v0, :cond_6

    .line 383
    const/16 p1, -0x7f

    .line 384
    :cond_6
    const/16 v0, 0xc8

    if-le p1, v0, :cond_c

    .line 385
    const/16 p1, 0xc8

    .line 386
    :cond_c
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 387
    return-void
.end method

.method public setSSID(Landroid/net/wifi/WifiSsid;)V
    .registers 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 326
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 327
    return-void
.end method

.method public setSharedAp(Z)V
    .registers 2
    .param p1, "sharedAp"    # Z

    .prologue
    .line 629
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 630
    return-void
.end method

.method public setSkipInternetCheck(Z)V
    .registers 2
    .param p1, "skipInternetCheck"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 584
    return-void
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .registers 2
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 514
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 515
    return-void
.end method

.method setSupplicantState(Ljava/lang/String;)V
    .registers 3
    .param p1, "stateName"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 556
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 660
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 661
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 663
    .local v0, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_9f

    const-string v2, "<unknown ssid>"

    :goto_13
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v2, :cond_a3

    move-object v2, v0

    :goto_22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_a7

    move-object v2, v0

    :goto_31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_aa

    .end local v0    # "none":Ljava/lang/String;
    :goto_3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Metered hint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 663
    .restart local v0    # "none":Ljava/lang/String;
    :cond_9f
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    goto/16 :goto_13

    :cond_a3
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    goto/16 :goto_22

    :cond_a7
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_31

    :cond_aa
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    goto :goto_3f
.end method

.method public updatePacketRates(JJ)V
    .registers 12
    .param p1, "txPackets"    # J
    .param p3, "rxPackets"    # J

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 216
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 217
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 218
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 219
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 221
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 223
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v2, p3, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 225
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 226
    iput-wide p3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 227
    return-void
.end method

.method public updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V
    .registers 16
    .param p1, "stats"    # Landroid/net/wifi/WifiLinkLayerStats;

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 175
    if-eqz p1, :cond_71

    .line 176
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    add-long v4, v8, v10

    .line 177
    .local v4, "txgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    add-long v6, v8, v10

    .line 179
    .local v6, "txretries":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    add-long v0, v8, v10

    .line 180
    .local v0, "rxgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    add-long v2, v8, v10

    .line 183
    .local v2, "txbad":J
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    mul-double/2addr v8, v12

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    sub-long v10, v2, v10

    long-to-double v10, v10

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 185
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    mul-double/2addr v8, v12

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v10, v4, v10

    long-to-double v10, v10

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 187
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    mul-double/2addr v8, v12

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v10, v0, v10

    long-to-double v10, v10

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 189
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    mul-double/2addr v8, v12

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    sub-long v10, v6, v10

    long-to-double v10, v10

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 192
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 193
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 194
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 195
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 206
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :goto_70
    return-void

    .line 197
    :cond_71
    iput-wide v10, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 198
    iput-wide v10, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 199
    iput-wide v10, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 200
    iput-wide v10, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 201
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 202
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 203
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 204
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_70
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 684
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_96

    .line 689
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 690
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 694
    :goto_26
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_9a

    .line 695
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 700
    :goto_32
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    if-eqz v0, :cond_9e

    move v0, v1

    :goto_41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 705
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 706
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 707
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 708
    iget v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 711
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    if-eqz v0, :cond_a0

    move v0, v1

    :goto_76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    if-eqz v0, :cond_a2

    move v0, v1

    :goto_7e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    if-eqz v0, :cond_a4

    move v0, v1

    :goto_86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    if-eqz v0, :cond_a6

    :goto_8d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    return-void

    .line 692
    :cond_96
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_26

    .line 698
    :cond_9a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    :cond_9e
    move v0, v2

    .line 702
    goto :goto_41

    :cond_a0
    move v0, v2

    .line 713
    goto :goto_76

    :cond_a2
    move v0, v2

    .line 716
    goto :goto_7e

    :cond_a4
    move v0, v2

    .line 718
    goto :goto_86

    :cond_a6
    move v1, v2

    .line 720
    goto :goto_8d
.end method
