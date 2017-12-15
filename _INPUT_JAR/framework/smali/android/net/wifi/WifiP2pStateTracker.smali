.class public Landroid/net/wifi/WifiP2pStateTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "WifiP2pStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiP2pStateTracker$1;,
        Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;
    }
.end annotation


# static fields
.field private static final LOGV:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final TAG:Ljava/lang/String; = "WifiP2pStateTracker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSamplingDataTracker:Landroid/net/SamplingDataTracker;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiP2pStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 6
    .param p1, "netType"    # I
    .param p2, "networkName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 59
    new-instance v0, Landroid/net/SamplingDataTracker;

    invoke-direct {v0}, Landroid/net/SamplingDataTracker;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    .line 68
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v2, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 69
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 72
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 73
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiP2pStateTracker;->setTeardownRequested(Z)V

    .line 74
    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiP2pStateTracker;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiP2pStateTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiP2pStateTracker;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiP2pStateTracker;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiP2pStateTracker;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 293
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 294
    return-void
.end method

.method public defaultRouteSet(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    return-void
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 222
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 215
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 209
    return-void
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public reconnectDualMMS(I)Z
    .registers 3
    .param p1, "usingNetworkType"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 298
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 299
    return-void
.end method

.method public setDependencyMet(Z)V
    .registers 2
    .param p1, "met"    # Z

    .prologue
    .line 289
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    const-string v0, "WifiP2pStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public setPolicyDataEnableSecondary(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    return-void
.end method

.method public setRadio(Z)Z
    .registers 3
    .param p1, "turnOn"    # Z

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .registers 3
    .param p1, "isRequested"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    return-void
.end method

.method public setUserDataEnable(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 173
    const-string v0, "WifiP2pStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 179
    return-void
.end method

.method public setUserDataEnableSecondary(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 190
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 89
    iput-object p2, p0, Landroid/net/wifi/WifiP2pStateTracker;->mCsHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;-><init>(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/wifi/WifiP2pStateTracker$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mWifiP2pStateReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iget-object v1, p0, Landroid/net/wifi/WifiP2pStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/WifiP2pStateTracker;->mWifiP2pStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .registers 3
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 313
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 314
    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .registers 3
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 318
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 319
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .registers 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 304
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;I)V
    .registers 3
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "phoneIndex"    # I

    .prologue
    .line 309
    return-void
.end method

.method public teardown()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Landroid/net/wifi/WifiP2pStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    return v1
.end method

.method public teardownDualMMS(I)Z
    .registers 3
    .param p1, "usingNetworkType"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method
