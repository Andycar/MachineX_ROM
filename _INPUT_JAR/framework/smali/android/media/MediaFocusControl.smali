.class public Landroid/media/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFocusControl$DisplayInfoForServer;,
        Landroid/media/MediaFocusControl$AudioFocusDeathHandler;,
        Landroid/media/MediaFocusControl$MediaEventHandler;,
        Landroid/media/MediaFocusControl$NotificationListenerObserver;
    }
.end annotation


# static fields
.field private static final CLIENT_ID_QCHAT:Ljava/lang/String; = "QCHAT"

.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field protected static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_RCC_GET_NOW_PLAYING_ENTRIES:I = 0xe

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x7

.field private static final MSG_RCC_SET_BROWSED_PLAYER:I = 0xc

.field private static final MSG_RCC_SET_PLAY_ITEM:I = 0xd

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x8

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0x9

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xa

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final MSG_UNREGISTER_MEDIABUTTONINTENT:I = 0xb

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Landroid/media/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

.field private final mPRStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/PlayerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Landroid/media/AudioService$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 148
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 439
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V
    .registers 12
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Landroid/media/AudioService$VolumeController;
    .param p4, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v6, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    .line 443
    new-instance v2, Landroid/media/MediaFocusControl$1;

    invoke-direct {v2, p0}, Landroid/media/MediaFocusControl$1;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 508
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 897
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    .line 1070
    new-instance v2, Landroid/media/MediaFocusControl$2;

    invoke-direct {v2, p0}, Landroid/media/MediaFocusControl$2;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1088
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    .line 1094
    iput-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1099
    iput-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1113
    iput v6, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1139
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    .line 1145
    iput-object v3, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1786
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    .line 96
    new-instance v2, Landroid/media/MediaFocusControl$MediaEventHandler;

    invoke-direct {v2, p0, p1}, Landroid/media/MediaFocusControl$MediaEventHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    .line 97
    iput-object p2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 98
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 99
    iput-object p3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/AudioService$VolumeController;

    .line 100
    iput-object p4, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    .line 102
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 103
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "handleMediaEvent"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    new-instance v2, Landroid/media/PlayerRecord$RemotePlaybackState;

    const/4 v3, -0x1

    invoke-static {v5}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v4

    invoke-static {v5}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/media/PlayerRecord$RemotePlaybackState;-><init>(III)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    .line 109
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 115
    .local v1, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 125
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 126
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 128
    new-instance v2, Landroid/media/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v2, p0}, Landroid/media/MediaFocusControl$NotificationListenerObserver;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

    .line 130
    iput-boolean v6, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    .line 131
    iput-boolean v6, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 133
    invoke-static {p0}, Landroid/media/PlayerRecord;->setMediaFocusControl(Landroid/media/MediaFocusControl;)V

    .line 135
    invoke-virtual {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$MediaEventHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaFocusControl;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaFocusControl;Landroid/media/PlayerRecord;I)V
    .registers 3
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/PlayerRecord;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRcDisplayUpdate(Landroid/media/PlayerRecord;I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .registers 3
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaFocusControl;ILjava/lang/Long;)V
    .registers 3
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Long;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onSetRemoteControlClientPlayItem(ILjava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onGetRemoteControlClientNowPlayingEntries()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onSetRemoteControlClientBrowsedPlayer()V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .registers 4
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/MediaFocusControl;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaFocusControl;)Ljava/util/Stack;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaFocusControl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$900(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onRcDisplayClear()V

    return-void
.end method

.method private canReassignAudioFocus(Ljava/lang/String;)Z
    .registers 5
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 600
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v2}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 601
    const-string v0, "QCHAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 606
    :goto_22
    return v0

    .line 604
    :cond_23
    const/4 v0, 0x0

    goto :goto_22

    :cond_25
    move v0, v1

    .line 606
    goto :goto_22
.end method

.method private canReassignAudioFocusFromQchat(ILjava/lang/String;)Z
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QCHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "QCHAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x3

    if-ne p1, v0, :cond_29

    .line 619
    :cond_27
    const/4 v0, 0x0

    .line 621
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x1

    goto :goto_28
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .registers 11
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 185
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v5, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    .line 188
    const/4 v5, 0x1

    .line 222
    :goto_b
    return v5

    .line 192
    :cond_c
    if-eqz p1, :cond_47

    .line 194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 196
    .local v6, "ident":J
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 197
    .local v2, "currentUser":I
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_notification_listeners"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 202
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    array-length v5, v1

    if-ge v4, v5, :cond_44

    .line 204
    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 206
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_41

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_49

    move-result v5

    if-eqz v5, :cond_41

    .line 210
    const/4 v5, 0x2

    .line 218
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    .line 203
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 218
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_44
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v6    # "ident":J
    :cond_47
    const/4 v5, 0x0

    goto :goto_b

    .line 218
    .restart local v6    # "ident":J
    :catchall_49
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private checkUpdateRemoteControlDisplay_syncPrs(I)V
    .registers 3
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1548
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1557
    :goto_b
    return-void

    .line 1556
    :cond_c
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->updateRemoteControlDisplay_syncPrs(I)V

    goto :goto_b
.end method

