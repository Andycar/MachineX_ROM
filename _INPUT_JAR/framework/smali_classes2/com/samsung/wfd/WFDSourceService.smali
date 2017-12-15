.class public Lcom/samsung/wfd/WFDSourceService;
.super Landroid/app/Service;
.source "WFDSourceService.java"

# interfaces
.implements Lcom/samsung/wfd/WFDNative$WfdActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDSourceService$2;,
        Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EXTRA_CONNECTED_SESSION_ID:Ljava/lang/String; = "connectedSessionID"

.field private static final HALF_SEC:I = 0x1f4

.field private static final NOTIFICATION_ID:I = 0x64

.field private static final OPERATION_TIMEOUT:I = 0xbb8

.field private static PLAYBACK_MODE:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode; = null

.field private static final StaticLock:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "WFDSourceService"

.field private static final TIMEOUT_TRY:I = 0x5

.field private static bStandbyMode:Z

.field private static mContext:Landroid/content/Context;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static m_bAlive:Z


# instance fields
.field private IS_HDCP_ENABLED:Z

.field private IS_RTP_TRANSPORT_NEGOTIATED:Z

.field private final WDTS_PAUSE:I

.field private final WDTS_PLAY:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mBlockedRemoteEvents:Z

.field mCountdown:Landroid/os/CountDownTimer;

.field private mCpuLockEnabled:Z

.field private mFrequency:I

.field private mIsEnabled:Z

.field private mMyDevice:Lcom/samsung/wfd/WfdDevice;

.field private mPauseMode:Z

.field private mPeerDevice:Lcom/samsung/wfd/WfdDevice;

.field private mPhoneCall:Z

.field private mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

.field private mPrivateEventsMode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenLock:Z

.field private mSessionId:I

.field private mState:Lcom/samsung/wfd/WfdEnums$SessionState;

.field private mUpdateURL:Ljava/lang/String;

.field private mWFDManager:Lcom/samsung/wfd/WfdManager;

.field private final mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private noError:Z

.field private tcpJustSwitched:Z

.field private teardownFromApp:Z

.field private uibcEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    .line 84
    sput-boolean v1, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 107
    sput-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    .line 112
    sput-object v2, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 134
    sget-object v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    sput-object v0, Lcom/samsung/wfd/WFDSourceService;->PLAYBACK_MODE:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 136
    sput-boolean v1, Lcom/samsung/wfd/WFDSourceService;->bStandbyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    sget-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 82
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mIsEnabled:Z

    .line 87
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PLAY:I

    .line 88
    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PAUSE:I

    .line 93
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 95
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 98
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mBlockedRemoteEvents:Z

    .line 99
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrivateEventsMode:Z

    .line 100
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mScreenLock:Z

    .line 101
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPhoneCall:Z

    .line 102
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPauseMode:Z

    .line 108
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    .line 113
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 115
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->IS_HDCP_ENABLED:Z

    .line 120
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->IS_RTP_TRANSPORT_NEGOTIATED:Z

    .line 122
    const/16 v0, 0x780

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioMode:I

    .line 124
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mCountdown:Landroid/os/CountDownTimer;

    .line 127
    sget-object v0, Lcom/samsung/wfd/WfdEnums$ConnectionType;->UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 128
    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 130
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 132
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 138
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z

    .line 140
    new-instance v0, Lcom/samsung/wfd/WFDSourceService$1;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WFDSourceService$1;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    .line 336
    return-void
.end method

.method private StartRTSP()V
    .registers 3

    .prologue
    .line 618
    const-string v0, "WFDSourceService"

    const-string v1, "StartRTSP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 621
    const-string v0, "com.samsung.wfd.WFD_SERVICE_STARTED"

    invoke-static {v0}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/wfd/WFDSourceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    return v0
.end method

