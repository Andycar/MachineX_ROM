.class Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IpRemoteDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdBridgeAdapter"
.end annotation


# static fields
.field public static final CONNECT_TYPE_CLIENT:I = 0x0

.field public static final CONNECT_TYPE_SERVER:I = 0x1

.field public static final SCREEN_OFF:I = 0x0

.field public static final SCREEN_ON:I = 0x1

.field public static final SCREEN_STATE_MASK:I = 0x4

.field public static final SCREEN_STATE_SHIFT:I = 0x2

.field public static final SINK_STATE_MASK:I = 0x1

.field public static final SINK_STATE_SHIFT:I = 0x0

.field public static final SOURCE_STATE_MASK:I = 0x2

.field public static final SOURCE_STATE_SHIFT:I = 0x1

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field private static final WFD_BRIDGE_PORT:I = 0x26b5


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBridge:Lcom/android/server/display/WfdBridgeBase;

.field private final mBridgeListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

.field private mPendingDev:I

.field private mPendingType:I

.field private mScreenState:I

.field private mSinkState:I

.field private mSourceState:I

.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;)V
    .registers 6
    .param p2, "inet"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 977
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    const-string v0, "WfdBridgeAdapter"

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->TAG:Ljava/lang/String;

    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    .line 892
    iput v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I

    .line 893
    iput v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I

    .line 901
    iput v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSinkState:I

    .line 902
    iput v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSourceState:I

    .line 903
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mScreenState:I

    .line 913
    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;-><init>(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridgeListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .line 978
    const-string v0, "WfdBridgeAdapter"

    const-string v1, "Create WFD Bridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/16 v0, 0x26b5

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridgeListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-static {p2, v0, v1}, Lcom/android/server/display/WfdBridgeBase;->getInstance(Ljava/net/InetAddress;ILcom/android/server/display/WfdBridgeBase$BridgeListner;)Lcom/android/server/display/WfdBridgeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    .line 980
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .prologue
    .line 884
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mScreenState:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .prologue
    .line 884
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 884
    iput p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .prologue
    .line 884
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 884
    iput p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I

    return p1
.end method


# virtual methods
.method public connect()V
    .registers 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase;->connect()V

    .line 984
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase;->disconnect()V

    .line 988
    return-void
.end method

.method public getBridgeConnType()I
    .registers 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    instance-of v0, v0, Lcom/android/server/display/WfdBridgeServer;

    if-eqz v0, :cond_8

    .line 1093
    const/4 v0, 0x1

    .line 1096
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getConnAddr()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v1}, Lcom/android/server/display/WfdBridgeBase;->getConnectAddrList()[Ljava/net/InetAddress;

    move-result-object v0

    .line 1050
    .local v0, "addrList":[Ljava/net/InetAddress;
    if-eqz v0, :cond_c

    .line 1051
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 1053
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getState()I
    .registers 3

    .prologue
    .line 1081
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSinkState:I

    shl-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSourceState:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mScreenState:I

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWfdEngineRunning()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1087
    const-string v3, "WfdBridgeAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWFDEngineRunning : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSinkState:I

    iget v5, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSourceState:I

    add-int/2addr v0, v5

    if-lez v0, :cond_2a

    move v0, v1

    :goto_17
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSinkState:I

    iget v3, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSourceState:I

    add-int/2addr v0, v3

    if-lez v0, :cond_2c

    :goto_29
    return v1

    :cond_2a
    move v0, v2

    .line 1087
    goto :goto_17

    :cond_2c
    move v1, v2

    .line 1088
    goto :goto_29
.end method

.method public requestSink(Landroid/net/wifi/p2p/WifiP2pDevice;I)I
    .registers 7
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1018
    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I

    if-gez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1021
    :cond_11
    const/4 v0, -0x1

    .line 1030
    :goto_12
    return v0

    .line 1023
    :cond_13
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I

    .line 1024
    iput p2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I

    .line 1026
    const-string v1, "WfdBridgeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSink deviceType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sinkDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/display/WfdBridgeBase;->request(Landroid/net/wifi/p2p/WifiP2pDevice;II)V

    goto :goto_12
.end method

.method public requestSource(I)I
    .registers 6
    .param p1, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1036
    :cond_d
    const/4 v0, -0x1

    .line 1045
    :goto_e
    return v0

    .line 1038
    :cond_f
    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I

    .line 1039
    iput p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I

    .line 1041
    const-string v1, "WfdBridgeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSource deviceType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/display/WfdBridgeBase;->request(Landroid/net/wifi/p2p/WifiP2pDevice;II)V

    goto :goto_e
.end method

.method public setScreenState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 1073
    iput p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mScreenState:I

    .line 1074
    return-void
.end method

.method public setSinkState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 1057
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSinkState:I

    if-eq p1, v0, :cond_6

    if-gez p1, :cond_7

    .line 1062
    :cond_6
    :goto_6
    return-void

    .line 1060
    :cond_7
    iput p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSinkState:I

    .line 1061
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSinkState:I

    iget v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSourceState:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WfdBridgeBase;->sendBusyflag(I)V

    goto :goto_6
.end method

.method public setSourceState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 1065
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSourceState:I

    if-eq p1, v0, :cond_6

    if-gez p1, :cond_7

    .line 1070
    :cond_6
    :goto_6
    return-void

    .line 1068
    :cond_7
    iput p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSourceState:I

    .line 1069
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSinkState:I

    iget v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mSourceState:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WfdBridgeBase;->sendBusyflag(I)V

    goto :goto_6
.end method

.method public startWFDEngine(IILjava/net/InetAddress;)V
    .registers 8
    .param p1, "dev"    # I
    .param p2, "type"    # I
    .param p3, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x1

    .line 996
    invoke-virtual {p0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 999
    const-string v1, "WfdBridgeAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t start WFD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_47

    const-string v0, "Sink"

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Engine. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4a

    const-string v0, "Sink"

    :goto_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " engine already running."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridgeListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/16 v1, 0x12e

    invoke-interface {v0, v1}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onError(I)V

    .line 1011
    :goto_46
    return-void

    .line 999
    :cond_47
    const-string v0, "Source"

    goto :goto_1a

    :cond_4a
    const-string v0, "Source"

    goto :goto_2e

    .line 1006
    :cond_4d
    if-ne p1, v3, :cond_55

    .line 1007
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayerByWBS(ILjava/net/InetAddress;)V
    invoke-static {v0, p2, p3}, Lcom/android/server/display/IpRemoteDisplayController;->access$2300(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V

    goto :goto_46

    .line 1009
    :cond_55
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v1}, Lcom/android/server/display/WfdBridgeBase;->getAddr()Ljava/net/InetAddress;

    move-result-object v1

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(ILjava/net/InetAddress;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$2400(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V

    goto :goto_46
.end method

.method public updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4
    .param p1, "client"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->getBridgeConnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 992
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WfdBridgeBase;->updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 993
    :cond_c
    return-void
.end method