.method private clearRemoteControlDisplay_syncPrs()V
    .registers 4

    .prologue
    .line 1498
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1499
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1500
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_14

    .line 1502
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1503
    return-void

    .line 1500
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 20
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 853
    if-eqz p2, :cond_9

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 856
    :cond_9
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 857
    .local v5, "keyIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 859
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 862
    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_76

    move-result v2

    if-nez v2, :cond_79

    .line 865
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_4f

    const/16 v4, 0x7bc

    :goto_44
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_4d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2e .. :try_end_4d} :catch_51
    .catchall {:try_start_2e .. :try_end_4d} :catchall_76

    .line 887
    :goto_4d
    :try_start_4d
    monitor-exit v16

    .line 888
    return-void

    .line 865
    :cond_4f
    const/4 v4, 0x0

    goto :goto_44

    .line 868
    :catch_51
    move-exception v13

    .line 869
    .local v13, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending pending intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {v13}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_4d

    .line 887
    .end local v13    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_76
    move-exception v2

    monitor-exit v16
    :try_end_78
    .catchall {:try_start_4d .. :try_end_78} :catchall_76

    throw v2

    .line 875
    :cond_79
    if-eqz p2, :cond_82

    .line 876
    :try_start_7b
    const-string v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 878
    :cond_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_76

    move-result-wide v14

    .line 880
    .local v14, "ident":J
    :try_start_86
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_9b
    .catchall {:try_start_86 .. :try_end_9b} :catchall_9f

    .line 884
    :try_start_9b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4d

    :catchall_9f
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_76
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .registers 15
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 829
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 830
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 831
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    if-eqz p2, :cond_24

    .line 833
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 834
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 838
    .local v10, "ident":J
    :try_start_28
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_3b

    .line 841
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 843
    return-void

    .line 841
    :catchall_3b
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 515
    const-string v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 517
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 518
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_e

    .line 521
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 522
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1167
    const-string v1, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1168
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1169
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1170
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/media/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_e

    .line 1176
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1

    .line 1173
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 1174
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nCurrent remote control generation ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_e5

    .line 1176
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_1f

    .line 1177
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v2

    .line 1178
    :try_start_42
    const-string v1, "\nRemote Volume State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  has remote: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  is remote active: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  rccId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume handling: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v1, v1, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    if-nez v1, :cond_e8

    const-string v1, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_a4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolume:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume steps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    monitor-exit v2
    :try_end_e4
    .catchall {:try_start_42 .. :try_end_e4} :catchall_eb

    .line 1188
    return-void

    .line 1175
    :catchall_e5
    move-exception v1

    :try_start_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw v1
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_1f

    .line 1182
    :cond_e8
    :try_start_e8
    const-string v1, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_a4

    .line 1187
    :catchall_eb
    move-exception v1

    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_e8 .. :try_end_ed} :catchall_eb

    throw v1
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1195
    const-string v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1197
    :try_start_8
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1198
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1200
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- wantsPosSync:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$2300(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v2, "enabled"

    :goto_65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1206
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_71
    move-exception v2

    monitor-exit v3
    :try_end_73
    .catchall {:try_start_8 .. :try_end_73} :catchall_71

    throw v2

    .line 1200
    .restart local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_74
    :try_start_74
    const-string v2, "disabled"

    goto :goto_65

    .line 1206
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_77
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_71

    .line 1207
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1152
    const-string v1, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1154
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1155
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/media/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_e

    .line 1158
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_22
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 1159
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 8
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    .line 1812
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1813
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1814
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    .line 1815
    .local v1, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1817
    :try_start_18
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_6

    .line 1818
    :catch_20
    move-exception v0

    .line 1819
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1823
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prse":Landroid/media/PlayerRecord;
    :cond_29
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 796
    invoke-static {p1}, Landroid/media/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 797
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_1f
    return-void

    .line 801
    :cond_20
    sget-object v1, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 802
    :try_start_23
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_4f

    .line 803
    :try_start_26
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_49

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_49

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_52

    .line 808
    :cond_49
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 809
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_62

    :try_start_4d
    monitor-exit v1

    goto :goto_1f

    .line 812
    :catchall_4f
    move-exception v0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4f

    throw v0

    .line 811
    :cond_52
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_62

    .line 812
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4f

    .line 814
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 815
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1f

    .line 811
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    throw v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_4f

    .line 817
    :cond_65
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1f
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 918
    const/4 v1, 0x1

    .line 919
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 920
    .local v0, "keyAction":I
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 921
    if-nez v0, :cond_31

    .line 922
    :try_start_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1c

    .line 924
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    .line 925
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 941
    :cond_17
    :goto_17
    monitor-exit v3

    .line 944
    packed-switch v1, :pswitch_data_60

    .line 968
    :cond_1b
    :goto_1b
    :pswitch_1b
    return-void

    .line 926
    :cond_1c
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_17

    .line 929
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 930
    const/4 v1, 0x2

    goto :goto_17

    .line 932
    :cond_31
    if-ne v0, v2, :cond_17

    .line 933
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_17

    .line 935
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    .line 936
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_17

    .line 937
    const/4 v1, 0x3

    goto :goto_17

    .line 941
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v2

    .line 952
    :pswitch_49
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 956
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getTogether()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 961
    invoke-direct {p0, p2}, Landroid/media/MediaFocusControl;->startVoiceBasedInteractions(Z)V

    goto :goto_1b

    .line 965
    :pswitch_5b
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1b

    .line 944
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_49
        :pswitch_5b
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .registers 7
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 314
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 326
    :cond_6
    :goto_6
    return v2

    .line 318
    :cond_7
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, p2

    if-ge v1, v3, :cond_6

    .line 320
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 322
    const/4 v2, 0x1

    goto :goto_6

    .line 319
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .registers 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerRecord;

    invoke-virtual {v0, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1316
    const/4 v0, 0x1

    .line 1318
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 902
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method protected static isPlaystateActive(I)Z
    .registers 2
    .param p0, "playState"    # I

    .prologue
    .line 2182
    packed-switch p0, :pswitch_data_8

    .line 2191
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2189
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2182
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 981
    if-nez p0, :cond_4

    .line 982
    const/4 v0, 0x0

    .line 984
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    goto :goto_3
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 994
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_6

    .line 995
    const/4 v0, 0x1

    .line 997
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 3

    .prologue
    .line 488
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 489
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 490
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusGain(I)V

    .line 493
    :cond_26
    return-void
.end method

.method private onGetRemoteControlClientNowPlayingEntries()V
    .registers 6

    .prologue
    .line 2076
    const-string v1, "MediaFocusControl"

    const-string/jumbo v2, "onGetRemoteControlClientNowPlayingEntries: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2078
    :try_start_b
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_33

    if-eqz v1, :cond_14

    .line 2080
    :try_start_f
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1}, Landroid/media/IRemoteControlClient;->getNowPlayingEntries()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16
    .catchall {:try_start_f .. :try_end_14} :catchall_33

    .line 2086
    :cond_14
    :goto_14
    :try_start_14
    monitor-exit v2

    .line 2087
    return-void

    .line 2081
    :catch_16
    move-exception v0

    .line 2082
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_14

    .line 2086
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private onRcDisplayClear()V
    .registers 6

    .prologue
    .line 1390
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1391
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 1392
    :try_start_6
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1394
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1396
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 1397
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    .line 1398
    return-void

    .line 1396
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    .line 1397
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .registers 10
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1468
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1469
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_32

    .line 1470
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2f

    if-eqz v1, :cond_17

    .line 1475
    :try_start_a
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_26
    .catchall {:try_start_a .. :try_end_12} :catchall_2f

    .line 1480
    :try_start_12
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1a
    .catchall {:try_start_12 .. :try_end_17} :catchall_2f

    .line 1489
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_2f

    .line 1490
    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_32

    .line 1491
    return-void

    .line 1481
    :catch_1a
    move-exception v0

    .line 1482
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1b
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1483
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26
    .catchall {:try_start_1b .. :try_end_25} :catchall_2f

    goto :goto_17

    .line 1485
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_26
    move-exception v0

    .line 1486
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v1, "MediaFocusControl"

    const-string v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 1489
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v1

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1

    .line 1490
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private onRcDisplayUpdate(Landroid/media/PlayerRecord;I)V
    .registers 9
    .param p1, "prse"    # Landroid/media/PlayerRecord;
    .param p2, "flags"    # I

    .prologue
    .line 1430
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1431
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5c

    .line 1432
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1434
    const-string v1, "MediaFocusControl"

    const-string v4, "Display/update remote control "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1438
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {p1}, Landroid/media/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1442
    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, v1, v4}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/PlayerRecord;ZZ)V
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_59

    .line 1448
    :try_start_32
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3c
    .catchall {:try_start_32 .. :try_end_39} :catchall_59

    .line 1458
    :cond_39
    :goto_39
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_59

    .line 1459
    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_5c

    .line 1460
    return-void

    .line 1449
    :catch_3c
    move-exception v0

    .line 1450
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3d
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_39

    .line 1458
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_59
    move-exception v1

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v1

    .line 1459
    :catchall_5c
    move-exception v1

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private onReevaluateRemote()V
    .registers 1

    .prologue
    .line 2297
    return-void