.method static synthetic access$1300(Ljava/lang/String;I)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1402(Lcom/samsung/wfd/WFDSourceService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/wfd/WFDSourceService;II)I
    .registers 4
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/samsung/wfd/WFDSourceService;->setResolution(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/wfd/WFDSourceService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->setBitrate(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/wfd/WFDSourceService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WFDSourceService;Z)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->internalPause(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/wfd/WFDSourceService;Z)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->internalPlay(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/wfd/WFDSourceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # Lcom/samsung/wfd/WfdDevice;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # Lcom/samsung/wfd/WfdDevice;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/WFDUibcManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdEnums$ConnectionType;)Lcom/samsung/wfd/WfdEnums$ConnectionType;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p1, "x1"    # Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    return-object p1
.end method

.method private aquireResources()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 190
    :try_start_1
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    const-string v4, "WFDSourceService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_a} :catch_15

    .line 199
    :try_start_a
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    const-string v4, "WfdService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_21

    .line 206
    const/4 v1, 0x1

    :goto_14
    return v1

    .line 192
    :catch_15
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "WFDSourceService"

    const-string v3, "catch Exception aquireResources"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_14

    .line 201
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_21
    move-exception v0

    .line 202
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string v2, "WFDSourceService"

    const-string v3, "catch Exception aquireResources"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_14
.end method

.method private internalPause(Z)I
    .registers 8
    .param p1, "secureFlag"    # Z

    .prologue
    .line 1142
    const-string v2, "WFDSourceService"

    const-string v3, "internalPause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1145
    :try_start_a
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 1147
    .local v0, "beforeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v4, :cond_45

    .line 1148
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->pause(Z)I
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_3f

    .line 1150
    :try_start_15
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1151
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v0, :cond_42

    .line 1152
    const-string v2, "WFDSourceService"

    const-string v4, "ERROR: pause not set. time out happened"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_2c} :catch_2f
    .catchall {:try_start_15 .. :try_end_2c} :catchall_3f

    move-result v2

    :try_start_2d
    monitor-exit v3

    .line 1163
    :goto_2e
    return v2

    .line 1155
    :catch_2f
    move-exception v1

    .line 1156
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "WFDSourceService"

    const-string v4, "Wait for PAUSE interrupted"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v2

    monitor-exit v3

    goto :goto_2e

    .line 1165
    .end local v0    # "beforeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_3f

    throw v2

    .line 1160
    .restart local v0    # "beforeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    :cond_42
    const/4 v2, 0x0

    :try_start_43
    monitor-exit v3

    goto :goto_2e

    .line 1162
    :cond_45
    const-string v2, "WFDSourceService"

    const-string v4, "WfdEnums.Session state is not PLAY"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v2

    monitor-exit v3
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_3f

    goto :goto_2e
.end method

.method private internalPlay(Z)I
    .registers 8
    .param p1, "secureFlag"    # Z

    .prologue
    .line 1117
    const-string v2, "WFDSourceService"

    const-string v3, "internalPlay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1120
    :try_start_a
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 1121
    .local v0, "beforeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v2, v4, :cond_18

    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v4, :cond_4b

    .line 1122
    :cond_18
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->play(Z)I
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_45

    .line 1124
    :try_start_1b
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1125
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v0, :cond_48

    .line 1126
    const-string v2, "WFDSourceService"

    const-string v4, "ERROR: play not set. time out happened"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_32} :catch_35
    .catchall {:try_start_1b .. :try_end_32} :catchall_45

    move-result v2

    :try_start_33
    monitor-exit v3

    .line 1136
    :goto_34
    return v2

    .line 1129
    :catch_35
    move-exception v1

    .line 1130
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "WFDSourceService"

    const-string v4, "Wait for PLAY interrupted"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v2

    monitor-exit v3

    goto :goto_34

    .line 1138
    .end local v0    # "beforeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_45

    throw v2

    .line 1133
    .restart local v0    # "beforeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    :cond_48
    const/4 v2, 0x0

    :try_start_49
    monitor-exit v3

    goto :goto_34

    .line 1135
    :cond_4b
    const-string v2, "WFDSourceService"

    const-string v4, "WfdEnums.Session state is not ESTABLISHED or PAUSE"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v2

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_45

    goto :goto_34
.end method

.method public static isAlive()Z
    .registers 2

    .prologue
    .line 630
    const-string v0, "WFDSourceService"

    const-string v1, "isAlive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    sget-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    return v0
.end method

