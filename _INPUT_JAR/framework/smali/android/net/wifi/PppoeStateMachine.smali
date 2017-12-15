.class public Landroid/net/wifi/PppoeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/PppoeStateMachine$3;,
        Landroid/net/wifi/PppoeStateMachine$OnlineState;,
        Landroid/net/wifi/PppoeStateMachine$ConnectingState;,
        Landroid/net/wifi/PppoeStateMachine$ConnectState;,
        Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;,
        Landroid/net/wifi/PppoeStateMachine$OfflineState;,
        Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;,
        Landroid/net/wifi/PppoeStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final PPPOE_ENABLED:Z

.field private static final PPPOE_INTERFACE:Ljava/lang/String; = "ppp3"

.field private static final PPPOE_NET_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "PppoeStateMachine"

.field private static final WIFI_INTERFACE_PROP:Ljava/lang/String; = "wifi.interface"

.field private static final WLAN_INTERFACE:Ljava/lang/String; = "wlan0"


# instance fields
.field private createNetwok:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

.field private mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

.field private mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

.field private mGateWayProp:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocalProp:Ljava/lang/String;

.field private mNetworkManagementEventObserver:Landroid/net/INetworkManagementEventObserver;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

.field private mOldDns1:Ljava/lang/String;

.field private mOldDns2:Ljava/lang/String;

.field private mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

.field private mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

.field private mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

.field private mPppoeRunningTime:J

.field private mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    const-string/jumbo v2, "ro.config.pppoe_enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_b
    sput-boolean v0, Landroid/net/wifi/PppoeStateMachine;->PPPOE_ENABLED:Z

    return-void

    :cond_e
    move v0, v1

    goto :goto_b
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 110
    const-string v2, "PppoeStateMachine"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$DefaultState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    .line 71
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    .line 72
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$OfflineState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$OfflineState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    .line 73
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    .line 74
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$ConnectState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    .line 75
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    .line 76
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$OnlineState;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    .line 78
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 81
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    .line 90
    iput-boolean v5, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    .line 92
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$1;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementEventObserver:Landroid/net/INetworkManagementEventObserver;

    .line 111
    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    .line 113
    new-instance v2, Landroid/net/wifi/PppoeStateMachine$2;

    invoke-direct {v2, p0}, Landroid/net/wifi/PppoeStateMachine$2;-><init>(Landroid/net/wifi/PppoeStateMachine;)V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 138
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.PPPOE_IP_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 144
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 145
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 146
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 147
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mDefaultState:Landroid/net/wifi/PppoeStateMachine$DefaultState;

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 148
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 149
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectState:Landroid/net/wifi/PppoeStateMachine$ConnectState;

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 151
    sget-boolean v2, Landroid/net/wifi/PppoeStateMachine;->PPPOE_ENABLED:Z

    if-eqz v2, :cond_f0

    .line 153
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_c9

    .line 154
    const-string v2, "PppoeStateMachine"

    const-string v3, "create mNetworkManagementService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 157
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 158
    iput-boolean v5, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    .line 160
    :try_start_c2
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementEventObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_c9} :catch_d6

    .line 166
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_c9
    :goto_c9
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    invoke-virtual {p0, v2}, Landroid/net/wifi/PppoeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 171
    :goto_ce
    new-instance v2, Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v2}, Landroid/net/wifi/PPPOEInfo;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    .line 172
    return-void

    .line 161
    .restart local v0    # "b":Landroid/os/IBinder;
    :catch_d6
    move-exception v1

    .line 162
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PppoeStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering observer :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 168
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f0
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeUnsupportedState:Landroid/net/wifi/PppoeStateMachine$PppoeUnsupportedState;

    invoke-virtual {p0, v2}, Landroid/net/wifi/PppoeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_ce
.end method