.end method

.method private onReevaluateRemoteControlDisplays()V
    .registers 18

    .prologue
    .line 258
    const-string v1, "MediaFocusControl"

    const-string/jumbo v2, "onReevaluateRemoteControlDisplays()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 261
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 266
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 267
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_9a

    .line 271
    if-nez v13, :cond_9d

    .line 272
    const/4 v12, 0x0

    .line 276
    .local v12, "enabledComponents":[Ljava/lang/String;
    :goto_27
    :try_start_27
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 277
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_2f
    :goto_2f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 278
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 280
    .local v9, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$400(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 281
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    .line 282
    .local v14, "wasEnabled":Z
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$400(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Landroid/media/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9, v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$502(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 284
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_55
    .catchall {:try_start_27 .. :try_end_55} :catchall_97

    move-result v1

    if-eq v14, v1, :cond_2f

    .line 287
    :try_start_58
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    .line 289
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    .line 292
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0x9

    const/4 v3, 0x2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_8d} :catch_8e
    .catchall {:try_start_58 .. :try_end_8d} :catchall_97

    goto :goto_2f

    .line 298
    :catch_8e
    move-exception v11

    .line 299
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_8f
    const-string v1, "MediaFocusControl"

    const-string v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 304
    .end local v9    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .end local v14    # "wasEnabled":Z
    :catchall_97
    move-exception v1

    monitor-exit v16
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_97

    :try_start_99
    throw v1

    .line 305
    :catchall_9a
    move-exception v1

    monitor-exit v15
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9a

    throw v1

    .line 274
    :cond_9d
    :try_start_9d
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "enabledComponents":[Ljava/lang/String;
    goto :goto_27

    .line 304
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_a4
    monitor-exit v16
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_97

    .line 305
    :try_start_a5
    monitor-exit v15
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_9a

    .line 306
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .registers 9
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 2118
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2123
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_b
    if-ltz v1, :cond_1d

    .line 2124
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 2125
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v3

    if-ne v3, p1, :cond_1f

    .line 2126
    iput-object p2, v2, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_1d} :catch_22
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2b

    .line 2134
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit v4

    .line 2135
    return-void

    .line 2123
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2130
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_22
    move-exception v0

    .line 2132
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 2134
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method private onSetRemoteControlClientBrowsedPlayer()V
    .registers 6

    .prologue
    .line 2096
    const-string v2, "MediaFocusControl"

    const-string/jumbo v3, "onSetRemoteControlClientBrowsedPlayer: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2098
    const-string v2, "MediaFocusControl"

    const-string v3, "PlayerRecord stack is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :goto_17
    return-void

    .line 2102
    :cond_18
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    .line 2103
    .local v1, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_2e

    .line 2104
    const-string v2, "MediaFocusControl"

    const-string v3, "can not proceed with setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2106
    :cond_2e
    const-string v2, "MediaFocusControl"

    const-string/jumbo v3, "proceed with setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :try_start_36
    const-string v2, "MediaFocusControl"

    const-string v3, "Calling setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlClient;->setBrowsedPlayer()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_17

    .line 2110
    :catch_45
    move-exception v0

    .line 2111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private onSetRemoteControlClientPlayItem(ILjava/lang/Long;)V
    .registers 9
    .param p1, "scope"    # I
    .param p2, "uid"    # Ljava/lang/Long;

    .prologue
    .line 2057
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetRemoteControlClientPlayItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2059
    :try_start_1c
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_48

    if-eqz v1, :cond_29

    .line 2061
    :try_start_20
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, p1, v4, v5}, Landroid/media/IRemoteControlClient;->setPlayItem(IJ)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2b
    .catchall {:try_start_20 .. :try_end_29} :catchall_48

    .line 2067
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v2

    .line 2068
    return-void

    .line 2062
    :catch_2b
    move-exception v0

    .line 2063
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_29

    .line 2067
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_48
    move-exception v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    .registers 8
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1793
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1794
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1795
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1797
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_start_12
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 1799
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$2300(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1800
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2f} :catch_30

    goto :goto_6

    .line 1802
    :catch_30
    move-exception v2

    .line 1803
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1806
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_39
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 254
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .registers 4
    .param p1, "focusGain"    # I

    .prologue
    .line 502
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 503
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_6

    .line 506
    :cond_16
    return-void
.end method

.method private pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .registers 16
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1222
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1223
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    new-instance v9, Landroid/media/PlayerRecord;

    invoke-direct {v9, p1, p2, p3}, Landroid/media/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const/4 v7, 0x1

    .line 1284
    :goto_13
    return v7

    .line 1225
    :cond_14
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/PlayerRecord;

    invoke-virtual {v8, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 1227
    const/4 v7, 0x0

    goto :goto_13

    .line 1229
    :cond_24
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v9, 0x1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_38

    .line 1231
    const/4 v7, 0x0

    goto :goto_13

    .line 1233
    :cond_38
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/PlayerRecord;

    .line 1234
    .local v4, "oldTopPrse":Landroid/media/PlayerRecord;
    const/4 v7, 0x0

    .line 1235
    .local v7, "topChanged":Z
    const/4 v5, 0x0

    .line 1236
    .local v5, "prse":Landroid/media/PlayerRecord;
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1237
    .local v3, "lastPlayingIndex":I
    const/4 v1, -0x1

    .line 1241
    .local v1, "inStackIndex":I
    :try_start_49
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I
    :try_end_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_49 .. :try_end_4e} :catch_7c

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "index":I
    move-object v6, v5

    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .local v6, "prse":Landroid/media/PlayerRecord;
    :goto_52
    if-ltz v2, :cond_6e

    .line 1242
    :try_start_54
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/PlayerRecord;
    :try_end_5c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_54 .. :try_end_5c} :catch_ec

    .line 1243
    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    :try_start_5c
    invoke-virtual {v5}, Landroid/media/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 1244
    move v3, v2

    .line 1246
    :cond_63
    invoke-virtual {v5, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    :try_end_66
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5c .. :try_end_66} :catch_7c

    move-result v8

    if-eqz v8, :cond_6a

    .line 1247
    move v1, v2

    .line 1241
    :cond_6a
    add-int/lit8 v2, v2, -0x1

    move-object v6, v5

    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .restart local v6    # "prse":Landroid/media/PlayerRecord;
    goto :goto_52

    .line 1251
    :cond_6e
    const/4 v8, -0x1

    if-ne v1, v8, :cond_b7

    .line 1253
    :try_start_71
    new-instance v5, Landroid/media/PlayerRecord;

    invoke-direct {v5, p1, p2, p3}, Landroid/media/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_76
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_71 .. :try_end_76} :catch_ec

    .line 1256
    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    :try_start_76
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_7b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_76 .. :try_end_7b} :catch_7c

    goto :goto_13

    .line 1277
    .end local v2    # "index":I
    :catch_7c
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_7d
    const-string v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong index (inStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastPlaying="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " accessing media button stack"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 1259
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .restart local v2    # "index":I
    .restart local v6    # "prse":Landroid/media/PlayerRecord;
    :cond_b7
    :try_start_b7
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_ef

    .line 1260
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/PlayerRecord;
    :try_end_c8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b7 .. :try_end_c8} :catch_ec

    .line 1262
    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    :try_start_c8
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->removeElementAt(I)V

    .line 1263
    invoke-virtual {v5}, Landroid/media/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_da

    .line 1265
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 1268
    :cond_da
    if-le v1, v3, :cond_e3

    .line 1269
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 1271
    :cond_e3
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_ea
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c8 .. :try_end_ea} :catch_7c

    goto/16 :goto_13

    .line 1277
    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .restart local v6    # "prse":Landroid/media/PlayerRecord;
    :catch_ec
    move-exception v0

    move-object v5, v6

    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    goto :goto_7d

    .end local v5    # "prse":Landroid/media/PlayerRecord;
    .restart local v6    # "prse":Landroid/media/PlayerRecord;
    :cond_ef
    move-object v5, v6

    .end local v6    # "prse":Landroid/media/PlayerRecord;
    .restart local v5    # "prse":Landroid/media/PlayerRecord;
    goto/16 :goto_13
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .registers 6
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1831
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1832
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1833
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1834
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1835
    const/4 v2, 0x1

    .line 1838
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .registers 22
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 1857
    const-string v4, "MediaFocusControl"

    const-string v5, ">>> registerRemoteControlDisplay"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1859
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_3b

    .line 1860
    if-eqz p1, :cond_19

    :try_start_13
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1861
    :cond_19
    monitor-exit v16
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_7d

    :try_start_1a
    monitor-exit v15
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_3b

    .line 1917
    :goto_1b
    return-void

    .line 1863
    :cond_1c
    :try_start_1c
    new-instance v11, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;-><init>(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    .line 1864
    .local v11, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v11, v4}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$502(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 1865
    move-object/from16 v0, p4

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v11, v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$402(Landroid/media/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 1866
    invoke-virtual {v11}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->init()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1868
    monitor-exit v16
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_7d

    :try_start_39
    monitor-exit v15

    goto :goto_1b

    .line 1916
    .end local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :catchall_3b
    move-exception v4

    monitor-exit v15
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw v4

    .line 1871
    .restart local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_3e
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1875
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1876
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_4d
    :goto_4d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1877
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/PlayerRecord;

    .line 1878
    .local v13, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v13}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_7d

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 1880
    :try_start_5f
    invoke-virtual {v13}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 1885
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v5}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/PlayerRecord;ZZ)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_73} :catch_74
    .catchall {:try_start_5f .. :try_end_73} :catchall_7d

    goto :goto_4d

    .line 1887
    :catch_74
    move-exception v12

    .line 1888
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_75
    const-string v4, "MediaFocusControl"

    const-string v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 1915
    .end local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "prse":Landroid/media/PlayerRecord;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_7d
    move-exception v4

    monitor-exit v16
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v4
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_3b

    .line 1895
    .restart local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_80
    :try_start_80
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/PlayerRecord;

    .line 1896
    .restart local v13    # "prse":Landroid/media/PlayerRecord;
    if-eqz v13, :cond_97

    iget-object v4, v13, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_97

    .line 1900
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v5}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/PlayerRecord;ZZ)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_97} :catch_ac
    .catchall {:try_start_80 .. :try_end_97} :catchall_7d

    .line 1912
    .end local v13    # "prse":Landroid/media/PlayerRecord;
    :cond_97
    :goto_97
    :try_start_97
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1915
    monitor-exit v16
    :try_end_a9
    .catchall {:try_start_97 .. :try_end_a9} :catchall_7d

    .line 1916
    :try_start_a9
    monitor-exit v15
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_3b

    goto/16 :goto_1b

    .line 1904
    :catch_ac
    move-exception v12

    .line 1905
    .local v12, "e":Ljava/lang/Exception;
    :try_start_ad
    const-string v4, "MediaFocusControl"

    const-string v5, "Error updating focussed RCC to RCD "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_7d

    goto :goto_97
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z

    .prologue
    .line 534
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FocusRequester;

    invoke-virtual {v2, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 537
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 538
    .local v0, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    .line 539
    if-eqz p2, :cond_26

    .line 541
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 559
    .end local v0    # "fr":Landroid/media/FocusRequester;
    :cond_26
    return-void

    .line 548
    :cond_27
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 549
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 550
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 551
    .restart local v0    # "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 552
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 555
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    goto :goto_2d
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 568
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    invoke-virtual {v3, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v1, 0x1

    .line 572
    .local v1, "isTopOfStackForClientToRemove":Z
    :goto_17
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 573
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 574
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 575
    .local v0, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 576
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1d

    .line 568
    .end local v0    # "fr":Landroid/media/FocusRequester;
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_4b
    const/4 v1, 0x0

    goto :goto_17

    .line 581
    .restart local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_4d
    if-eqz v1, :cond_52

    .line 584
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 586
    :cond_52
    return-void
.end method

.method private removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1295
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_8
    if-ltz v1, :cond_20

    .line 1296
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 1297
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1298
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->destroy()V

    .line 1300
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_20
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_20} :catch_24

    .line 1308
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_20
    :goto_20
    return-void

    .line 1295
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1304
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_24
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 11
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 360
    if-nez p2, :cond_e

    .line 361
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    :cond_5
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 367
    :goto_d
    return-void

    .line 362
    :cond_e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_d
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .registers 5
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 972
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 973
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 975
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 976
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 978
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .registers 10
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 2197
    if-nez p2, :cond_3

    .line 2227
    :cond_2
    :goto_2
    return-void

    .line 2201
    :cond_3
    const/4 v3, 0x0

    .line 2202
    .local v3, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2207
    :try_start_7
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_f
    if-ltz v1, :cond_21

    .line 2208
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 2210
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v4

    if-ne v4, p1, :cond_32

    .line 2211
    iget-object v3, v2, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_21
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_21} :catch_35
    .catchall {:try_start_7 .. :try_end_21} :catchall_3e

    .line 2219
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_3e

    .line 2220
    if-eqz v3, :cond_2

    .line 2222
    const/4 v4, -0x1

    :try_start_25
    invoke-interface {v3, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2

    .line 2223
    :catch_29
    move-exception v0

    .line 2224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaFocusControl"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2207
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2215
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_35
    move-exception v0

    .line 2217
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_36
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing media button stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 2219
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_3e
    move-exception v4

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_3e

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .registers 7
    .param p1, "newClientGeneration"    # I

    .prologue
    .line 1353
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1354
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    .line 1356
    .local v1, "se":Landroid/media/PlayerRecord;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1358
    :try_start_1a
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22

    goto :goto_6

    .line 1359
    :catch_22
    move-exception v0

    .line 1360
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1362
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->unlinkToRcClientDeath()V

    goto :goto_6

    .line 1366
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Landroid/media/PlayerRecord;
    :cond_31
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 10
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1329
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 1330
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_37

    .line 1331
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1332
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_34

    .line 1335
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_start_1d
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25
    .catchall {:try_start_1d .. :try_end_24} :catchall_34

    goto :goto_11

    .line 1337
    :catch_25
    move-exception v2

    .line 1338
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string v3, "MediaFocusControl"

    const-string v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1339
    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1340
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 1344
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw v3

    :cond_37
    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 1345
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 4
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1379
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1381
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 1382
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .registers 14
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1005
    const/4 v7, 0x0

    .line 1010
    .local v7, "voiceIntent":Landroid/content/Intent;
    iget-object v10, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1011
    .local v6, "pm":Landroid/os/PowerManager;
    iget-object v10, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v10, :cond_6d

    iget-object v10, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v10

    if-eqz v10, :cond_6d

    move v4, v8

    .line 1012
    .local v4, "isLocked":Z
    :goto_1b
    if-nez v4, :cond_7f

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 1019
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1020
    .local v5, "pkm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.sec.action.SVOICE"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1021
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6f

    .line 1022
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1023
    .restart local v7    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "MediaFocusControl"

    const-string/jumbo v9, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "pkm":Landroid/content/pm/PackageManager;
    :goto_49
    if-eqz p1, :cond_50

    .line 1038
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1040
    :cond_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1042
    .local v2, "identity":J
    if-eqz v7, :cond_62

    .line 1043
    const/high16 v8, 0x10800000

    :try_start_58
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1045
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_62
    .catch Landroid/content/ActivityNotFoundException; {:try_start_58 .. :try_end_62} :catch_a0
    .catchall {:try_start_58 .. :try_end_62} :catchall_c4

    .line 1050
    :cond_62
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1051
    if-eqz p1, :cond_6c

    .line 1052
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1055
    :cond_6c
    :goto_6c
    return-void

    .end local v2    # "identity":J
    .end local v4    # "isLocked":Z
    :cond_6d
    move v4, v9

    .line 1011
    goto :goto_1b

    .line 1025
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "isLocked":Z
    .restart local v5    # "pkm":Landroid/content/pm/PackageManager;
    :cond_6f
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .restart local v7    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "MediaFocusControl"

    const-string/jumbo v9, "voice-based interactions: about to use SVOICE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1031
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "pkm":Landroid/content/pm/PackageManager;
    :cond_7f
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "voiceIntent":Landroid/content/Intent;
    const-string v10, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    .restart local v7    # "voiceIntent":Landroid/content/Intent;
    const-string v10, "android.speech.extras.EXTRA_SECURE"

    if-eqz v4, :cond_9e

    iget-object v11, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v11

    if-eqz v11, :cond_9e

    :goto_92
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1034
    const-string v8, "MediaFocusControl"

    const-string/jumbo v9, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_9e
    move v8, v9

    .line 1032
    goto :goto_92

    .line 1047
    .restart local v2    # "identity":J
    :catch_a0
    move-exception v1

    .line 1048
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_a1
    const-string v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity for search: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_c4

    .line 1050
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1051
    if-eqz p1, :cond_6c

    .line 1052
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6c

    .line 1050
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_c4
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1051
    if-eqz p1, :cond_cf

    .line 1052
    iget-object v9, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_cf
    throw v8
.end method

.method private updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/PlayerRecord;ZZ)V
    .registers 10
    .param p1, "prse"    # Landroid/media/PlayerRecord;
    .param p2, "isFocussed"    # Z
    .param p3, "isAvailable"    # Z

    .prologue
    .line 1409
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1411
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    iget-object v4, p1, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const-string/jumbo v2, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    const-string/jumbo v2, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1415
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2, v1}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1416
    const-string v2, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating focussed RCC change to RCD: CallingPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFocussed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_53} :catch_55
    .catchall {:try_start_3 .. :try_end_53} :catchall_5e

    .line 1422
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_53
    :try_start_53
    monitor-exit v3

    .line 1423
    return-void

    .line 1419
    :catch_55
    move-exception v0

    .line 1420
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MediaFocusControl"

    const-string v4, "Error while updating focussed RCC change"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 1422
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5e
    move-exception v2

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_5e

    throw v2
