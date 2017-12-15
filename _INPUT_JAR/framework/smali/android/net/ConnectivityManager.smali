.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$CallbackHandler;,
        Landroid/net/ConnectivityManager$NetworkCallback;,
        Landroid/net/ConnectivityManager$OnNetworkActiveListener;,
        Landroid/net/ConnectivityManager$LegacyRequest;
    }
.end annotation


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field private static final BASE:I = 0x80000

.field public static final CALLBACK_AVAILABLE:I = 0x80002

.field public static final CALLBACK_CAP_CHANGED:I = 0x80006

.field public static final CALLBACK_EXIT:I = 0x80009

.field public static final CALLBACK_IP_CHANGED:I = 0x80007

.field public static final CALLBACK_LOSING:I = 0x80003

.field public static final CALLBACK_LOST:I = 0x80004

.field public static final CALLBACK_PRECHECK:I = 0x80001

.field public static final CALLBACK_RELEASED:I = 0x80008

.field public static final CALLBACK_UNAVAIL:I = 0x80005

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

.field public static final CONNECTIVITY_CHANGE_DELAY_DEFAULT:I = 0x1f4

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXPIRE_LEGACY_REQUEST:I = 0x8000a

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_REQUEST_NETWORK:Ljava/lang/String; = "networkRequestNetwork"

.field public static final EXTRA_NETWORK_REQUEST_NETWORK_REQUEST:Ljava/lang/String; = "networkRequestNetworkRequest"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REALTIME_NS:Ljava/lang/String; = "tsNanos"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final LEGACY_DBG:Z = true

.field private static final LISTEN:I = 0x1

.field public static final MAX_NETWORK_REQUEST_TIMEOUT_MS:I = 0x5b8d80

.field public static final MAX_NETWORK_TYPE:I = 0x11

.field public static final MAX_NETWORK_TYPE_EX:I = 0x1d

.field public static final MAX_RADIO_TYPE:I = 0x11

.field public static final NETID_UNSET:I = 0x0

.field private static final REQUEST:I = 0x2

.field public static final REQUEST_ID_UNSET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SECURITY_POLICY:I = 0x14

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_BIP:I = 0x17

.field public static final TYPE_MOBILE_CAS:I = 0x18

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_CMDM:I = 0x14

.field public static final TYPE_MOBILE_CMMAIL:I = 0x15

.field public static final TYPE_MOBILE_DM:I = 0x19

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_EMERGENCY:I = 0xf

.field public static final TYPE_MOBILE_ENT1:I = 0x1c

.field public static final TYPE_MOBILE_ENT2:I = 0x1d

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_IA:I = 0xe

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_MMS2:I = 0x1a

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_MOBILE_WAP:I = 0x16

.field public static final TYPE_MOBILE_XCAP:I = 0x1b

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_PROXY:I = 0x10

.field public static final TYPE_VPN:I = 0x11

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field static sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

.field static final sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sLegacyRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/ConnectivityManager$LegacyRequest;",
            ">;"
        }
    .end annotation
.end field

.field static final sNetworkCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mNetworkActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/ConnectivityManager$OnNetworkActiveListener;",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    .line 2773
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    .line 2775
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2776
    const/4 v0, 0x0

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    return-void
.end method

.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .registers 3
    .param p1, "service"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 1736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1669
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    .line 1737
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 1738
    return-void
.end method