.method static synthetic access$000(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEInfo;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$102(Landroid/net/wifi/PppoeStateMachine;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/net/wifi/PppoeStateMachine;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/PppoeStateMachine;->createNetworkInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OnlineState;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/PppoeStateMachine;I)V
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/PppoeStateMachine;Landroid/os/Message;II)V
    .registers 4
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/PppoeStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mLocalProp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mLocalProp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Landroid/net/wifi/PppoeStateMachine;J)J
    .registers 4
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/RouteInfo;
    .param p4, "x4"    # [Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 57
    invoke-direct/range {p0 .. p6}, Landroid/net/wifi/PppoeStateMachine;->updateNetworkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/PPPOEInfo$Status;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEConfig;)Landroid/net/wifi/PPPOEConfig;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$ConnectingState;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mConnectingState:Landroid/net/wifi/PppoeStateMachine$ConnectingState;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mGateWayProp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine;->mGateWayProp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Landroid/net/RouteInfo;I)V
    .registers 4
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/RouteInfo;
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/PppoeStateMachine;->removeNetworkInfo(Ljava/lang/String;Landroid/net/RouteInfo;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OfflineState;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/PppoeStateMachine;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;

    return-object v0
.end method

.method private createNetworkInfo(Ljava/lang/String;I)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 432
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNetworkInfo, iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    if-nez v1, :cond_35

    .line 435
    const-string v1, "PppoeStateMachine"

    const-string v2, "createPhysicalNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_27
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V

    .line 438
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 439
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_36

    .line 444
    :cond_35
    :goto_35
    return-void

    .line 440
    :catch_36
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating network 1001: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public static makePppoeStateMachine(Landroid/content/Context;)Landroid/net/wifi/PppoeStateMachine;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    new-instance v0, Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {v0, p0}, Landroid/net/wifi/PppoeStateMachine;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "psm":Landroid/net/wifi/PppoeStateMachine;
    invoke-virtual {v0}, Landroid/net/wifi/PppoeStateMachine;->start()V

    .line 177
    return-object v0
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 519
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 520
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 521
    return-object v0
.end method

.method private removeNetworkInfo(Ljava/lang/String;Landroid/net/RouteInfo;I)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;
    .param p3, "netId"    # I

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeNetworkInfo, netId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_55

    iget-boolean v3, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    if-eqz v3, :cond_55

    .line 452
    const-string v3, "PppoeStateMachine"

    const-string/jumbo v4, "removeNetwork"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :try_start_2a
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 455
    const-string/jumbo v3, "wlan0"

    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->getNetIdForInterface(Ljava/lang/String;)I

    move-result v2

    .line 458
    .local v2, "wlanNetId":I
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V

    .line 460
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3}, Landroid/os/INetworkManagementService;->flushNetworkDnsCache(I)V

    .line 462
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    .line 463
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3}, Landroid/os/INetworkManagementService;->removeNetwork(I)V

    .line 464
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_52} :catch_56

    .line 468
    .end local v2    # "wlanNetId":I
    :goto_52
    invoke-direct {p0}, Landroid/net/wifi/PppoeStateMachine;->restorePppoeDNSProperity()V

    .line 470
    :cond_55
    return-void

    .line 465
    :catch_56
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error remove network 1001: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 511
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 516
    :goto_4
    return-void

    .line 512
    :cond_5
    invoke-direct {p0, p1}, Landroid/net/wifi/PppoeStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 513
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 514
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 515
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private restorePppoeDNSProperity()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 542
    const-string/jumbo v1, "net.pppoe.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "pppoeState":Ljava/lang/String;
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restorePppoeDNSProperity, pppoeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string/jumbo v1, "offline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 546
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 547
    const-string/jumbo v1, "net.dns1"

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iput-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    .line 550
    :cond_38
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 551
    const-string/jumbo v1, "net.dns2"

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iput-object v4, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    .line 555
    :cond_46
    return-void
.end method

.method private sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "resultStatus"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "pppoe_result_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v1, "FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 570
    const-string/jumbo v1, "pppoe_result_error_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    :cond_1b
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 573
    return-void
.end method

.method private setPppoeDNSProperity([Ljava/lang/String;)V
    .registers 8
    .param p1, "dns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 525
    const-string/jumbo v1, "net.pppoe.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "pppoeState":Ljava/lang/String;
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPppoeDNS, pppoeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string/jumbo v1, "online"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 529
    aget-object v1, p1, v4

    if-eqz v1, :cond_4a

    aget-object v1, p1, v4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 530
    const-string/jumbo v1, "net.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;

    .line 531
    const-string/jumbo v1, "net.dns1"

    aget-object v2, p1, v4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_4a
    aget-object v1, p1, v5

    if-eqz v1, :cond_69

    aget-object v1, p1, v5

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 535
    const-string/jumbo v1, "net.dns2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;

    .line 536
    const-string/jumbo v1, "net.dns2"

    aget-object v2, p1, v5

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_69
    return-void
.end method

.method private setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V
    .registers 3
    .param p1, "status"    # Landroid/net/wifi/PPPOEInfo$Status;

    .prologue
    .line 507
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    iput-object p1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 508
    return-void
.end method

.method private setPppoeState(Ljava/lang/String;)V
    .registers 4
    .param p1, "pppoeState"    # Ljava/lang/String;

    .prologue
    .line 558
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    .line 564
    :goto_4
    return-void

    .line 561
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "pppoe_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private updateNetworkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/net/RouteInfo;
    .param p4, "servers"    # [Ljava/lang/String;
    .param p5, "domains"    # Ljava/lang/String;
    .param p6, "netId"    # I

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    const-string/jumbo v3, "net.pppoe.mtu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "mtu":Ljava/lang/String;
    const-string v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNetworkInfo, iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_8d

    iget-boolean v3, p0, Landroid/net/wifi/PppoeStateMachine;->createNetwok:Z

    if-eqz v3, :cond_8d

    .line 480
    :try_start_29
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 481
    if-eqz v1, :cond_47

    .line 482
    new-instance v3, Landroid/net/LinkAddress;

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v3}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 483
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 484
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 486
    :cond_47
    if-eqz v2, :cond_5a

    .line 487
    const-string v3, "PppoeStateMachine"

    const-string/jumbo v4, "updateNetworkInterface, set mtu"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V

    .line 491
    :cond_5a
    const-string v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNetworkInfo, route="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p6, p3}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V

    .line 494
    const-string v3, "PppoeStateMachine"

    const-string/jumbo v4, "updateNetworkDnses"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p6, p4, p5}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v3, p0, Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p6}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_8a} :catch_8e

    .line 502
    :goto_8a
    invoke-direct {p0, p4}, Landroid/net/wifi/PppoeStateMachine;->setPppoeDNSProperity([Ljava/lang/String;)V

    .line 504
    :cond_8d
    return-void

    .line 498
    :catch_8e
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error configuring interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method


# virtual methods
.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 181
    const-string v0, "PppoeStateMachine"

    const-string v1, "PppoeStateMachine: getPPPOEInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-wide v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 183
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 187
    :goto_1a
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    return-object v0

    .line 185
    :cond_1d
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/PPPOEInfo;

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    goto :goto_1a
.end method