.end method

.method private updateRemoteControlDisplay_syncPrs(I)V
    .registers 8
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1514
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerRecord;

    .line 1515
    .local v1, "prse":Landroid/media/PlayerRecord;
    move v0, p1

    .line 1518
    .local v0, "infoFlagsAboutToBeUsed":I
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_13

    .line 1520
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1534
    :goto_12
    return-void

    .line 1523
    :cond_13
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1524
    :try_start_16
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1526
    const/16 v0, 0xf

    .line 1528
    :cond_24
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1529
    invoke-virtual {v1}, Landroid/media/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1530
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_3f

    .line 1532
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12

    .line 1530
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 8
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 748
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :try_start_19
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_19 .. :try_end_1c} :catch_25

    .line 752
    const/4 v1, 0x1

    :try_start_1d
    invoke-direct {p0, p2, v1}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 753
    monitor-exit v2

    .line 762
    :goto_21
    return v4

    .line 753
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catch Ljava/util/ConcurrentModificationException; {:try_start_24 .. :try_end_25} :catch_25

    .line 754
    :catch_25
    move-exception v0

    .line 758
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_21
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .registers 11
    .param p1, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2144
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2147
    :try_start_5
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_d
    if-ltz v1, :cond_57

    .line 2148
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 2149
    .local v2, "prse":Landroid/media/PlayerRecord;
    iget v6, v2, Landroid/media/PlayerRecord;->mPlaybackType:I

    if-ne v6, v3, :cond_61

    iget-object v6, v2, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    iget v6, v6, Landroid/media/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v6}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v6

    if-eqz v6, :cond_61

    iget v6, v2, Landroid/media/PlayerRecord;->mPlaybackStream:I

    if-ne v6, p1, :cond_61

    .line 2154
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v6
    :try_end_2c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_2c} :catch_4f
    .catchall {:try_start_5 .. :try_end_2c} :catchall_64

    .line 2155
    :try_start_2c
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v8

    iput v8, v7, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2156
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Landroid/media/PlayerRecord;->mPlaybackVolume:I

    iput v8, v7, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolume:I

    .line 2157
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Landroid/media/PlayerRecord;->mPlaybackVolumeMax:I

    iput v8, v7, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    .line 2158
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Landroid/media/PlayerRecord;->mPlaybackVolumeHandling:I

    iput v8, v7, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    .line 2159
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2160
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_4c

    .line 2161
    :try_start_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_64

    .line 2172
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :goto_4b
    return v3

    .line 2160
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v3
    :try_end_4f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_64

    .line 2164
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_4f
    move-exception v0

    .line 2166
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_50
    const-string v3, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2168
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_64

    .line 2169
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v5

    .line 2170
    const/4 v3, 0x0

    :try_start_5c
    iput-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2171
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_67

    move v3, v4

    .line 2172
    goto :goto_4b

    .line 2147
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_61
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2168
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catchall_64
    move-exception v3

    :try_start_65
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v3

    .line 2171
    :catchall_67
    move-exception v3

    :try_start_68
    monitor-exit v5
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .registers 4

    .prologue
    .line 477
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 478
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 480
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 481
    .local v0, "exFocusOwner":Landroid/media/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusLoss(I)V

    .line 482
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    .line 484
    .end local v0    # "exFocusOwner":Landroid/media/FocusRequester;
    :cond_1a
    monitor-exit v2

    .line 485
    return-void

    .line 484
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 783
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 791
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 792
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 140
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 141
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 142
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    .line 143
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .registers 3

    .prologue
    .line 648
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 650
    const/4 v0, 0x0

    monitor-exit v1

    .line 652
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_d

    .line 654
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected getCurrentAudioFocusPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 658
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 660
    const/4 v0, 0x0

    monitor-exit v1

    .line 662
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_d

    .line 664
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 2071
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2073
    return-void
