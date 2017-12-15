.class public final Landroid/media/RemoteDisplayCallback;
.super Ljava/lang/Object;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplayCallback$Listener;,
        Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;,
        Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteDisplayCallback"

.field private static mContext:Landroid/content/Context;

.field private static mDongleVer:Ljava/lang/String;

.field private static mInstance:Landroid/media/RemoteDisplayCallback;

.field private static mListener:Landroid/media/RemoteDisplayCallback$Listener;

.field private static mRemoteDisplayListener:Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

.field private static mRemoteIP:Ljava/lang/String;

.field private static mRenameCapablity:Z

.field private static mRtspRunning:Z

.field private static mUpdateURL:Ljava/lang/String;


# instance fields
.field private mAudioCnt:I

.field private mHdcp:I

.field private mHeight:I

.field private mPtr:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionId:I

.field private mStreamVol:I

.field private mWfdDevice:Lcom/samsung/wfd/WfdDevice;

.field private mWfdMode:I

.field private mWfdSourceConnection:Landroid/content/ServiceConnection;

.field mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

.field private mWidth:I

.field private surface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 64
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 65
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 66
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 67
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    .line 68
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z

    .line 81
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mInstance:Landroid/media/RemoteDisplayCallback;

    .line 86
    const-string v0, "extendedremotedisplay"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 87
    const-string v0, "RemoteDisplayCallback"

    const-string v1, "Loaded extendedremotedisplay.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v2, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 71
    iput v2, p0, Landroid/media/RemoteDisplayCallback;->mAudioCnt:I

    .line 73
    iput-object v3, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput v2, p0, Landroid/media/RemoteDisplayCallback;->mWidth:I

    .line 75
    iput v2, p0, Landroid/media/RemoteDisplayCallback;->mHeight:I

    .line 76
    iput v2, p0, Landroid/media/RemoteDisplayCallback;->mSessionId:I

    .line 77
    iput v2, p0, Landroid/media/RemoteDisplayCallback;->mHdcp:I

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 95
    iput v2, p0, Landroid/media/RemoteDisplayCallback;->mPtr:I

    .line 96
    iput-object v3, p0, Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;

    .line 100
    iput-object v3, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    .line 101
    new-instance v1, Landroid/media/RemoteDisplayCallback$1;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplayCallback$1;-><init>(Landroid/media/RemoteDisplayCallback;)V

    iput-object v1, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "com.samsung.wfd.WFD_SERVICE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    new-instance v1, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;

    invoke-direct {v1, p0, v3}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V

    iput-object v1, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method static synthetic access$100(Landroid/media/RemoteDisplayCallback;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mPtr:I

    return v0
.end method

.method static synthetic access$1000(Landroid/media/RemoteDisplayCallback;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mHeight:I

    return v0
.end method

.method static synthetic access$1002(Landroid/media/RemoteDisplayCallback;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mHeight:I

    return p1
.end method

.method static synthetic access$102(Landroid/media/RemoteDisplayCallback;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mPtr:I

    return p1
.end method

.method static synthetic access$1100(Landroid/media/RemoteDisplayCallback;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mHdcp:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/RemoteDisplayCallback;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mHdcp:I

    return p1
.end method

.method static synthetic access$1200(Landroid/media/RemoteDisplayCallback;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionState(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/RemoteDisplayCallback;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mSessionId:I

    return v0
.end method

.method static synthetic access$1302(Landroid/media/RemoteDisplayCallback;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mSessionId:I

    return p1
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback;->broadcastDongleVerToFota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/RemoteDisplayCallback;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->startHDCPSuspend()V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/RemoteDisplayCallback;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroid/media/RemoteDisplayCallback;)Landroid/view/Surface;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/RemoteDisplayCallback;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mAudioCnt:I

    return v0
.end method

.method static synthetic access$2002(Landroid/media/RemoteDisplayCallback;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mAudioCnt:I

    return p1
.end method

.method static synthetic access$202(Landroid/media/RemoteDisplayCallback;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 59
    iput-object p1, p0, Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$2100()Landroid/media/RemoteDisplayCallback$Listener;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/RemoteDisplayCallback;ILandroid/view/Surface;)I
    .registers 4
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Surface;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteDisplayCallback;->destroySurface(ILandroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/RemoteDisplayCallback;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback;->destroyNativeObject(I)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z

    return p0
.end method

.method static synthetic access$600(Landroid/media/RemoteDisplayCallback;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/RemoteDisplayCallback;)Lcom/samsung/wfd/WfdDevice;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/RemoteDisplayCallback;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 59
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mWidth:I

    return v0
.end method

.method static synthetic access$902(Landroid/media/RemoteDisplayCallback;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mWidth:I

    return p1
.end method

.method private broadcastDongleVerToFota(Ljava/lang/String;)V
    .registers 6
    .param p1, "Ver"    # Ljava/lang/String;

    .prologue
    .line 471
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleVerToFota << Ver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.START_WFD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_27

    .line 476
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :cond_27
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 480
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 482
    return-void
.end method

.method private broadcastWfdSessionInfo()V
    .registers 4

    .prologue
    .line 434
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "broadcastWfdSessionInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_RES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "activityIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    const-string/jumbo v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method private broadcastWfdSessionPause()V
    .registers 4

    .prologue
    .line 459
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "broadcastWfdSessionPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WFD_SESSION_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "activityIntent":Landroid/content/Intent;
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method private broadcastWfdSessionResume()V
    .registers 4

    .prologue
    .line 465
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "broadcastWfdSessionResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WFD_SESSION_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "activityIntent":Landroid/content/Intent;
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    return-void
.end method

.method private broadcastWfdSessionStart()Z
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 397
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    if-nez v2, :cond_9

    const/4 v1, 0x0

    .line 415
    :goto_8
    return v1

    .line 398
    :cond_9
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    iget-object v2, v2, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    if-nez v2, :cond_18

    .line 399
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    new-instance v3, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v3, v1}, Lcom/samsung/wfd/WfdInfo;-><init>(I)V

    iput-object v3, v2, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 400
    :cond_18
    const-string v2, "RemoteDisplayCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastWfdSessionStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdDevice;->getP2PDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.WFD_SESSION_START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "activityIntent":Landroid/content/Intent;
    const-string/jumbo v2, "wfdPeerDeviceDescriptor"

    iget-object v3, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 404
    iget v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-nez v2, :cond_57

    .line 405
    const-string/jumbo v2, "wfdCustomSetting"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    :cond_51
    :goto_51
    sget-object v2, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    .line 406
    :cond_57
    iget v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v2, v5, :cond_63

    .line 407
    const-string/jumbo v2, "wfdCustomSetting"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_51

    .line 408
    :cond_63
    iget v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v2, v6, :cond_6e

    .line 409
    const-string/jumbo v2, "wfdCustomSetting"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_51

    .line 410
    :cond_6e
    iget v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_51

    .line 411
    const-string/jumbo v2, "wfdCustomSetting"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_51
.end method

.method private broadcastWfdSessionState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 419
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdSessionState, state= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "activityIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    const-string/jumbo v1, "mode"

    iget v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    iget v1, p0, Landroid/media/RemoteDisplayCallback;->mAudioCnt:I

    if-eqz v1, :cond_45

    .line 426
    const-string v1, "count"

    iget v2, p0, Landroid/media/RemoteDisplayCallback;->mAudioCnt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    :goto_3d
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 431
    return-void

    .line 428
    :cond_45
    const-string v1, "count"

    const/16 v2, 0x780

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3d
.end method

.method private broadcastWfdSessionStop()V
    .registers 4

    .prologue
    .line 453
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "broadcastWfdSessionStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WFD_SESSION_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "activityIntent":Landroid/content/Intent;
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    return-void
.end method

.method private broadcastWfdSessionTeardown()V
    .registers 5

    .prologue
    .line 442
    const-string v2, "RemoteDisplayCallback"

    const-string v3, "broadcastWfdSessionTeardown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.WFD_SESSION_TEARDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "activityIntent":Landroid/content/Intent;
    sget-object v2, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, "intent_chage_transport_mode":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 448
    const-string v2, "CONNECTION_MODE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    sget-object v2, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 450
    return-void
.end method

.method private native destroyNativeObject(I)V
.end method

.method private native destroySurface(ILandroid/view/Surface;)I
.end method

.method private native getNativeObject()I
.end method

.method private native getSurface(III)Landroid/view/Surface;
.end method

.method public static setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/media/RemoteDisplayCallback$Listener;

    .prologue
    const/4 v1, 0x0

    .line 119
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 120
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 123
    :cond_7
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-nez v0, :cond_d

    .line 124
    sput-object p1, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    .line 127
    :cond_d
    sput-object v1, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 128
    sput-object v1, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 129
    sput-object v1, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z

    .line 132
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public static setListener(Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;)Landroid/media/RemoteDisplayCallback;
    .registers 2
    .param p0, "remoteDisplayListener"    # Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

    .prologue
    .line 152
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mRemoteDisplayListener:Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

    .line 153
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mInstance:Landroid/media/RemoteDisplayCallback;

    if-nez v0, :cond_d

    .line 154
    new-instance v0, Landroid/media/RemoteDisplayCallback;

    invoke-direct {v0}, Landroid/media/RemoteDisplayCallback;-><init>()V

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mInstance:Landroid/media/RemoteDisplayCallback;

    .line 156
    :cond_d
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mInstance:Landroid/media/RemoteDisplayCallback;

    return-object v0
.end method

.method private startHDCPSuspend()V
    .registers 7

    .prologue
    .line 528
    invoke-virtual {p0}, Landroid/media/RemoteDisplayCallback;->getSuspendStatus()Z

    move-result v0

    .line 529
    .local v0, "nRet":Z
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WFDGetSuspendStatus >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/media/RemoteDisplayCallback;->setSuspendStatus(Z)Z

    move-result v0

    .line 532
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 533
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x10407ec

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/media/RemoteDisplayCallback;->postSuspend(Ljava/lang/String;)Z

    .line 536
    return-void
.end method

.method private stopHDCPSuspend()V
    .registers 4

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/media/RemoteDisplayCallback;->getSuspendStatus()Z

    move-result v0

    .line 542
    .local v0, "nRet":Z
    if-eqz v0, :cond_12

    .line 543
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/RemoteDisplayCallback;->setSuspendStatus(Z)Z

    move-result v0

    .line 544
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "done stopHDCPSuspend"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_12
    return-void
.end method


# virtual methods
.method displayConnected(I)V
    .registers 8
    .param p1, "sessionId"    # I

    .prologue
    .line 260
    const-string/jumbo v0, "persist.sys.wfd.virtual"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteDisplayListener:Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

    if-eqz v0, :cond_41

    .line 262
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mPtr:I

    if-nez v0, :cond_4f

    .line 263
    const-string v0, "RemoteDisplayCallback"

    const-string v1, "Create Native object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->getNativeObject()I

    move-result v0

    iput v0, p0, Landroid/media/RemoteDisplayCallback;->mPtr:I

    .line 265
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mPtr:I

    if-nez v0, :cond_42

    .line 266
    const-string v0, "RemoteDisplayCallback"

    const-string v1, "Failed to get Native Object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_28
    iget-object v0, p0, Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;

    if-nez v0, :cond_33

    .line 275
    const-string v0, "RemoteDisplayCallback"

    const-string v1, "Surface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_33
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteDisplayListener:Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

    iget-object v1, p0, Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;

    iget v2, p0, Landroid/media/RemoteDisplayCallback;->mWidth:I

    iget v3, p0, Landroid/media/RemoteDisplayCallback;->mHeight:I

    iget v4, p0, Landroid/media/RemoteDisplayCallback;->mHdcp:I

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;->onDisplayConnected(Landroid/view/Surface;IIII)V

    .line 278
    :cond_41
    return-void

    .line 268
    :cond_42
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mPtr:I

    iget v1, p0, Landroid/media/RemoteDisplayCallback;->mWidth:I

    iget v2, p0, Landroid/media/RemoteDisplayCallback;->mHeight:I

    invoke-direct {p0, v0, v1, v2}, Landroid/media/RemoteDisplayCallback;->getSurface(III)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;

    goto :goto_28

    .line 271
    :cond_4f
    const-string v0, "RemoteDisplayCallback"

    const-string v1, "Sesond stream start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method displayDisconnected()V
    .registers 3

    .prologue
    .line 252
    const-string/jumbo v0, "persist.sys.wfd.virtual"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteDisplayListener:Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

    if-eqz v0, :cond_14

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    .line 255
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteDisplayListener:Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

    invoke-interface {v0}, Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;->onDisplayDisconnected()V

    .line 257
    :cond_14
    return-void
.end method

.method displayError(I)V
    .registers 4
    .param p1, "error"    # I

    .prologue
    .line 281
    const-string/jumbo v0, "persist.sys.wfd.virtual"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    .line 283
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteDisplayListener:Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

    if-eqz v0, :cond_14

    .line 284
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteDisplayListener:Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;

    invoke-interface {v0, p1}, Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;->onDisplayError(I)V

    .line 286
    :cond_14
    return-void
.end method

.method dispose(Z)V
    .registers 4
    .param p1, "finalized"    # Z

    .prologue
    .line 231
    const-string v0, "RemoteDisplayCallback"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string/jumbo v0, "persist.sys.wfd.virtual"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v0, "wlan.wfd.status"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionState(I)V

    .line 235
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionTeardown()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    .line 237
    return-void
.end method

.method public getSuspendStatus()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_b

    .line 489
    :try_start_5
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdSourceService;->WFDGetSuspendStatus()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 497
    :cond_b
    :goto_b
    return v1

    .line 490
    :catch_c
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public isDongleRenameAvailable()Z
    .registers 5

    .prologue
    .line 160
    const-string v2, "RemoteDisplayCallback"

    const-string v3, "isDongleRenameAvailable "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x1

    .line 162
    .local v1, "isAvailable":Z
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_12

    .line 164
    :try_start_c
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdSourceService;->isDongleRenameAvailable()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14

    move-result v1

    :cond_12
    move v2, v1

    .line 169
    :goto_13
    return v2

    .line 165
    :catch_14
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_13
.end method

.method listen(Ljava/lang/String;Ljava/lang/String;)I
    .registers 18
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "initParam"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v12, "RemoteDisplayCallback"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "listen : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v12, "persist.sys.wfd.virtual"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :try_start_22
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v8, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v12, "width"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 191
    .local v11, "width":I
    const-string v12, "height"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 192
    .local v3, "height":I
    const-string/jumbo v12, "use_hdcp"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 193
    .local v10, "use_hdcp":Z
    const-string/jumbo v12, "use_audio"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 194
    .local v9, "use_audio":Z
    const-string v12, "RemoteDisplayCallback"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "listen width="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", height="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",use_hdcp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v12, 0x500

    if-ne v11, v12, :cond_dc

    const/16 v12, 0x2d0

    if-ne v3, v12, :cond_dc

    .line 197
    const/4 v12, 0x0

    iput v12, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_7b} :catch_ea

    .line 211
    .end local v3    # "height":I
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    .end local v9    # "use_audio":Z
    .end local v10    # "use_hdcp":Z
    .end local v11    # "width":I
    :goto_7b
    new-instance v12, Lcom/samsung/wfd/WfdDevice;

    new-instance v13, Lcom/samsung/wfd/WfdInfo;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/samsung/wfd/WfdInfo;-><init>(I)V

    new-instance v14, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v14}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    invoke-direct {v12, v13, v14}, Lcom/samsung/wfd/WfdDevice;-><init>(Lcom/samsung/wfd/WfdInfo;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v12, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    .line 212
    if-eqz p1, :cond_b6

    .line 213
    const/16 v12, 0x3a

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 214
    .local v4, "index":I
    if-lez v4, :cond_b6

    .line 215
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "ipAddress":Ljava/lang/String;
    iget-object v12, p0, Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;

    iget-object v12, v12, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v6, v12, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 217
    add-int/lit8 v12, v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 220
    .end local v4    # "index":I
    .end local v6    # "ipAddress":Ljava/lang/String;
    :cond_b6
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v5, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v12, "com.android.settings"

    const-string v13, "com.samsung.wfd.WFDSourceService"

    invoke-direct {v1, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    sget-object v12, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    iget-object v13, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    const/16 v14, 0x41

    invoke-virtual {v12, v5, v13, v14}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    .line 224
    .local v7, "isConnected":Z
    if-eqz v7, :cond_d8

    .line 225
    const/4 v12, 0x1

    sput-boolean v12, Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z

    .line 227
    :cond_d8
    if-eqz v7, :cond_116

    const/4 v12, 0x1

    :goto_db
    return v12

    .line 198
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "isConnected":Z
    .restart local v3    # "height":I
    .restart local v8    # "jsonObj":Lorg/json/JSONObject;
    .restart local v9    # "use_audio":Z
    .restart local v10    # "use_hdcp":Z
    .restart local v11    # "width":I
    :cond_dc
    const/16 v12, 0x3c0

    if-ne v11, v12, :cond_f5

    const/16 v12, 0x21c

    if-ne v3, v12, :cond_f5

    if-nez v10, :cond_f5

    .line 199
    const/4 v12, 0x3

    :try_start_e7
    iput v12, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_e7 .. :try_end_e9} :catch_ea

    goto :goto_7b

    .line 207
    .end local v3    # "height":I
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    .end local v9    # "use_audio":Z
    .end local v10    # "use_hdcp":Z
    .end local v11    # "width":I
    :catch_ea
    move-exception v2

    .line 208
    .local v2, "e":Lorg/json/JSONException;
    const-string v12, "RemoteDisplayCallback"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 200
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "height":I
    .restart local v8    # "jsonObj":Lorg/json/JSONObject;
    .restart local v9    # "use_audio":Z
    .restart local v10    # "use_hdcp":Z
    .restart local v11    # "width":I
    :cond_f5
    const/16 v12, 0x356

    if-ne v11, v12, :cond_102

    const/16 v12, 0x1e0

    if-ne v3, v12, :cond_102

    .line 201
    const/4 v12, 0x4

    :try_start_fe
    iput v12, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    goto/16 :goto_7b

    .line 202
    :cond_102
    const/16 v12, 0x2d0

    if-ne v11, v12, :cond_111

    const/16 v12, 0x1e0

    if-ne v3, v12, :cond_111

    if-nez v10, :cond_111

    .line 203
    const/4 v12, 0x5

    iput v12, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    goto/16 :goto_7b

    .line 205
    :cond_111
    const/4 v12, -0x1

    iput v12, p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    :try_end_114
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_114} :catch_ea

    goto/16 :goto_7b

    .line 227
    .end local v3    # "height":I
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    .end local v9    # "use_audio":Z
    .end local v10    # "use_hdcp":Z
    .end local v11    # "width":I
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v7    # "isConnected":Z
    :cond_116
    const/4 v12, 0x0

    goto :goto_db
.end method

.method pause()V
    .registers 3

    .prologue
    .line 240
    const-string v0, "RemoteDisplayCallback"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionState(I)V

    .line 242
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionPause()V

    .line 243
    return-void
.end method

.method public postSuspend(Ljava/lang/String;)Z
    .registers 4
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v1, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_9

    .line 518
    :try_start_4
    iget-object v1, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDPostSuspend(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 523
    :cond_9
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 519
    :catch_b
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method resume()V
    .registers 3

    .prologue
    .line 246
    const-string v0, "RemoteDisplayCallback"

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionState(I)V

    .line 248
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionResume()V

    .line 249
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v1, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_9

    .line 176
    :try_start_4
    iget-object v1, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdSourceService;->renameSink(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 181
    :cond_9
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 177
    :catch_b
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSuspendStatus(Z)Z
    .registers 7
    .param p1, "bStatus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 501
    const-string v2, "RemoteDisplayCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDSetSuspendStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_23

    .line 504
    :try_start_1d
    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDSetSuspendStatus(Z)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_24

    .line 512
    const/4 v1, 0x1

    :cond_23
    :goto_23
    return v1

    .line 505
    :catch_24
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_23
.end method