.method private static sendBroadcastIntent(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 894
    const-string v1, "WFDSourceService"

    const-string/jumbo v2, "sendBroadcastIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 897
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 898
    :cond_1b
    return-void
.end method

.method private static sendBroadcastIntent(Ljava/lang/String;I)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    .line 901
    const-string v1, "WFDSourceService"

    const-string/jumbo v2, "sendBroadcastIntent(Flag)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 904
    const-string v1, "CONNECTION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_20

    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    :cond_20
    return-void
.end method

.method private setBitrate(I)I
    .registers 3
    .param p1, "bitrate"    # I

    .prologue
    .line 1074
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setBitrate(I)V

    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method private setResolution(II)I
    .registers 11
    .param p1, "formatType"    # I
    .param p2, "value"    # I

    .prologue
    .line 1027
    const-string v4, "WFDSourceService"

    const-string/jumbo v5, "setResolution"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1029
    const/4 v3, 0x0

    .line 1030
    .local v3, "ret":I
    :try_start_c
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->values()[Lcom/samsung/wfd/WfdEnums$CapabilityType;

    move-result-object v4

    aget-object v2, v4, p1

    .line 1031
    .local v2, "resolutionType":Lcom/samsung/wfd/WfdEnums$CapabilityType;
    sget-object v4, Lcom/samsung/wfd/WFDSourceService$2;->$SwitchMap$com$samsung$wfd$WfdEnums$CapabilityType:[I

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_bc

    .line 1048
    sget-object v4, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v4

    monitor-exit v5

    .line 1068
    :goto_24
    return v4

    .line 1033
    :pswitch_25
    invoke-static {p2}, Lcom/samsung/wfd/WfdEnums;->isCeaResolution(I)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1034
    sget-object v4, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v4

    monitor-exit v5

    goto :goto_24

    .line 1069
    .end local v2    # "resolutionType":Lcom/samsung/wfd/WfdEnums$CapabilityType;
    :catchall_33
    move-exception v4

    monitor-exit v5
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_33

    throw v4

    .line 1038
    .restart local v2    # "resolutionType":Lcom/samsung/wfd/WfdEnums$CapabilityType;
    :pswitch_36
    :try_start_36
    invoke-static {p2}, Lcom/samsung/wfd/WfdEnums;->isHhResolution(I)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1039
    sget-object v4, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v4

    monitor-exit v5

    goto :goto_24

    .line 1043
    :pswitch_44
    invoke-static {p2}, Lcom/samsung/wfd/WfdEnums;->isVesaResolution(I)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1044
    sget-object v4, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v4

    monitor-exit v5

    goto :goto_24

    .line 1050
    :cond_52
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 1051
    .local v0, "beforeResChangeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v0, v4, :cond_85

    .line 1053
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/wfd/WFDSourceService;->internalPause(Z)I

    move-result v3

    .line 1054
    const-string v4, "WFDSourceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "internalPause ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", continuing setResolution"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    if-eqz v3, :cond_85

    .line 1056
    sget-object v4, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v4

    monitor-exit v5

    goto :goto_24

    .line 1059
    :cond_85
    invoke-static {}, Lcom/samsung/wfd/WfdEnums;->getResParams()[I

    move-result-object v1

    .line 1060
    .local v1, "resParams":[I
    invoke-static {p1, p2, v1}, Lcom/samsung/wfd/WFDNative;->setResolution(II[I)Z

    move-result v4

    if-nez v4, :cond_96

    .line 1061
    const-string v4, "WFDSourceService"

    const-string v6, "Setting new resolution failed!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_96
    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v0, v4, :cond_b7

    .line 1065
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/wfd/WFDSourceService;->internalPlay(Z)I

    move-result v3

    .line 1066
    const-string v4, "WFDSourceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "internalPlay ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_b7
    const/4 v4, 0x0

    monitor-exit v5
    :try_end_b9
    .catchall {:try_start_36 .. :try_end_b9} :catchall_33

    goto/16 :goto_24

    .line 1031
    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_25
        :pswitch_36
        :pswitch_44
    .end packed-switch
.end method

.method private startForegroundCompat()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1008
    const-string v3, "WFDSourceService"

    const-string/jumbo v4, "startForegroundCompat"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1011
    .local v2, "notification":Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1014
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1015
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1017
    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/samsung/wfd/WFDSourceService;->startForeground(ILandroid/app/Notification;)V

    .line 1018
    return-void
.end method

.method private stopForegroundCompat()V
    .registers 3

    .prologue
    .line 1022
    const-string v0, "WFDSourceService"

    const-string/jumbo v1, "stopForegroundCompat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WFDSourceService;->stopForeground(Z)V

    .line 1024
    return-void
.end method


# virtual methods
.method public notify(Landroid/os/Bundle;I)V
    .registers 11
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "sessionId"    # I

    .prologue
    .line 871
    if-eqz p1, :cond_87

    .line 872
    const-string v5, "WFDSourceService"

    const-string v6, "Notify from WFDNative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v5, "event"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "event":Ljava/lang/String;
    const-string v5, "MMStreamStarted"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 875
    const-string/jumbo v5, "width"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, "width":Ljava/lang/String;
    const-string v5, "height"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 877
    .local v2, "height":Ljava/lang/String;
    const-string v5, "hdcp"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "hdcp":Ljava/lang/String;
    const-string v5, "WFDSourceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negotiated Resolution, Width : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Height : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HDCP : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 884
    const-string/jumbo v5, "width"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    const-string v5, "height"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    const-string v5, "hdcp"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 887
    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_87

    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 891
    .end local v0    # "event":Ljava/lang/String;
    .end local v1    # "hdcp":Ljava/lang/String;
    .end local v2    # "height":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "width":Ljava/lang/String;
    :cond_87
    return-void
.end method

.method public notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V
    .registers 9
    .param p1, "event"    # Lcom/samsung/wfd/WfdEnums$WfdEvent;
    .param p2, "sessionId"    # I

    .prologue
    .line 653
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyEvent() Session id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 656
    :try_start_1b
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_2f

    .line 657
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    iget v4, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v2, v4}, Landroid/media/WFDUibcManager;->start(I)Z

    .line 658
    :cond_2a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    .line 763
    :cond_2d
    :goto_2d
    monitor-exit v3

    .line 764
    return-void

    .line 659
    :cond_2f
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_45

    .line 660
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    iget v4, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v2, v4}, Landroid/media/WFDUibcManager;->stop(I)Z

    .line 661
    :cond_3e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    goto :goto_2d

    .line 763
    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_1b .. :try_end_44} :catchall_42

    throw v2

    .line 662
    :cond_45
    :try_start_45
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_5d

    .line 663
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->mIsEnabled:Z

    .line 664
    const-string v2, "com.samsung.wfd.WFD_SESSION_ENABLED"

    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 665
    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->ENABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 666
    const-string v2, "WFDSourceService"

    const-string v4, "WFD ENABLED broadcast sent"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 667
    :cond_5d
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_83

    .line 668
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->mIsEnabled:Z

    .line 669
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 670
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v2, v4, :cond_7b

    .line 671
    const-string v2, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 672
    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 673
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 675
    :cond_7b
    const-string v2, "WFDSourceService"

    const-string v4, "WFD  TERMINATED broadcast sent"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 676
    :cond_83
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_SUCCESS:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_92

    .line 677
    const-string v2, "WFDSourceService"

    const-string v4, "HDCP Connect Success"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->IS_HDCP_ENABLED:Z

    goto :goto_2d

    .line 679
    :cond_92
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_FAIL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_cd

    .line 680
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_c0

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "intent_error_param":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    const-string v2, "cause"

    const-string v4, "HDCP_FAIL"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_b6

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 685
    :cond_b6
    const-string v2, "WFDSourceService"

    const-string v4, "HDCP Connect Fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 688
    .end local v0    # "intent_error_param":Landroid/content/Intent;
    :cond_c0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 689
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->IS_HDCP_ENABLED:Z

    .line 690
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2d

    .line 691
    :cond_cd
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_e9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_e9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_e9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_e9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_e9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_e9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne p1, v2, :cond_12d

    .line 698
    :cond_e9
    const-string v2, "WFDSourceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error event received:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_2d

    .line 701
    const-string v2, "WFDSourceService"

    const-string v4, "TEARDOWN from native. Send Error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .restart local v0    # "intent_error_param":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    const-string v2, "cause"

    const-string v4, "Runtime Error"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_128

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 706
    :cond_128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    goto/16 :goto_2d

    .line 708
    .end local v0    # "intent_error_param":Landroid/content/Intent;
    :cond_12d
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->MM_RTP_EVENT_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_165

    .line 709
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_15b

    .line 710
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .restart local v0    # "intent_error_param":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 712
    const-string v2, "cause"

    const-string v4, "MM_RTP_EVENT_FAILURE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_151

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 714
    :cond_151
    const-string v2, "WFDSourceService"

    const-string v4, "MM_RTP_EVENT Fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 717
    .end local v0    # "intent_error_param":Landroid/content/Intent;
    :cond_15b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 718
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2d

    .line 719
    :cond_165
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->RTP_TRANSPORT_NEGOTIATED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_17a

    .line 720
    const-string v2, "WFDSourceService"

    const-string v4, "RTP transport is changed successfully"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->IS_RTP_TRANSPORT_NEGOTIATED:Z

    .line 722
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2d

    .line 723
    :cond_17a
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PAUSE_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_187

    .line 724
    const-string v2, "WFDSourceService"

    const-string v4, "PAUSE start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 725
    :cond_187
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PLAY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_194

    .line 726
    const-string v2, "WFDSourceService"

    const-string v4, "PLAY start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 727
    :cond_194
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->STANDBY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_1a1

    .line 728
    const-string v2, "WFDSourceService"

    const-string v4, "STANDBY_START start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 729
    :cond_1a1
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_CLOSED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_1ae

    .line 730
    const-string v2, "WFDSourceService"

    const-string v4, "AUDIOPROXY_CLOSED received"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 732
    :cond_1ae
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_1e8

    .line 733
    const-string v2, "WFDSourceService"

    const-string v4, "TEARDOWN start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_1e3

    .line 736
    const-string v2, "WFDSourceService"

    const-string v4, "TEARDOWN from native. Send Error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .restart local v0    # "intent_error_param":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 739
    const-string v2, "cause"

    const-string v4, "TEARDOWN_FROM_DONGLE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1e0

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 741
    :cond_1e0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 743
    .end local v0    # "intent_error_param":Landroid/content/Intent;
    :cond_1e3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    goto/16 :goto_2d

    .line 744
    :cond_1e8
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_220

    .line 745
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_20f

    .line 747
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .restart local v0    # "intent_error_param":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 749
    const-string v2, "cause"

    const-string v4, "WFD Command fail"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_20c

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 751
    :cond_20c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 753
    .end local v0    # "intent_error_param":Landroid/content/Intent;
    :cond_20f
    const-string v2, "WFDSourceService"

    const-string v4, "Error received. Send WIFIDISPLAY_NOTI_ERROR_FROM_NATIVE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 755
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2d

    .line 757
    :cond_220
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WEAK_NETWORK:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_2d

    .line 758
    const-string v2, "WFDSourceService"

    const-string v4, "WFD noti to App - weak network connection.."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .local v1, "intent_weak_network":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 761
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_23c
    .catchall {:try_start_45 .. :try_end_23c} :catchall_42

    goto/16 :goto_2d
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 10
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 212
    const-string v4, "WFDSourceService"

    const-string v5, "Bind!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 217
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    .local v1, "context":Landroid/content/Context;
    sput-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    .line 220
    const-string v4, "WFDSourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bind! Context = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v4, "freq"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 223
    const-string v4, "WFDSourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v4, Landroid/os/DVFSHelper;

    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const/16 v6, 0xc

    invoke-direct {v4, v5, v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 228
    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v3

    .line 229
    .local v3, "supportedCPUFreqTable":[I
    if-eqz v3, :cond_6a

    .line 231
    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v5, "CPU"

    aget v6, v3, v7

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 233
    :cond_6a
    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->acquire()V

    .line 235
    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    .line 237
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->aquireResources()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 239
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 240
    .local v0, "WifiMgr":Landroid/net/wifi/WifiManager;
    const-string v4, "WFDSourceService"

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 241
    iget-object v4, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 242
    const-string v4, "WFDSourceService"

    const-string/jumbo v5, "wifi lock acquire!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "WifiMgr":Landroid/net/wifi/WifiManager;
    :cond_a1
    sput-object p0, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    .line 248
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v2, "filter":Landroid/content/IntentFilter;
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 250
    const-string v4, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v4, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v4, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v4, "com.samsung.wfd.WFD_SESSION_TEARDOWN"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v4, "com.samsung.wfd.WFD_SESSION_START"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v4, "com.samsung.wfd.WFD_SESSION_STOP"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v4, "com.samsung.wfd.WFD_SESSION_PAUSE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v4, "com.samsung.wfd.WFD_SESSION_RESUME"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v4, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v4, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v4, "android.intent.action.WIFI_DISPLAY_RESOLUTION"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v4, "android.intent.action.WIFI_DISPLAY_BITRATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v4, "android.intent.action.WIFI_DISPLAY_BUFFERING_DO"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v4, "android.intent.action.WIFI_DISPLAY_BUFFERING_DONE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v4, "android.intent.action.SECURE_START"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v4, "android.intent.action.SECURE_START_DONE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v4, "android.intent.action.SECURE_END"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v4, "android.intent.action.SECURE_END_DONE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v4, "android.intent.action.WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v4, "android.intent.action.WIFI_DISPLAY_PLAYBACK_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    new-instance v4, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V

    iput-object v4, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    new-instance v4, Landroid/media/WFDUibcManager;

    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 280
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->StartRTSP()V

    .line 282
    iget-object v4, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    return-object v4
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 332
    const-string v0, "WFDSourceService"

    const-string v1, "OnCreate thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCreate thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 626
    const-string v0, "WFDSourceService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 603
    const-string v0, "WFDSourceService"

    const-string v1, "onLowMemory!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 605
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 606
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 610
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 614
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 7
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 288
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "unBind!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 292
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 297
    :try_start_15
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 298
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_22} :catch_61

    .line 304
    :cond_22
    :goto_22
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 305
    :try_start_25
    iget v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-eq v2, v4, :cond_31

    .line 306
    iget v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->stopWfdSession(I)V

    .line 307
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 310
    :cond_31
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->disableWfd()Z

    .line 312
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v2, v4, :cond_43

    .line 313
    const-string v2, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 314
    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 316
    :cond_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_6d

    .line 318
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 319
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 321
    :cond_51
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "wifi lock release!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 326
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 299
    :catch_61
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WFDSourceService"

    const-string v3, "mCpuBooster.release is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method public pause(Z)I
    .registers 5
    .param p1, "isSecure"    # Z

    .prologue
    .line 915
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Pause for sid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v0, p1}, Lcom/samsung/wfd/WFDNative;->pause(IZ)V

    .line 917
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method public play(Z)I
    .registers 5
    .param p1, "isSecure"    # Z

    .prologue
    .line 909
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling play()  for sid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v0, p1}, Lcom/samsung/wfd/WFDNative;->play(IZ)V

    .line 911
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method public setAvPlaybackMode(I)I
    .registers 12
    .param p1, "mode"    # I

    .prologue
    .line 1188
    const-string v6, "WFDSourceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAvPlaybackMode mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    sget-object v7, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1190
    :try_start_1c
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v8, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v8, :cond_28

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v8, Lcom/samsung/wfd/WfdEnums$SessionState;->INITIALIZED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v8, :cond_78

    .line 1191
    :cond_28
    const/4 v5, 0x0

    .line 1192
    .local v5, "valid":Z
    sget-object v4, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 1193
    .local v4, "m":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->values()[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_31
    if-ge v2, v3, :cond_3d

    aget-object v1, v0, v2

    .line 1194
    .local v1, "e":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->ordinal()I

    move-result v6

    if-ne p1, v6, :cond_5f

    .line 1195
    move-object v4, v1

    .line 1196
    const/4 v5, 0x1

    .line 1200
    .end local v1    # "e":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    :cond_3d
    if-nez v5, :cond_62

    .line 1201
    const-string v6, "WFDSourceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid AV playback mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    sget-object v6, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v6

    monitor-exit v7

    .line 1212
    .end local v0    # "arr$":[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v5    # "valid":Z
    :goto_5e
    return v6

    .line 1193
    .restart local v0    # "arr$":[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v1    # "e":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "m":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v5    # "valid":Z
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1204
    .end local v1    # "e":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    :cond_62
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setAvPlaybackMode(I)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1205
    sput-object v4, Lcom/samsung/wfd/WFDSourceService;->PLAYBACK_MODE:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 1206
    const/4 v6, 0x0

    monitor-exit v7

    goto :goto_5e

    .line 1214
    .end local v0    # "arr$":[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v5    # "valid":Z
    :catchall_6d
    move-exception v6

    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_1c .. :try_end_6f} :catchall_6d

    throw v6

    .line 1208
    .restart local v0    # "arr$":[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "m":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v5    # "valid":Z
    :cond_70
    :try_start_70
    sget-object v6, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v6

    monitor-exit v7

    goto :goto_5e

    .line 1211
    .end local v0    # "arr$":[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v5    # "valid":Z
    :cond_78
    const-string v6, "WFDSourceService"

    const-string v8, "Session state is not INVALID or INITIALIZED"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    sget-object v6, Lcom/samsung/wfd/WfdEnums$ErrorType;->INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v6

    monitor-exit v7
    :try_end_86
    .catchall {:try_start_70 .. :try_end_86} :catchall_6d

    goto :goto_5e
.end method

.method public setBufferingMode(I)I
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 1105
    const-string v1, "WFDSourceService"

    const-string/jumbo v2, "setBufferingMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1107
    const/4 v0, 0x0

    .line 1109
    .local v0, "ret":I
    :try_start_c
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setBuffering(I)V

    .line 1112
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1113
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setRtpTransport(IIIZ)I
    .registers 11
    .param p1, "transportType"    # I
    .param p2, "bufferLengthMs"    # I
    .param p3, "port"    # I
    .param p4, "framerate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1079
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "setRtpTransport"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1081
    const/4 v3, 0x0

    :try_start_d
    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->IS_RTP_TRANSPORT_NEGOTIATED:Z

    .line 1082
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->pauseMuxer()V

    .line 1083
    invoke-static {p1, p2, p3}, Lcom/samsung/wfd/WFDNative;->negotiateRtpTransport(III)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_4d

    .line 1085
    :try_start_15
    const-string v3, "WFDSourceService"

    const-string v4, "Wait for RTSP negotiation for new RTP transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_23} :catch_39
    .catchall {:try_start_15 .. :try_end_23} :catchall_4d

    .line 1093
    :try_start_23
    iget-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->IS_RTP_TRANSPORT_NEGOTIATED:Z

    if-nez v3, :cond_50

    .line 1094
    const-string v1, "WFDSourceService"

    const-string v3, "NEGOTIATION failed. Call Play to continue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->resumeMuxer()V

    .line 1096
    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v1

    monitor-exit v2

    .line 1100
    :goto_38
    return v1

    .line 1087
    :catch_39
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDSourceService"

    const-string/jumbo v3, "setRtpTransport interrupted"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->resumeMuxer()V

    .line 1090
    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v1

    monitor-exit v2

    goto :goto_38

    .line 1101
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_4d

    throw v1

    .line 1098
    :cond_50
    :try_start_50
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setRtpTransport(I)V

    .line 1100
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_4d

    goto :goto_38
.end method

.method public setSurface(Landroid/view/Surface;)I
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1218
    const-string v0, "WFDSourceService"

    const-string/jumbo v1, "setSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1220
    :try_start_b
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setVideoSurface(Landroid/view/Surface;)V

    .line 1221
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1222
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public sinkResponse(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "event"    # Lcom/samsung/wfd/WfdEnums$WfdEvent;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 636
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sinkResponse() url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 639
    :try_start_1c
    iput-object p2, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    .line 641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, "intent_url_param":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 645
    const-string v1, "WFDSourceService"

    const-string v3, "WFD noti to App - Dongle update URL"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    monitor-exit v2

    .line 647
    return-void

    .line 646
    .end local v0    # "intent_url_param":Landroid/content/Intent;
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public standby()I
    .registers 3

    .prologue
    .line 931
    const-string v0, "WFDSourceService"

    const-string/jumbo v1, "standby"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v0}, Lcom/samsung/wfd/WFDNative;->standby(I)V

    .line 933
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 921
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop called for session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-eq v0, v3, :cond_27

    .line 923
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v0}, Lcom/samsung/wfd/WFDNative;->stopWfdSession(I)V

    .line 924
    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 926
    :cond_27
    sget-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->STOPPED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public tcpPlaybackControl(II)I
    .registers 12
    .param p1, "cmdType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 1169
    const-string v5, "WFDSourceService"

    const-string/jumbo v6, "tcpPlaybackControl"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    sget-object v6, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1171
    const/4 v4, 0x0

    .line 1172
    .local v4, "valid":Z
    :try_start_c
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->values()[Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_1d

    aget-object v1, v0, v2

    .line 1173
    .local v1, "e":Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->ordinal()I

    move-result v5

    if-ne p1, v5, :cond_3f

    .line 1174
    const/4 v4, 0x1

    .line 1178
    .end local v1    # "e":Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    :cond_1d
    if-nez v4, :cond_42

    .line 1179
    const-string v5, "WFDSourceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid control cmd type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    sget-object v5, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v5

    monitor-exit v6

    .line 1183
    :goto_3e
    return v5

    .line 1172
    .restart local v1    # "e":Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1182
    .end local v1    # "e":Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    :cond_42
    invoke-static {p1, p2}, Lcom/samsung/wfd/WFDNative;->tcpPlaybackControl(II)V

    .line 1183
    const/4 v5, 0x0

    monitor-exit v6

    goto :goto_3e

    .line 1184
    .end local v0    # "arr$":[Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_48
    move-exception v5

    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_48

    throw v5
.end method

.method public teardown()I
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 937
    const-string v5, "WFDSourceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "teardown()  for sid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 939
    :try_start_2b
    iget-boolean v6, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    if-eqz v6, :cond_36

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    iget v7, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v6, v7}, Landroid/media/WFDUibcManager;->stop(I)Z

    .line 940
    :cond_36
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_4e

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_4e

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_4e

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v7, :cond_a7

    .line 945
    :cond_4e
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDNative;->teardown(IZ)V
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_a4

    .line 947
    :try_start_54
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 948
    .local v0, "beforeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    const/4 v1, 0x5

    .local v1, "counter":I
    move v2, v1

    .line 949
    .end local v1    # "counter":I
    .local v2, "counter":I
    :goto_58
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "counter":I
    .restart local v1    # "counter":I
    if-eqz v2, :cond_75

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v0, :cond_6c

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_6c

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v7, :cond_75

    .line 952
    :cond_6c
    sget-object v6, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    move v2, v1

    .end local v1    # "counter":I
    .restart local v2    # "counter":I
    goto :goto_58

    .line 954
    .end local v2    # "counter":I
    .restart local v1    # "counter":I
    :cond_75
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v0, :cond_85

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_85

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v7, :cond_a2

    .line 955
    :cond_85
    const-string v6, "WFDSourceService"

    const-string v7, "Teardown timed out, trying local teardown"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDNative;->teardown(IZ)V

    .line 957
    sget-object v6, Lcom/samsung/wfd/WfdEnums$ErrorType;->OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_97} :catch_9a
    .catchall {:try_start_54 .. :try_end_97} :catchall_a4

    move-result v4

    :try_start_98
    monitor-exit v5

    .line 976
    .end local v0    # "beforeState":Lcom/samsung/wfd/WfdEnums$SessionState;
    .end local v1    # "counter":I
    :goto_99
    return v4

    .line 959
    :catch_9a
    move-exception v3

    .line 960
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v6, "WFDSourceService"

    const-string v7, "Teardown wait interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_a2
    :goto_a2
    monitor-exit v5

    goto :goto_99

    :catchall_a4
    move-exception v4

    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_a4

    throw v4

    .line 963
    :cond_a7
    :try_start_a7
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c9

    .line 964
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v7, :cond_bc

    .line 965
    const-string v6, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-static {v6}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 966
    sget-object v6, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    goto :goto_a2

    .line 967
    :cond_bc
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->ENABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v7, :cond_a2

    .line 968
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDNative;->teardown(IZ)V

    goto :goto_a2

    .line 970
    :cond_c9
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_a2

    .line 971
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDNative;->teardown(IZ)V

    .line 972
    sget-object v6, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    :try_end_d9
    .catchall {:try_start_a7 .. :try_end_d9} :catchall_a4

    goto :goto_a2