.end method

.method protected getRemoteStreamMaxVolume()I
    .registers 4

    .prologue
    .line 2230
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2231
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 2232
    const/4 v0, 0x0

    monitor-exit v1

    .line 2234
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_c

    .line 2235
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .registers 4

    .prologue
    .line 2239
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2240
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 2241
    const/4 v0, 0x0

    monitor-exit v1

    .line 2243
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_c

    .line 2244
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected getUserIdForCurrentAudioFocus()I
    .registers 3

    .prologue
    .line 2302
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2303
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2304
    const/4 v0, -0x1

    monitor-exit v1

    .line 2306
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getUserId()I

    move-result v0

    monitor-exit v1

    goto :goto_d

    .line 2308
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1065
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_9

    .line 1066
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1068
    :cond_9
    return-void
.end method

.method protected postReevaluateRemote()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2290
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2291
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 1604
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1606
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :goto_11
    return-void

    .line 1609
    :cond_12
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1610
    :try_start_15
    iput-object p1, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1611
    monitor-exit v1

    goto :goto_11

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1565
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1568
    :try_start_1b
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1570
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1572
    :cond_26
    monitor-exit v1

    .line 1573
    return-void

    .line 1572
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .registers 11
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 1638
    const-string v4, "MediaFocusControl"

    const-string v5, "Register remote control client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v3, -0x1

    .line 1640
    .local v3, "rccId":I
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1643
    :try_start_b
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_13
    if-ltz v1, :cond_2c

    .line 1644
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 1645
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, p2, p3, v4}, Landroid/media/PlayerRecord;->resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    :try_end_2a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_2a} :catch_52
    .catchall {:try_start_b .. :try_end_2a} :catchall_5b

    .line 1649
    if-nez p2, :cond_39

    .line 1674
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1675
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1677
    :cond_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_5b

    .line 1678
    return v3

    .line 1653
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v3

    .line 1657
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2c

    .line 1658
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V

    .line 1660
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v2, v4, v6}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/PlayerRecord;ZZ)V
    :try_end_51
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_39 .. :try_end_51} :catch_52
    .catchall {:try_start_39 .. :try_end_51} :catchall_5b

    goto :goto_2c

    .line 1667
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_52
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_53
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1677
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_5b
    move-exception v4

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw v4

    .line 1643
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_5e
    add-int/lit8 v1, v1, -0x1

    goto :goto_13
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .registers 8
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 241
    .local v0, "reg":I
    if-eqz v0, :cond_c

    .line 242
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 243
    const/4 v1, 0x1

    .line 248
    :goto_b
    return v1

    .line 245
    :cond_c
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register IRemoteControlDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .registers 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 227
    invoke-direct {p0, p4}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 228
    .local v0, "reg":I
    if-eqz v0, :cond_b

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 230
    const/4 v1, 0x1

    .line 235
    :goto_a
    return v1

    .line 232
    :cond_b
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or be an enabled NotificationListenerService for registerRemoteController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 13
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1974
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1975
    :try_start_3
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1976
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    .line 1977
    .local v0, "artworkSizeUpdate":Z
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    if-nez v0, :cond_3e

    .line 1978
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1979
    .local v1, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1980
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_36

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_a

    .line 1981
    :cond_36
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    .line 1982
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1, p3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$802(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    .line 1983
    const/4 v0, 0x1

    goto :goto_a

    .line 1987
    .end local v1    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_3e
    if-eqz v0, :cond_6c

    .line 1990
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1991
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_46
    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 1992
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/PlayerRecord;

    .line 1993
    .local v4, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v4}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_69

    move-result-object v6

    if-eqz v6, :cond_46

    .line 1995
    :try_start_58
    invoke-virtual {v4}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_60
    .catchall {:try_start_58 .. :try_end_5f} :catchall_69

    goto :goto_46

    .line 1996
    :catch_60
    move-exception v3

    .line 1997
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_61
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 2002
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Landroid/media/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_69
    move-exception v6

    monitor-exit v7
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_69

    throw v6

    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_6c
    :try_start_6c
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_69

    .line 2003
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 12
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2019
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2020
    const/4 v4, 0x0

    .line 2023
    .local v4, "rcdRegistered":Z
    :try_start_4
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2024
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 2025
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2026
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2027
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$2302(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2028
    const/4 v4, 0x1

    .line 2032
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_2c
    if-nez v4, :cond_30

    .line 2033
    monitor-exit v7

    .line 2049
    :goto_2f
    return-void

    .line 2037
    :cond_30
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2038
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2039
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/PlayerRecord;

    .line 2040
    .local v3, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v3}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_59

    move-result-object v6

    if-eqz v6, :cond_36

    .line 2042
    :try_start_48
    invoke-virtual {v3}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_50
    .catchall {:try_start_48 .. :try_end_4f} :catchall_59

    goto :goto_36

    .line 2043
    :catch_50
    move-exception v2

    .line 2044
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_51
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 2048
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "prse":Landroid/media/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :catchall_59
    move-exception v6

    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_59

    throw v6

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_5c
    :try_start_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    goto :goto_2f