.method static synthetic access$100(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V
    .registers 3
    .param p0, "x0"    # Landroid/net/ConnectivityManager;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;
    .param p2, "x2"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V

    return-void
.end method

.method private decCallbackHandlerRefCount()V
    .registers 4

    .prologue
    .line 2765
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 2766
    :try_start_3
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1a

    .line 2767
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    const v2, 0x80009

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2768
    const/4 v0, 0x0

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    .line 2770
    :cond_1a
    monitor-exit v1

    .line 2771
    return-void

    .line 2770
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public static final enforceTetherChangePermission(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1747
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 1751
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "ConnectivityService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    :goto_16
    return-void

    .line 1754
    :cond_17
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    const-string v1, "ConnectivityService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private expireRequest(Landroid/net/NetworkCapabilities;I)V
    .registers 9
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    .prologue
    .line 1453
    const/4 v1, -0x1

    .line 1454
    .local v1, "ourSeqNum":I
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v3

    .line 1455
    :try_start_4
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1456
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-nez v0, :cond_10

    monitor-exit v3

    .line 1465
    :goto_f
    return-void

    .line 1457
    :cond_10
    const-string v2, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expireRequest NetworkRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1459
    iget v2, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    if-ne v2, p2, :cond_3a

    .line 1460
    iget-object v2, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1461
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    :cond_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_5e

    .line 1464
    const-string v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expireRequest with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1463
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2
.end method

.method private findRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .registers 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1439
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1440
    :try_start_3
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1441
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    monitor-exit v2

    .line 1443
    :goto_10
    return-object v1

    .line 1442
    :cond_11
    monitor-exit v2

    .line 1443
    const/4 v1, 0x0

    goto :goto_10

    .line 1442
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1742
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .prologue
    .line 1659
    monitor-enter p0

    .line 1660
    :try_start_1
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_9

    .line 1661
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    monitor-exit p0

    .line 1665
    :goto_8
    return-object v1

    .line 1663
    :cond_9
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1664
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    .line 1665
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    monitor-exit p0

    goto :goto_8

    .line 1666
    .end local v0    # "b":Landroid/os/IBinder;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 585
    packed-switch p0, :pswitch_data_5a

    .line 643
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 587
    :pswitch_8
    const-string v0, "MOBILE"

    goto :goto_7

    .line 589
    :pswitch_b
    const-string v0, "WIFI"

    goto :goto_7

    .line 591
    :pswitch_e
    const-string v0, "MOBILE_MMS"

    goto :goto_7

    .line 593
    :pswitch_11
    const-string v0, "MOBILE_SUPL"

    goto :goto_7

    .line 595
    :pswitch_14
    const-string v0, "MOBILE_DUN"

    goto :goto_7

    .line 597
    :pswitch_17
    const-string v0, "MOBILE_HIPRI"

    goto :goto_7

    .line 599
    :pswitch_1a
    const-string v0, "WIMAX"

    goto :goto_7

    .line 601
    :pswitch_1d
    const-string v0, "BLUETOOTH"

    goto :goto_7

    .line 603
    :pswitch_20
    const-string v0, "DUMMY"

    goto :goto_7

    .line 605
    :pswitch_23
    const-string v0, "ETHERNET"

    goto :goto_7

    .line 607
    :pswitch_26
    const-string v0, "MOBILE_FOTA"

    goto :goto_7

    .line 609
    :pswitch_29
    const-string v0, "MOBILE_IMS"

    goto :goto_7

    .line 611
    :pswitch_2c
    const-string v0, "MOBILE_CBS"

    goto :goto_7

    .line 613
    :pswitch_2f
    const-string v0, "WIFI_P2P"

    goto :goto_7

    .line 615
    :pswitch_32
    const-string v0, "MOBILE_IA"

    goto :goto_7

    .line 617
    :pswitch_35
    const-string v0, "MOBILE_EMERGENCY"

    goto :goto_7

    .line 619
    :pswitch_38
    const-string v0, "PROXY"

    goto :goto_7

    .line 622
    :pswitch_3b
    const-string v0, "MOBILE_CMDM"

    goto :goto_7

    .line 624
    :pswitch_3e
    const-string v0, "MOBILE_CMMAIL"

    goto :goto_7

    .line 626
    :pswitch_41
    const-string v0, "MOBILE_WAP"

    goto :goto_7

    .line 628
    :pswitch_44
    const-string v0, "MOBILE_BIP"

    goto :goto_7

    .line 630
    :pswitch_47
    const-string v0, "MOBILE_CAS"

    goto :goto_7

    .line 632
    :pswitch_4a
    const-string v0, "MOBILE_DM"

    goto :goto_7

    .line 634
    :pswitch_4d
    const-string v0, "MOBILE_MMS2"

    goto :goto_7

    .line 636
    :pswitch_50
    const-string v0, "MOBILE_XCAP"

    goto :goto_7

    .line 638
    :pswitch_53
    const-string v0, "MOBILE_ENT1"

    goto :goto_7

    .line 640
    :pswitch_56
    const-string v0, "MOBILE_ENT2"

    goto :goto_7

    .line 585
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
    .end packed-switch
.end method

.method public static getProcessDefaultNetwork()Landroid/net/Network;
    .registers 2

    .prologue
    .line 2985
    invoke-static {}, Landroid/net/NetworkUtils;->getNetworkBoundToProcess()I

    move-result v0

    .line 2986
    .local v0, "netId":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 2987
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    goto :goto_7
.end method

.method private incCallbackHandlerRefCount()V
    .registers 9

    .prologue
    .line 2753
    sget-object v7, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2754
    :try_start_3
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 2756
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "ConnectivityManager"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2757
    .local v6, "callbackThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 2758
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    sget-object v4, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    .line 2761
    .end local v6    # "callbackThread":Landroid/os/HandlerThread;
    :cond_27
    monitor-exit v7

    .line 2762
    return-void

    .line 2761
    :catchall_29
    move-exception v0

    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method private inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .registers 8
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 1294
    if-nez p1, :cond_8

    .line 1370
    :cond_7
    :goto_7
    return v0

    .line 1297
    :cond_8
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1300
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1301
    const-string v1, "enableCBS"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1302
    const/16 v0, 0xc

    goto :goto_7

    .line 1307
    :cond_24
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1308
    const-string v1, "enableXCAP"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1309
    const/16 v0, 0x1b

    goto :goto_7

    .line 1314
    :cond_3b
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1315
    const-string v1, "enableIMS"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1316
    const/16 v0, 0xb

    goto :goto_7

    .line 1321
    :cond_50
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1322
    const-string v1, "enableFOTA"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1323
    const/16 v0, 0xa

    goto :goto_7

    .line 1328
    :cond_65
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 1329
    const-string v2, "enableDUN"

    invoke-direct {p0, v5, v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 1330
    goto :goto_7

    .line 1335
    :cond_79
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1336
    const-string v1, "enableSUPL"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 1337
    goto/16 :goto_7

    .line 1342
    :cond_8f
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1343
    const-string v1, "enableMMS"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    .line 1344
    goto/16 :goto_7

    .line 1349
    :cond_a4
    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1350
    const-string v1, "enableMMS2"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1351
    const/16 v0, 0x1a

    goto/16 :goto_7

    .line 1356
    :cond_bc
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1357
    const-string v1, "enableHIPRI"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1358
    const/4 v0, 0x5

    goto/16 :goto_7

    .line 1363
    :cond_d3
    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1364
    const-string v1, "enableBIP"

    invoke-direct {p0, v5, v1}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1365
    const/16 v0, 0x17

    goto/16 :goto_7
.end method

.method public static isNetworkTypeMobile(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 655
    packed-switch p0, :pswitch_data_8

    .line 680
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 678
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 655
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 572
    if-ltz p0, :cond_6

    const/16 v0, 0x11

    if-le p0, v0, :cond_e

    :cond_6
    const/16 v0, 0x14

    if-lt p0, v0, :cond_10

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isNetworkTypeWifi(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 690
    sparse-switch p0, :sswitch_data_8

    .line 695
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 693
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 690
    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0xd -> :sswitch_5
    .end sparse-switch
.end method

.method private legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .registers 8
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v0, -0x1

    .line 1374
    if-nez p1, :cond_8

    .line 1408
    :cond_7
    :goto_7
    return v0

    .line 1375
    :cond_8
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1376
    const/16 v0, 0xc

    goto :goto_7

    .line 1378
    :cond_11
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1379
    const/16 v0, 0x1b

    goto :goto_7

    .line 1381
    :cond_1c
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1382
    const/16 v0, 0xb

    goto :goto_7

    .line 1384
    :cond_25
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1385
    const/16 v0, 0xa

    goto :goto_7

    .line 1387
    :cond_2e
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_36

    move v0, v1

    .line 1388
    goto :goto_7

    .line 1390
    :cond_36
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    move v0, v2

    .line 1391
    goto :goto_7

    .line 1393
    :cond_3f
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_48

    move v0, v3

    .line 1394
    goto :goto_7

    .line 1396
    :cond_48
    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1397
    const/16 v0, 0x1a

    goto :goto_7

    .line 1399
    :cond_53
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    move v0, v4

    .line 1400
    goto :goto_7

    .line 1402
    :cond_5d
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1403
    const/16 v0, 0xd

    goto :goto_7

    .line 1405
    :cond_67
    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1406
    const/16 v0, 0x17

    goto :goto_7
.end method

.method private networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 8
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1241
    if-nez p1, :cond_a7

    .line 1242
    const/4 v0, -0x1

    .line 1243
    .local v0, "cap":I
    const-string v3, "enableMMS"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1244
    const/4 v0, 0x0

    .line 1277
    :goto_e
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1278
    .local v2, "netCap":Landroid/net/NetworkCapabilities;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1279
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 1290
    .end local v0    # "cap":I
    .end local v2    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_1e
    :goto_1e
    return-object v2

    .line 1245
    .restart local v0    # "cap":I
    :cond_1f
    const-string v3, "enableXCAP"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1246
    const/16 v0, 0x9

    goto :goto_e

    .line 1247
    :cond_2a
    const-string v3, "enableMMS2"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1248
    const/16 v0, 0x12

    goto :goto_e

    .line 1249
    :cond_35
    const-string v3, "enableSUPL"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1250
    const/4 v0, 0x1

    goto :goto_e

    .line 1251
    :cond_3f
    const-string v3, "enableDUN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "enableDUNAlways"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1252
    :cond_4f
    const/4 v0, 0x2

    goto :goto_e

    .line 1253
    :cond_51
    const-string v3, "enableHIPRI"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1254
    const/16 v0, 0xc

    goto :goto_e

    .line 1255
    :cond_5c
    const-string v3, "enableFOTA"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1256
    const/4 v0, 0x3

    goto :goto_e

    .line 1257
    :cond_66
    const-string v3, "enableIMS"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1258
    const/4 v0, 0x4

    goto :goto_e

    .line 1259
    :cond_70
    const-string v3, "enableCBS"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1260
    const/4 v0, 0x5

    goto :goto_e

    .line 1261
    :cond_7a
    const-string v3, "enableBIP"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1262
    const/16 v0, 0x13

    goto :goto_e

    .line 1264
    :cond_85
    const-string v3, "enable800APN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1265
    const-string v3, "VZW-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1267
    :try_start_97
    iget-object v3, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->enforceVzw800ApnPermission(I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_a0} :catch_a4

    .line 1272
    :cond_a0
    const/16 v0, 0x10

    goto/16 :goto_e

    .line 1268
    :catch_a4
    move-exception v1

    .line 1269
    .local v1, "e":Landroid/os/RemoteException;
    goto/16 :goto_1e

    .line 1281
    .end local v0    # "cap":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_a7
    if-ne p1, v4, :cond_1e

    .line 1282
    const-string/jumbo v3, "p2p"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1283
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1284
    .restart local v2    # "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1285
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1286
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    goto/16 :goto_1e
.end method

.method private removeRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1494
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1495
    :try_start_3
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1496
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-nez v0, :cond_10

    const/4 v1, 0x0

    monitor-exit v2

    .line 1497
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    monitor-exit v2

    goto :goto_f

    .line 1498
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .registers 5
    .param p1, "l"    # Landroid/net/ConnectivityManager$LegacyRequest;

    .prologue
    .line 1447
    iget v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1448
    const-string v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renewing request to seqNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    invoke-direct {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 1450
    return-void
.end method

.method private requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .registers 11
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1468
    const/4 v6, -0x1

    .line 1469
    .local v6, "delay":I
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v5

    .line 1471
    .local v5, "type":I
    :try_start_7
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->getRestoreDefaultNetworkDelay(I)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_36

    move-result v6

    .line 1473
    :goto_d
    new-instance v7, Landroid/net/ConnectivityManager$LegacyRequest;

    invoke-direct {v7, v8}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>(Landroid/net/ConnectivityManager$1;)V

    .line 1474
    .local v7, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    iput-object p1, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1475
    iput v6, v7, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    .line 1476
    iput v3, v7, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1477
    iget-object v2, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 1479
    iget-object v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    if-nez v0, :cond_29

    move-object v0, v8

    .line 1482
    :goto_28
    return-object v0

    .line 1480
    :cond_29
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    iget v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-direct {p0, p1, v0, v6}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 1482
    iget-object v0, v7, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    goto :goto_28

    .line 1472
    .end local v7    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catch_36
    move-exception v0

    goto :goto_d
.end method

.method private sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V
    .registers 8
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "seqNum"    # I
    .param p3, "delay"    # I

    .prologue
    .line 1486
    if-ltz p3, :cond_35

    .line 1487
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending expire msg with seqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    const v2, 0x8000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1489
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1491
    .end local v0    # "msg":Landroid/os/Message;
    :cond_35
    return-void
.end method

.method private sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;
    .registers 13
    .param p1, "need"    # Landroid/net/NetworkCapabilities;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutSec"    # I
    .param p4, "action"    # I
    .param p5, "legacyType"    # I

    .prologue
    .line 2784
    if-nez p2, :cond_b

    .line 2785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null NetworkCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2787
    :cond_b
    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null NetworkCapabilities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2789
    :cond_16
    :try_start_16
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->incCallbackHandlerRefCount()V

    .line 2790
    sget-object v6, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_6e

    .line 2791
    const/4 v0, 0x1

    if-ne p4, v0, :cond_52

    .line 2792
    :try_start_1f
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v1, Landroid/os/Messenger;

    sget-object v2, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v0

    # setter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->access$202(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    .line 2798
    :goto_34
    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 2799
    sget-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2801
    :cond_43
    monitor-exit v6
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_6b

    .line 2803
    :goto_44
    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    if-nez v0, :cond_4d

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->decCallbackHandlerRefCount()V

    .line 2804
    :cond_4d
    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0

    .line 2795
    :cond_52
    :try_start_52
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Messenger;

    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v0

    # setter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->access$202(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    goto :goto_34

    .line 2801
    :catchall_6b
    move-exception v0

    monitor-exit v6
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v0
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_6e} :catch_6e

    .line 2802
    :catch_6e
    move-exception v0

    goto :goto_44
.end method

.method public static setProcessDefaultNetwork(Landroid/net/Network;)Z
    .registers 5
    .param p0, "network"    # Landroid/net/Network;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2962
    if-nez p0, :cond_d

    move v0, v1

    .line 2963
    .local v0, "netId":I
    :goto_5
    invoke-static {}, Landroid/net/NetworkUtils;->getNetworkBoundToProcess()I

    move-result v3

    if-ne v0, v3, :cond_10

    move v1, v2

    .line 2974
    :cond_c
    :goto_c
    return v1

    .line 2962
    .end local v0    # "netId":I
    :cond_d
    iget v0, p0, Landroid/net/Network;->netId:I

    goto :goto_5

    .line 2966
    .restart local v0    # "netId":I
    :cond_10
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2968
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 2971
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    move v1, v2

    .line 2972
    goto :goto_c
.end method

.method public static setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z
    .registers 2
    .param p0, "network"    # Landroid/net/Network;

    .prologue
    .line 3001
    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetworkForHostResolution(I)Z

    move-result v0

    return v0

    :cond_8
    iget v0, p0, Landroid/net/Network;->netId:I

    goto :goto_3
.end method


# virtual methods
.method public addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .registers 4
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .prologue
    .line 1686
    new-instance v0, Landroid/net/ConnectivityManager$1;

    invoke-direct {v0, p0, p1}, Landroid/net/ConnectivityManager$1;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 1694
    .local v0, "rl":Landroid/os/INetworkActivityListener;
    :try_start_5
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 1695
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    .line 1698
    :goto_11
    return-void

    .line 1696
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 2305
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2308
    :goto_5
    return-void

    .line 2306
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public checkMobileProvisioning(I)I
    .registers 4
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 2335
    const/4 v0, -0x1

    .line 2337
    .local v0, "timeOutMs":I
    :try_start_1
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 2340
    :goto_7
    return v0

    .line 2338
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 913
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 915
    :goto_6
    return-object v1

    .line 914
    :catch_7
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .registers 4

    .prologue
    .line 2418
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2421
    :goto_6
    return-object v1

    .line 2420
    :catch_7
    move-exception v0

    .line 2421
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 747
    :goto_6
    return-object v1

    .line 746
    :catch_7
    move-exception v0

    .line 747
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 766
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 768
    :goto_6
    return-object v1

    .line 767
    :catch_7
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 3

    .prologue
    .line 1603
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1605
    :goto_6
    return-object v1

    .line 1604
    :catch_7
    move-exception v0

    .line 1605
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    .registers 4

    .prologue
    .line 2431
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2434
    :goto_6
    return-object v1

    .line 2433
    :catch_7
    move-exception v0

    .line 2434
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 826
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 828
    :goto_6
    return-object v1

    .line 827
    :catch_7
    move-exception v0

    .line 828
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllNetworkInfoEx()[Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 836
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfoEx()[Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 838
    :goto_6
    return-object v1

    .line 837
    :catch_7
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .registers 3

    .prologue
    .line 871
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 873
    :goto_6
    return-object v1

    .line 872
    :catch_7
    move-exception v0

    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBackgroundDataSetting()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1573
    const/4 v0, 0x1

    return v0
.end method

.method public getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;
    .registers 3

    .prologue
    .line 2376
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2378
    :goto_6
    return-object v1

    .line 2377
    :catch_7
    move-exception v0

    .line 2378
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 3

    .prologue
    .line 2170
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2172
    :goto_6
    return-object v1

    .line 2171
    :catch_7
    move-exception v0

    .line 2172
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2098
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2100
    :goto_6
    return v1

    .line 2099
    :catch_7
    move-exception v0

    .line 2100
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 933
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 935
    :goto_6
    return-object v1

    .line 934
    :catch_7
    move-exception v0

    .line 935
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 948
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 950
    :goto_6
    return-object v1

    .line 949
    :catch_7
    move-exception v0

    .line 950
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    .registers 5
    .param p1, "networkType"    # I

    .prologue
    .line 2405
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2408
    :goto_6
    return-object v1

    .line 2407
    :catch_7
    move-exception v0

    .line 2408
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMobileDataEnabled()Z
    .registers 4

    .prologue
    .line 1632
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1633
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 1635
    :try_start_9
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1636
    .local v1, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_12

    move-result v2

    .line 1639
    .end local v1    # "it":Lcom/android/internal/telephony/ITelephony;
    :goto_11
    return v2

    .line 1637
    :catch_12
    move-exception v2

    .line 1639
    :cond_13
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2349
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 2352
    :goto_6
    return-object v0

    .line 2350
    :catch_7
    move-exception v0

    .line 2352
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2361
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 2364
    :goto_6
    return-object v0

    .line 2362
    :catch_7
    move-exception v0

    .line 2364
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 963
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 965
    :goto_6
    return-object v1

    .line 964
    :catch_7
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 854
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 856
    :goto_6
    return-object v1

    .line 855
    :catch_7
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 787
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 789
    :goto_6
    return-object v1

    .line 788
    :catch_7
    move-exception v0

    .line 789
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 808
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 810
    :goto_6
    return-object v1

    .line 809
    :catch_7
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkPreference()I
    .registers 2

    .prologue
    .line 727
    const/4 v0, -0x1

    return v0
.end method

.method public getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 894
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 896
    :goto_6
    return-object v1

    .line 895
    :catch_7
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getProxy()Landroid/net/ProxyInfo;
    .registers 3

    .prologue
    .line 2190
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2192
    :goto_6
    return-object v1

    .line 2191
    :catch_7
    move-exception v0

    .line 2192
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 2004
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2006
    :goto_6
    return-object v1

    .line 2005
    :catch_7
    move-exception v0

    .line 2006
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1771
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1773
    :goto_6
    return-object v1

    .line 1772
    :catch_7
    move-exception v0

    .line 1773
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1963
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1965
    :goto_6
    return-object v1

    .line 1964
    :catch_7
    move-exception v0

    .line 1965
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1983
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1985
    :goto_6
    return-object v1

    .line 1984
    :catch_7
    move-exception v0

    .line 1985
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1825
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1827
    :goto_6
    return-object v1

    .line 1826
    :catch_7
    move-exception v0

    .line 1827
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1788
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1790
    :goto_6
    return-object v1

    .line 1789
    :catch_7
    move-exception v0

    .line 1790
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1811
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1813
    :goto_6
    return-object v1

    .line 1812
    :catch_7
    move-exception v0

    .line 1813
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getUidsForApnType(Ljava/lang/String;)[I
    .registers 4
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 1926
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getUidsForApnType(Ljava/lang/String;)[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1928
    :goto_6
    return-object v1

    .line 1927
    :catch_7
    move-exception v0

    .line 1928
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getUsersForEnterpriseNetwork(I)[I
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 1939
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getUsersForEnterpriseNetwork(I)[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1942
    :goto_6
    return-object v1

    .line 1941
    :catch_7
    move-exception v0

    .line 1942
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isActiveNetworkMetered()Z
    .registers 3

    .prologue
    .line 2254
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2256
    :goto_6
    return v1

    .line 2255
    :catch_7
    move-exception v0

    .line 2256
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDefaultNetworkActive()Z
    .registers 2

    .prologue
    .line 1727
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isNetworkActive()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 1730
    :goto_8
    return v0

    .line 1728
    :catch_9
    move-exception v0

    .line 1730
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEntApnEnabled(I)Z
    .registers 4
    .param p1, "connectionType"    # I

    .prologue
    .line 1912
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->isEntApnEnabled(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1914
    :goto_6
    return v1

    .line 1913
    :catch_7
    move-exception v0

    .line 1914
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isMobilePolicyDataEnable()Z
    .registers 3

    .prologue
    .line 2267
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isMobilePolicyDataEnable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2269
    :goto_6
    return v1

    .line 2268
    :catch_7
    move-exception v0

    .line 2269
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isNetworkSupported(I)Z
    .registers 3
    .param p1, "networkType"    # I

    .prologue
    .line 2233
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 2235
    :goto_6
    return v0

    .line 2234
    :catch_7
    move-exception v0

    .line 2235
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isSplitBillingEnabled()Z
    .registers 3

    .prologue
    .line 1901
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isSplitBillingEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1903
    :goto_6
    return v1

    .line 1902
    :catch_7
    move-exception v0

    .line 1903
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isTetheringSupported()Z
    .registers 3

    .prologue
    .line 1886
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1888
    :goto_6
    return v1

    .line 1887
    :catch_7
    move-exception v0

    .line 1888
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)V
    .registers 14
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "score"    # I
    .param p6, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 2488
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/IConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2490
    :goto_b
    return-void

    .line 2489
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 9
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 2921
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 2922
    return-void
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .registers 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2473
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2475
    :goto_5
    return-void

    .line 2474
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .registers 6
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .prologue
    .line 1707
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkActivityListener;

    .line 1708
    .local v0, "rl":Landroid/os/INetworkActivityListener;
    if-nez v0, :cond_23

    .line 1709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1712
    :cond_23
    :try_start_23
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_2b

    .line 1715
    :goto_2a
    return-void

    .line 1713
    :catch_2b
    move-exception v1

    goto :goto_2a
.end method

.method public removeRouteToHostAddress(ILjava/net/InetAddress;)Z
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1546
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->removeRouteToHostAddress(I[B)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 1548
    :goto_a
    return v1

    .line 1547
    :catch_b
    move-exception v0

    .line 1548
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public reportBadNetwork(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2133
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->reportBadNetwork(Landroid/net/Network;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2136
    :goto_5
    return-void

    .line 2134
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public reportInetCondition(II)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 2117
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2120
    :goto_5
    return-void

    .line 2118
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 2907
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2909
    :goto_7
    return-void

    .line 2908
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 9
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 2822
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 2824
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .registers 10
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I

    .prologue
    .line 2844
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x2

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 2846
    return-void
.end method

.method public requestRouteToHost(II)Z
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I

    .prologue
    .line 1516
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1536
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 1538
    :goto_a
    return v1

    .line 1537
    :catch_b
    move-exception v0

    .line 1538
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z
    .registers 4
    .param p1, "serverConfig"    # Landroid/net/DhcpServerConfiguration;

    .prologue
    .line 2392
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2396
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 2393
    :catch_7
    move-exception v0

    .line 2394
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setAirplaneMode(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 2465
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2468
    :goto_5
    return-void

    .line 2466
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setBackgroundDataSetting(Z)V
    .registers 2
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1589
    return-void
.end method

.method public setDataDependency(IZ)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 2210
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2213
    :goto_5
    return-void

    .line 2211
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 3
    .param p1, "p"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2153
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2156
    :goto_5
    return-void

    .line 2154
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMobileDataEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1616
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1617
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_10

    .line 1619
    :try_start_9
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1620
    .local v1, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 1623
    .end local v1    # "it":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    :goto_10
    return-void

    .line 1621
    :catch_11
    move-exception v2

    goto :goto_10
.end method

.method public setNcmTethering(Z)I
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 2049
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setNcmTethering(Z)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2051
    :goto_6
    return v1

    .line 2050
    :catch_7
    move-exception v0

    .line 2051
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public setNetworkPreference(I)V
    .registers 2
    .param p1, "preference"    # I

    .prologue
    .line 712
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2449
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2452
    :goto_5
    return-void

    .line 2450
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setUsbTethering(Z)I
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 2026
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2028
    :goto_6
    return v1

    .line 2027
    :catch_7
    move-exception v0

    .line 2028
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .registers 25
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1027
    invoke-direct/range {p0 .. p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v14

    .line 1028
    .local v14, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v14, :cond_33

    .line 1029
    const-string v18, "ConnectivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Can\'t satisfy startUsingNetworkFeature for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/16 v18, 0x3

    .line 1187
    :goto_32
    return v18

    .line 1034
    :cond_33
    const-string/jumbo v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1035
    .local v17, "salesCode":Ljava/lang/String;
    const-string v18, "CHN"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6a

    const-string v18, "CHM"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6a

    const-string v18, "CHC"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6a

    const-string v18, "CHU"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_97

    .line 1036
    :cond_6a
    const-string v18, "enableMMS"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_97

    .line 1037
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v18

    const-string v19, "appops"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 1038
    .local v3, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1039
    .local v6, "callingUid":I
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1040
    .local v5, "callingPackage":Ljava/lang/String;
    const/16 v18, 0x32

    move/from16 v0, v18

    invoke-virtual {v3, v0, v6, v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_97

    .line 1041
    const/16 v18, 0x3

    goto :goto_32

    .line 1081
    .end local v3    # "appOps":Landroid/app/AppOpsManager;
    .end local v5    # "callingPackage":Ljava/lang/String;
    .end local v6    # "callingUid":I
    :cond_97
    const-string v18, "VZW-CDMA"

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_dc

    .line 1083
    const/4 v13, 0x1

    .line 1085
    .local v13, "needActivation":Z
    :try_start_a2
    const-string/jumbo v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_b0} :catch_c8
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_b0} :catch_d2

    move-result v13

    .line 1092
    :goto_b1
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v18

    if-eqz v18, :cond_dc

    if-eqz v13, :cond_dc

    .line 1093
    const-string v18, "ConnectivityManager"

    const-string v19, "Device is not activated yet"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/16 v18, 0x3

    goto/16 :goto_32

    .line 1086
    :catch_c8
    move-exception v8

    .line 1087
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v18, "ConnectivityManager"

    const-string/jumbo v19, "needsOtaServiceProvisioning returned RemoteException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 1088
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_d2
    move-exception v8

    .line 1089
    .local v8, "ex":Ljava/lang/NullPointerException;
    const-string v18, "ConnectivityManager"

    const-string/jumbo v19, "needsOtaServiceProvisioning has NullPointerException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 1100
    .end local v8    # "ex":Ljava/lang/NullPointerException;
    .end local v13    # "needActivation":Z
    :cond_dc
    const-string v18, "VZW-CDMA"

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_185

    .line 1101
    const-string v18, "enableFOTA"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_116

    const-string v18, "enableMMS"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_116

    const-string v18, "enableCBS"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_116

    const-string v18, "enable800APN"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_185

    .line 1105
    :cond_116
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->firstNetCapToApnType()Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, "apnType":Ljava/lang/String;
    const-string v18, "ConnectivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "feature: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " apnType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string/jumbo v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1108
    .local v4, "b":Landroid/os/IBinder;
    if-eqz v4, :cond_185

    .line 1110
    :try_start_14b
    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 1111
    .local v10, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v10, v2}, Lcom/android/internal/telephony/ITelephony;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_185

    .line 1112
    const-string v18, "ConnectivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "APN type ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") NOT available"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catch Landroid/os/RemoteException; {:try_start_14b .. :try_end_175} :catch_179
    .catch Ljava/lang/NullPointerException; {:try_start_14b .. :try_end_175} :catch_214

    .line 1113
    const/16 v18, 0x2

    goto/16 :goto_32

    .line 1115
    .end local v10    # "it":Lcom/android/internal/telephony/ITelephony;
    :catch_179
    move-exception v7

    .line 1116
    .local v7, "e":Landroid/os/RemoteException;
    const-string v18, "ConnectivityManager"

    const-string v19, "RemoteException isApnTypeAvailable()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v4    # "b":Landroid/os/IBinder;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_185
    :goto_185
    const/16 v16, 0x0

    .line 1149
    .local v16, "request":Landroid/net/NetworkRequest;
    sget-object v19, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v19

    .line 1151
    :try_start_18a
    const-string v18, "ConnectivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Looking for legacyRequest for netCap with hash: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->hashCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v18, "ConnectivityManager"

    const-string/jumbo v20, "sLegacyRequests has:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    sget-object v18, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1d2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_222

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 1155
    .local v12, "nc":Landroid/net/NetworkCapabilities;
    const-string v18, "ConnectivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Landroid/net/NetworkCapabilities;->hashCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d2

    .line 1170
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "nc":Landroid/net/NetworkCapabilities;
    :catchall_211
    move-exception v18

    monitor-exit v19
    :try_end_213
    .catchall {:try_start_18a .. :try_end_213} :catchall_211

    throw v18

    .line 1117
    .end local v16    # "request":Landroid/net/NetworkRequest;
    .restart local v2    # "apnType":Ljava/lang/String;
    .restart local v4    # "b":Landroid/os/IBinder;
    :catch_214
    move-exception v7

    .line 1118
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v18, "ConnectivityManager"

    const-string v19, "NullPointerException isApnTypeAvailable()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_185

    .line 1158
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v4    # "b":Landroid/os/IBinder;
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v16    # "request":Landroid/net/NetworkRequest;
    :cond_222
    :try_start_222
    sget-object v18, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1159
    .local v11, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v11, :cond_264

    .line 1160
    const-string v18, "ConnectivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "renewing startUsingNetworkFeature request "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v11, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/net/ConnectivityManager;->renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 1162
    iget-object v0, v11, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    move-object/from16 v18, v0

    if-eqz v18, :cond_25f

    .line 1163
    const/16 v18, 0x0

    monitor-exit v19

    goto/16 :goto_32

    .line 1165
    :cond_25f
    const/16 v18, 0x1

    monitor-exit v19

    goto/16 :goto_32

    .line 1169
    :cond_264
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/ConnectivityManager;->requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;

    move-result-object v16

    .line 1170
    monitor-exit v19
    :try_end_26b
    .catchall {:try_start_222 .. :try_end_26b} :catchall_211

    .line 1171
    if-eqz v16, :cond_2c7

    .line 1172
    const-string v18, "ConnectivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "starting startUsingNetworkFeature for request "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :try_start_28a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v15

    .line 1176
    .local v15, "network":Landroid/net/Network;
    if-eqz v15, :cond_2c3

    .line 1177
    const-string v18, "ConnectivityManager"

    const-string/jumbo v19, "return APN ALREADY ACTIVE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_28a .. :try_end_2a4} :catch_2a8

    .line 1178
    const/16 v18, 0x0

    goto/16 :goto_32

    .line 1180
    .end local v15    # "network":Landroid/net/Network;
    :catch_2a8
    move-exception v7

    .line 1181
    .local v7, "e":Ljava/lang/Exception;
    const-string v18, "ConnectivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getNetworkForType "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2c3
    const/16 v18, 0x1

    goto/16 :goto_32

    .line 1186
    :cond_2c7
    const-string v18, "ConnectivityManager"

    const-string v19, " request Failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/16 v18, 0x3

    goto/16 :goto_32
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 9
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1207
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1208
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v1, :cond_2a

    .line 1209
    const-string v3, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t satisfy stopUsingNetworkFeature for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v3, -0x1

    .line 1237
    :goto_29
    return v3

    .line 1216
    :cond_2a
    sget-object v4, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 1217
    :try_start_2d
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1218
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_7c

    .line 1219
    const-string v3, "ConnectivityManager"

    const-string/jumbo v5, "replace netCap from sLegacyRequests"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1224
    :goto_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_85

    .line 1228
    sget-object v3, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    if-eqz v3, :cond_4e

    .line 1229
    sget-object v3, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    const v4, 0x8000a

    invoke-virtual {v3, v4, v1}, Landroid/net/ConnectivityManager$CallbackHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1232
    :cond_4e
    invoke-direct {p0, v1}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    .line 1233
    .local v2, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    if-eqz v2, :cond_7a

    .line 1234
    const-string v3, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUsingNetworkFeature for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1237
    :cond_7a
    const/4 v3, 0x1

    goto :goto_29

    .line 1222
    .end local v2    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :cond_7c
    :try_start_7c
    const-string v3, "ConnectivityManager"

    const-string/jumbo v5, "not found netCap at sLegacyRequests"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1224
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_85
    move-exception v3

    monitor-exit v4
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_85

    throw v3
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 2319
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2322
    :goto_5
    return-void

    .line 2320
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public tether(Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1849
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1851
    :goto_6
    return v1

    .line 1850
    :catch_7
    move-exception v0

    .line 1851
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 4
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 2934
    if-eqz p1, :cond_10

    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_10

    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-nez v0, :cond_18

    .line 2936
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid NetworkCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2939
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    # getter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    .line 2941
    :goto_21
    return-void

    .line 2940
    :catch_22
    move-exception v0

    goto :goto_21
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 2480
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2482
    :goto_5
    return-void

    .line 2481
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public untether(Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1867
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1869
    :goto_6
    return v1

    .line 1868
    :catch_7
    move-exception v0

    .line 1869
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public updateLockdownVpn()Z
    .registers 3

    .prologue
    .line 2285
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2287
    :goto_6
    return v1

    .line 2286
    :catch_7
    move-exception v0

    .line 2287
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