.end method

.method teardownForAudioOut()V
    .registers 4

    .prologue
    .line 979
    const-string v1, "WFDSourceService"

    const-string/jumbo v2, "teardownForAudioOut"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 997
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 999
    :cond_1d
    sget-object v1, Lcom/samsung/wfd/WfdEnums$ConnectionType;->UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    iput-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 1001
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mCountdown:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_2a

    .line 1002
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mCountdown:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 1003
    :cond_2a
    return-void
.end method

.method public updateEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "event"    # Lcom/samsung/wfd/WfdEnums$WfdEvent;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "length"    # Ljava/lang/String;

    .prologue
    .line 850
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEvent   = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TCP_PLAYBACK_CONTROL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne p1, v2, :cond_81

    .line 852
    const-string v2, "Play"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z

    if-eqz v2, :cond_81

    .line 853
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z

    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, "mStreamVol":I
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_4c

    .line 857
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 859
    :cond_4c
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get native STREAM_MUSIC volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/samsung/wfd/WFDSourceService;->tcpPlaybackControl(II)I

    move-result v1

    .line 862
    .local v1, "ret":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] tcpPlaybackControl for initial volume control returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .end local v0    # "mStreamVol":I
    .end local v1    # "ret":I
    :cond_81
    return-void
.end method