.end method

.method protected requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .registers 24
    .param p1, "mainStreamType"    # I
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_35

    .line 674
    const-string v3, "MediaFocusControl"

    const-string v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v3, 0x0

    .line 743
    :goto_34
    return v3

    .line 678
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_49

    .line 680
    const/4 v3, 0x0

    goto :goto_34

    .line 683
    :cond_49
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 684
    :try_start_4c
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Landroid/media/MediaFocusControl;->canReassignAudioFocus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 685
    const/4 v3, 0x0

    monitor-exit v15

    goto :goto_34

    .line 741
    :catchall_59
    move-exception v3

    monitor-exit v15
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_59

    throw v3

    .line 688
    :cond_5c
    :try_start_5c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/media/MediaFocusControl;->canReassignAudioFocusFromQchat(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 689
    const/4 v3, 0x0

    monitor-exit v15

    goto :goto_34

    .line 695
    :cond_6b
    new-instance v9, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_59

    .line 697
    .local v9, "afdh":Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_75
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7a} :catch_e7
    .catchall {:try_start_75 .. :try_end_7a} :catchall_59

    .line 705
    const/4 v3, 0x2

    move/from16 v0, p2

    if-eq v0, v3, :cond_af

    const/4 v3, 0x3

    move/from16 v0, p2

    if-eq v0, v3, :cond_af

    const/4 v3, 0x4

    move/from16 v0, p2

    if-eq v0, v3, :cond_af

    .line 706
    :try_start_89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const v4, 0x186a0

    div-int v14, v3, v4

    .line 708
    .local v14, "userId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_af

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    invoke-virtual {v3}, Landroid/media/FocusRequester;->getUserId()I

    move-result v3

    if-eq v3, v14, :cond_af

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFocusControl;->discardAudioFocusOwner()V

    .line 714
    .end local v14    # "userId":I
    :cond_af
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_119

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    invoke-virtual {v3}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_10c

    .line 720
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 721
    const/4 v3, 0x1

    monitor-exit v15

    goto/16 :goto_34

    .line 698
    :catch_e7
    move-exception v12

    .line 700
    .local v12, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v3, 0x0

    monitor-exit v15

    goto/16 :goto_34

    .line 725
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_10c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/FocusRequester;

    .line 726
    .local v13, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v13}, Landroid/media/FocusRequester;->release()V

    .line 730
    .end local v13    # "fr":Landroid/media/FocusRequester;
    :cond_119
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_132

    .line 734
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 738
    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    new-instance v3, Landroid/media/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Landroid/media/FocusRequester;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    monitor-exit v15
    :try_end_153
    .catchall {:try_start_89 .. :try_end_153} :catchall_59

    .line 743
    const/4 v3, 0x1

    goto/16 :goto_34
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 2090
    const-string v0, "MediaFocusControl"

    const-string/jumbo v1, "setRemoteControlClientBrowsedPlayer: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2093
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .registers 11
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    const/4 v2, 0x0

    .line 2052
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xd

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    move v3, v2

    move v4, p3

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2054
    return-void
