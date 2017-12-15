.class public Landroid/net/ProxyDataTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "ProxyDataTracker.java"


# static fields
.field private static final ACTION_PROXY_STATUS_CHANGE:Ljava/lang/String; = "com.android.net.PROXY_STATUS_CHANGE"

.field private static final DNS1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS2:Ljava/lang/String; = "8.8.4.4"

.field private static final INTERFACE_NAME:Ljava/lang/String; = "ifb0"

.field private static final KEY_IS_PROXY_AVAILABLE:Ljava/lang/String; = "is_proxy_available"

.field private static final KEY_REPLY_TO_MESSENGER_BINDER:Ljava/lang/String; = "reply_to_messenger_binder"

.field private static final KEY_REPLY_TO_MESSENGER_BINDER_BUNDLE:Ljava/lang/String; = "reply_to_messenger_binder_bundle"

.field private static final MSG_SETUP_REQUEST:I = 0x2

.field private static final MSG_TEAR_DOWN_REQUEST:I = 0x1

.field private static final NETWORK_TYPE:Ljava/lang/String; = "PROXY"

.field private static final PERMISSION_PROXY_STATUS_SENDER:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final REASON_DISABLED:Ljava/lang/String; = "disabled"

.field private static final REASON_ENABLED:Ljava/lang/String; = "enabled"

.field private static final REASON_PROXY_DOWN:Ljava/lang/String; = "proxy_down"

.field private static final TAG:Ljava/lang/String; = "ProxyDataTracker"


# instance fields
.field private final mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProxyStatusService:Landroid/os/Messenger;

.field private final mProxyStatusServiceListener:Landroid/content/BroadcastReceiver;

.field private mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTarget:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    new-instance v1, Landroid/net/ProxyDataTracker$1;

    invoke-direct {v1, p0}, Landroid/net/ProxyDataTracker$1;-><init>(Landroid/net/ProxyDataTracker;)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mProxyStatusServiceListener:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x10

    const-string v3, "PROXY"

    const-string v4, ""

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 107
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 108
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v1, p0, Landroid/net/ProxyDataTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 109
    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 111
    :try_start_41
    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    const-string v2, "8.8.8.8"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 112
    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    const-string v2, "8.8.4.4"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 113
    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    const-string v2, "ifb0"

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/net/UnknownHostException; {:try_start_41 .. :try_end_5e} :catch_5f

    .line 117
    :goto_5e
    return-void

    .line 114
    :catch_5f
    move-exception v0

    .line 115
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "ProxyDataTracker"

    const-string v2, "Could not add DNS address"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e
.end method

.method static synthetic access$000(Landroid/net/ProxyDataTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Landroid/net/ProxyDataTracker;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/ProxyDataTracker;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Landroid/net/ProxyDataTracker;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 44
    iput-object p1, p0, Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/ProxyDataTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Landroid/net/ProxyDataTracker;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/ProxyDataTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/net/ProxyDataTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mTarget:Landroid/os/Handler;

    const/high16 v2, 0x70000

    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public getDefaultGatewayAddr()I
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/net/ProxyDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public reconnect()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 156
    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    invoke-virtual {p0, v1}, Landroid/net/ProxyDataTracker;->setTeardownRequested(Z)V

    .line 158
    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 159
    const-string v2, "ProxyDataTracker"

    const-string v3, "Reconnect requested even though proxy service is not up. Bailing."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_1a
    return v1

    .line 162
    :cond_1b
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "enabled"

    invoke-direct {p0, v3, v4, v6}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_22
    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_36

    .line 173
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "enabled"

    invoke-direct {p0, v1, v3, v6}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 174
    goto :goto_1a

    .line 166
    :catch_36
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ProxyDataTracker"

    const-string v3, "Unable to connect to proxy status service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v3, "proxy_down"

    invoke-direct {p0, v2, v3, v6}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 126
    iput-object p1, p0, Landroid/net/ProxyDataTracker;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Landroid/net/ProxyDataTracker;->mTarget:Landroid/os/Handler;

    .line 128
    iget-object v0, p0, Landroid/net/ProxyDataTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/ProxyDataTracker;->mProxyStatusServiceListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.net.PROXY_STATUS_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.ACCESS_NETWORK_CONDITIONS"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method public teardown()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    invoke-virtual {p0, v1}, Landroid/net/ProxyDataTracker;->setTeardownRequested(Z)V

    .line 139
    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    :try_start_b
    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;

    if-eqz v3, :cond_22

    .line 142
    iget-object v3, p0, Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_22} :catch_2a

    .line 148
    :cond_22
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "disabled"

    invoke-direct {p0, v2, v3, v6}, Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_29
    return v1

    .line 144
    :catch_2a
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProxyDataTracker"

    const-string v3, "Unable to connect to proxy status service"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 146
    goto :goto_29
.end method