.method public updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "state"    # Lcom/samsung/wfd/WfdEnums$SessionState;
    .param p2, "sessionId"    # I
    .param p3, "audiomode"    # I
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "ipaddr"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 768
    const-string v3, "WFDSourceService"

    const-string/jumbo v4, "updateState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v4

    .line 770
    :try_start_c
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_1d

    iget v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-ne p2, v3, :cond_1d

    .line 771
    const-string v3, "WFDSourceService"

    const-string v5, "Nothing has changed. Ignoring updateState"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    monitor-exit v4

    .line 845
    :goto_1c
    return-void

    .line 774
    :cond_1d
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 775
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 776
    iget v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-eq p2, v3, :cond_66

    .line 777
    const-string v3, "WFDSourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session id changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_56
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_89

    .line 784
    const-string v3, "WFDSourceService"

    const-string v5, "PAUSE done"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_61
    :goto_61
    monitor-exit v4

    goto :goto_1c

    :catchall_63
    move-exception v3

    monitor-exit v4
    :try_end_65
    .catchall {:try_start_c .. :try_end_65} :catchall_63

    throw v3

    .line 779
    :cond_66
    :try_start_66
    const-string v3, "WFDSourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 785
    :cond_89
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_95

    .line 786
    const-string v3, "WFDSourceService"

    const-string v5, "PLAY done"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 787
    :cond_95
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_b9

    .line 788
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v2, "intent_est":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 790
    const-string v3, "connectedSessionID"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 792
    iput p2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 793
    const-string v3, "WFDSourceService"

    const-string v5, "WFD ESTABLISHING process"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 794
    .end local v2    # "intent_est":Landroid/content/Intent;
    :cond_b9
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_10e

    .line 795
    const-string v3, "WFDSourceService"

    const-string v5, "WFD TEARDOWN completed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v3, :cond_f1

    .line 798
    const-string v3, "WFDSourceService"

    const-string v5, "TEARDOWN from native. Send Error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .local v1, "intent_error_param":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 801
    const-string v3, "cause"

    const-string v5, "TEARDOWN_FROM_DONGLE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_eb

    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 803
    :cond_eb
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 804
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 806
    .end local v1    # "intent_error_param":Landroid/content/Intent;
    :cond_f1
    if-eq p2, v7, :cond_fd

    .line 807
    iget v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-ne p2, v3, :cond_fa

    .line 808
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 810
    :cond_fa
    invoke-static {p2}, Lcom/samsung/wfd/WFDNative;->stopWfdSession(I)V

    .line 812
    :cond_fd
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v5, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v3, v5, :cond_61

    .line 813
    const-string v3, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-static {v3}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 814
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    goto/16 :goto_61

    .line 817
    :cond_10e
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_61

    .line 818
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 819
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->release()V

    .line 822
    :cond_11f
    iput p2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 823
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    .local v0, "intent_connected":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 825
    const-string v3, "connectedSessionID"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 826
    const-string v3, "count"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    iput p3, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioMode:I

    .line 828
    if-eqz p4, :cond_140

    .line 829
    const-string v3, "VER"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    :cond_140
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    if-eqz v3, :cond_14e

    .line 832
    const-string v3, "URL"

    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    .line 835
    :cond_14e
    if-eqz p5, :cond_155

    .line 836
    const-string v3, "IP"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    :cond_155
    const-string v3, "HDCP"

    iget-boolean v5, p0, Lcom/samsung/wfd/WFDSourceService;->IS_HDCP_ENABLED:Z

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 839
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_165

    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 840
    :cond_165
    const-string v3, "WFDSourceService"

    const-string v5, "WFD ESTABLISHED broadcast sent"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    if-nez v3, :cond_177

    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    iget v5, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v3, v5}, Landroid/media/WFDUibcManager;->start(I)Z

    .line 842
    :cond_177
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z
    :try_end_17a
    .catchall {:try_start_66 .. :try_end_17a} :catchall_63

    goto/16 :goto_61
.end method