.end method

.method protected setRemoteStreamVolume(I)V
    .registers 10
    .param p1, "vol"    # I

    .prologue
    .line 2249
    const/4 v3, -0x1

    .line 2250
    .local v3, "rccId":I
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    monitor-enter v6

    .line 2251
    :try_start_4
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v5, v5, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_d

    .line 2252
    monitor-exit v6

    .line 2282
    :cond_c
    :goto_c
    return-void

    .line 2254
    :cond_d
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/PlayerRecord$RemotePlaybackState;

    iget v3, v5, Landroid/media/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2255
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_41

    .line 2256
    const/4 v4, 0x0

    .line 2257
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v6

    .line 2262
    :try_start_16
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_1e
    if-ltz v1, :cond_30

    .line 2263
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 2265
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRccId()I

    move-result v5

    if-ne v5, v3, :cond_44

    .line 2266
    iget-object v4, v2, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_30} :catch_47
    .catchall {:try_start_16 .. :try_end_30} :catchall_50

    .line 2274
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_30
    :goto_30
    :try_start_30
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_50

    .line 2275
    if-eqz v4, :cond_c

    .line 2277
    const/4 v5, 0x0

    :try_start_34
    invoke-interface {v4, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_c

    .line 2278
    :catch_38
    move-exception v0

    .line 2279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MediaFocusControl"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 2255
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catchall_41
    move-exception v5

    :try_start_42
    monitor-exit v6
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v5

    .line 2262
    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 2270
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_47
    move-exception v0

    .line 2272
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_48
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 2274
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_50
    move-exception v5

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_50

    throw v5
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 767
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 768
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 769
    monitor-exit v1

    .line 770
    return-void

    .line 769
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .registers 3

    .prologue
    .line 1618
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1620
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :goto_11
    return-void

    .line 1623
    :cond_12
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1624
    const/4 v0, 0x0

    :try_start_16
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1625
    monitor-exit v1

    goto :goto_11

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1581
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1584
    :try_start_1b
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 1585
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V

    .line 1586
    if-eqz v0, :cond_29

    .line 1588
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1590
    :cond_29
    monitor-exit v2

    .line 1591
    return-void

    .line 1590
    .end local v0    # "topOfStackWillChange":Z
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 1594
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1597
    return-void
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .registers 11
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    const/4 v4, 0x0

    .line 1688
    const-string v5, "MediaFocusControl"

    const-string v6, "Unregister remote control client"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1690
    const/4 v3, 0x0

    .line 1692
    .local v3, "topRccChange":Z
    :try_start_c
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_14
    if-ltz v1, :cond_41

    .line 1693
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerRecord;

    .line 1694
    .local v2, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v2, p1}, Landroid/media/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-virtual {v2}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1697
    invoke-virtual {v2}, Landroid/media/PlayerRecord;->resetControllerInfoForNoRcc()V

    .line 1700
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v2, v6, v7}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/PlayerRecord;ZZ)V

    .line 1703
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I
    :try_end_3b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_3b} :catch_4f
    .catchall {:try_start_c .. :try_end_3b} :catchall_58

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_4a

    const/4 v3, 0x1

    .line 1712
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_41
    :goto_41
    if-eqz v3, :cond_48

    .line 1714
    const/16 v4, 0xf

    :try_start_45
    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1716
    :cond_48
    monitor-exit v5

    .line 1717
    return-void

    .restart local v1    # "index":I
    .restart local v2    # "prse":Landroid/media/PlayerRecord;
    :cond_4a
    move v3, v4

    .line 1703
    goto :goto_41

    .line 1692
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1708
    .end local v1    # "index":I
    .end local v2    # "prse":Landroid/media/PlayerRecord;
    :catch_4f
    move-exception v0

    .line 1710
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 1716
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_58
    move-exception v4

    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_58

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 11
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1927
    const-string v6, "MediaFocusControl"

    const-string v7, "<<< unregisterRemoteControlDisplay"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1929
    if-nez p1, :cond_e

    .line 1930
    :try_start_c
    monitor-exit v7

    .line 1962
    :goto_d
    return-void

    .line 1933
    :cond_e
    const/4 v2, 0x0

    .line 1934
    .local v2, "displayWasPluggedIn":Z
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1935
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    if-nez v2, :cond_40

    .line 1936
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1937
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1938
    const/4 v2, 0x1

    .line 1939
    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1940
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 1961
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "displayWasPluggedIn":Z
    :catchall_3d
    move-exception v6

    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    throw v6

    .line 1944
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v2    # "displayWasPluggedIn":Z
    :cond_40
    if-eqz v2, :cond_6b

    .line 1947
    :try_start_42
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1948
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_48
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1949
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/PlayerRecord;

    .line 1950
    .local v4, "prse":Landroid/media/PlayerRecord;
    invoke-virtual {v4}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_3d

    move-result-object v6

    if-eqz v6, :cond_48

    .line 1952
    :try_start_5a
    invoke-virtual {v4}, Landroid/media/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_61} :catch_62
    .catchall {:try_start_5a .. :try_end_61} :catchall_3d

    goto :goto_48

    .line 1953
    :catch_62
    move-exception v3

    .line 1954
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_63
    const-string v6, "MediaFocusControl"

    const-string v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1961
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Landroid/media/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/PlayerRecord;>;"
    :cond_6b
    monitor-exit v7
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_3d

    goto :goto_d
.end method
