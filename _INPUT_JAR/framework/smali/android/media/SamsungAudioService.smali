.class public Landroid/media/SamsungAudioService;
.super Ljava/lang/Object;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;,
        Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_AUDIO:Z = true

.field private static final EARJACK_COUNT_PATH:Ljava/lang/String; = "/efs/FactoryApp/earjack_count"

.field private static final GLOBAL_EFFECT_ENABLED:Z

.field private static final MSG_CHECK_EARCARE_STATE:I = 0x1

.field private static final MSG_END_SOUND_MANNER_MODE:I = 0x5

.field private static final MSG_PERFORM_SOFT_RESET:I = 0x2

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x3

.field private static final MSG_USB_CHECK_RELEASE:I = 0x0

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0x4

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String; = "hearing_musiccheck"

.field private static final SETTING_K2HD_CHECKED:Ljava/lang/String; = "k2hd_effect"

.field private static final SETTING_SOUNDALIVE_CHECKED:Ljava/lang/String; = "sound_alive_effect"

.field private static final SETTING_TUBEAMP_CHECKED:Ljava/lang/String; = "tube_amp_effect"

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final TAG:Ljava/lang/String;

.field private static final TMS_ACTION_TYPE_START:I = 0x1

.field private static final TMS_ACTION_TYPE_STOP:I = 0x2


# instance fields
.field private emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mAllSoundMute:I

.field private final mAudioService:Landroid/media/AudioService;

.field private mAutoHaptic:I

.field private mBackgroundMusicService:Landroid/media/BackgroundMusicService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCpuCoreNumHelper:Landroid/os/DVFSHelper;

.field private mCpuHelper:Landroid/os/DVFSHelper;

.field private mDualMicMode:I

.field private mExternalUsbInfo:Ljava/lang/String;

.field private mFakeState:Z

.field private mIsEarCareEnabled:Z

.field private mIsEarCareSettingOn:Z

.field private mIsPlaySilentModeOff:Z

.field private mK2HDEnabled:I

.field private mMonoMode:I

.field private mMySoundEnabled:I

.field private mNaturalSound:I

.field private mOldIsSmartdock:Z

.field private mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

.field mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mSamsungAudioSettingsObserver:Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

.field private mSilentModeOff:Z

.field private mSoundAliveEnabled:I

.field private mSoundBalance:I

.field private mStatusbarExpanded:Z

.field private mSystemReady:Z

.field private mTubeAmpEnabled:I

.field private final mUEventUsbConnectObserver:Landroid/os/UEventObserver;

.field private mUSBDetected:Z

.field private mUsbSupportedFormat:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    const-class v2, Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    .line 114
    const-string/jumbo v2, "persist.audio.globaleffect"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_16

    :goto_13
    sput-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    return-void

    :cond_16
    move v0, v1

    goto :goto_13
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V
    .registers 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Landroid/media/AudioService$VolumeController;
    .param p4, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    .line 89
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 90
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    .line 97
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z

    .line 98
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsEarCareEnabled:Z

    .line 101
    iput-object v3, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 104
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    .line 106
    iput v2, p0, Landroid/media/SamsungAudioService;->mUsbSupportedFormat:I

    .line 108
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 109
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    .line 110
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    .line 138
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    .line 283
    new-instance v1, Landroid/media/SamsungAudioService$1;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$1;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v1, Landroid/media/SamsungAudioService$2;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$2;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    .line 143
    new-instance v1, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    invoke-direct {v1, p0, p1}, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;-><init>(Landroid/media/SamsungAudioService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    .line 144
    iput-object p2, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 146
    iput-object p4, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    .line 148
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    .line 149
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    .line 150
    new-instance v1, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioSettingsObserver:Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

    .line 151
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    const-string v2, "USB_CONNECTION"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.app.audio.epinforequest"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "com.sec.tms.audio.server"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.action.proximity_sensor"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 183
    iget-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c6

    iget-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 184
    const-string v1, "emergency_mode=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 188
    :cond_c6
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    .line 190
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v1, p2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 192
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 57
    sget-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/SamsungAudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/media/SamsungAudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/media/SamsungAudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->playSilentModeSound()V

    return-void
.end method

.method static synthetic access$1302(Landroid/media/SamsungAudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    return p1
.end method

.method static synthetic access$1402(Landroid/media/SamsungAudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/media/SamsungAudioService;)Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 57
    invoke-static/range {p0 .. p6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/SamsungAudioService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/SamsungAudioService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/SamsungAudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/media/SamsungAudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget v0, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    return v0
.end method

.method static synthetic access$2000(Landroid/media/SamsungAudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    return v0
.end method

.method static synthetic access$2002(Landroid/media/SamsungAudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    return p1
.end method

.method static synthetic access$202(Landroid/media/SamsungAudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    return p1
.end method

.method static synthetic access$2100(Landroid/media/SamsungAudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/SamsungAudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    return v0
.end method

.method static synthetic access$2202(Landroid/media/SamsungAudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    return p1
.end method

.method static synthetic access$2300(Landroid/media/SamsungAudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/SamsungAudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    return v0
.end method

.method static synthetic access$2402(Landroid/media/SamsungAudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    return p1
.end method

.method static synthetic access$2500(Landroid/media/SamsungAudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    return-void
.end method

.method static synthetic access$2602(Landroid/media/SamsungAudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    return p1
.end method

.method static synthetic access$2702(Landroid/media/SamsungAudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/media/SamsungAudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$2900(Landroid/media/SamsungAudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->isUSBCheckStreamActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/media/SamsungAudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setGlobalMySound(I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/media/SamsungAudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/media/SamsungAudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    return p1
.end method

.method static synthetic access$400(Landroid/media/SamsungAudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget v0, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/SamsungAudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    return p1
.end method

.method static synthetic access$500(Landroid/media/SamsungAudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/SamsungAudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget v0, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/SamsungAudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    return p1
.end method

.method static synthetic access$700(Landroid/media/SamsungAudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/SamsungAudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 57
    iget v0, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    return v0
.end method

.method static synthetic access$802(Landroid/media/SamsungAudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    return p1
.end method

.method static synthetic access$900(Landroid/media/SamsungAudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V

    return-void
.end method

.method private getActiveStreamCount()I
    .registers 4

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "nReturn":I
    const/4 v1, 0x0

    .local v1, "nStreamNum":I
    :goto_2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 803
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 804
    add-int/lit8 v0, v0, 0x1

    .line 802
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 807
    :cond_14
    return v0
.end method

.method protected static getFactoryMode()Z
    .registers 5

    .prologue
    .line 836
    const/4 v1, 0x0

    .line 838
    .local v1, "userMode":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v1

    .line 843
    :goto_f
    if-eqz v1, :cond_26

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 844
    const/4 v2, 0x0

    .line 847
    :goto_1a
    return v2

    .line 839
    :catch_1b
    move-exception v0

    .line 840
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 841
    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 846
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_26
    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private isSmartDockConnected()Z
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1037
    const-wide/16 v10, 0x64

    :try_start_6
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_39

    .line 1041
    :goto_9
    new-array v1, v13, [C

    .line 1042
    .local v1, "buffer":[C
    const-string/jumbo v0, "sys/class/sec/switch/adc"

    .line 1043
    .local v0, "SmartDName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1044
    .local v5, "file":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1046
    .local v2, "deviceValue":Ljava/lang/String;
    :try_start_10
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_15} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_81
    .catchall {:try_start_10 .. :try_end_15} :catchall_94

    .line 1047
    .end local v5    # "file":Ljava/io/FileReader;
    .local v6, "file":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_18
    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 1048
    .local v7, "len":I
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 1049
    if-le v7, v8, :cond_53

    .line 1050
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v3, v1, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .end local v2    # "deviceValue":Ljava/lang/String;
    .local v3, "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .line 1053
    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    :goto_2a
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_2f} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_a3
    .catchall {:try_start_18 .. :try_end_2f} :catchall_a0

    move-result v10

    if-eqz v10, :cond_60

    .line 1062
    if-eqz v6, :cond_37

    .line 1063
    :try_start_34
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_5b

    :cond_37
    :goto_37
    move-object v5, v6

    .line 1071
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_38
    return v8

    .line 1038
    .end local v0    # "SmartDName":Ljava/lang/String;
    .end local v1    # "buffer":[C
    .end local v2    # "deviceValue":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    :catch_39
    move-exception v4

    .line 1039
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in Thread.sleep() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1052
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "SmartDName":Ljava/lang/String;
    .restart local v1    # "buffer":[C
    .restart local v2    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :cond_53
    :try_start_53
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_59} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_a3
    .catchall {:try_start_53 .. :try_end_59} :catchall_a0

    .end local v2    # "deviceValue":Ljava/lang/String;
    .restart local v3    # "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    goto :goto_2a

    .line 1065
    :catch_5b
    move-exception v4

    .line 1067
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 1062
    .end local v4    # "e":Ljava/io/IOException;
    :cond_60
    if-eqz v6, :cond_65

    .line 1063
    :try_start_62
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_68

    :cond_65
    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :cond_66
    :goto_66
    move v8, v9

    .line 1071
    goto :goto_38

    .line 1065
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :catch_68
    move-exception v4

    .line 1067
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 1069
    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_66

    .line 1056
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catch_6e
    move-exception v4

    .line 1057
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_6f
    :try_start_6f
    sget-object v8, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v10, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_94

    .line 1062
    if-eqz v5, :cond_66

    .line 1063
    :try_start_78
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_66

    .line 1065
    :catch_7c
    move-exception v4

    .line 1067
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 1058
    .end local v4    # "e":Ljava/io/IOException;
    :catch_81
    move-exception v4

    .line 1059
    .local v4, "e":Ljava/lang/Exception;
    :goto_82
    :try_start_82
    sget-object v8, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_94

    .line 1062
    if-eqz v5, :cond_66

    .line 1063
    :try_start_8b
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_66

    .line 1065
    :catch_8f
    move-exception v4

    .line 1067
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 1061
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_94
    move-exception v8

    .line 1062
    :goto_95
    if-eqz v5, :cond_9a

    .line 1063
    :try_start_97
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 1068
    :cond_9a
    :goto_9a
    throw v8

    .line 1065
    :catch_9b
    move-exception v4

    .line 1067
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    .line 1061
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catchall_a0
    move-exception v8

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_95

    .line 1058
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_a3
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_82

    .line 1056
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_a6
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_6f
.end method

.method private isUSBCheckStreamActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 646
    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method private playSilentModeSound()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 919
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1a

    .line 920
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Settings.System.getIntForUser FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :goto_19
    return-void

    .line 924
    :cond_1a
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    if-eqz v0, :cond_27

    .line 925
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mSilentModeOff TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 929
    :cond_27
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    .line 930
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->playSoundEffect(I)V

    .line 931
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_19
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
    .line 460
    if-nez p2, :cond_e

    .line 461
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    :cond_5
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 467
    :goto_d
    return-void

    .line 462
    :cond_e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_d
.end method

.method private setAutoHaptic(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 1020
    return-void
.end method

.method private setDualMicMode(I)V
    .registers 3
    .param p1, "dualmicMode"    # I

    .prologue
    .line 985
    if-lez p1, :cond_8

    .line 986
    const-string v0, "dualmic_enabled=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 991
    :goto_7
    return-void

    .line 988
    :cond_8
    const-string v0, "dualmic_enabled=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_7
.end method

.method private setGlobalK2HD(I)V
    .registers 3
    .param p1, "isEnable"    # I

    .prologue
    .line 971
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 972
    const-string v0, "k2hd=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 975
    :goto_8
    return-void

    .line 974
    :cond_9
    const-string v0, "k2hd=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_8
.end method

.method private setGlobalMySound(I)V
    .registers 4
    .param p1, "globalMySound"    # I

    .prologue
    .line 961
    sget-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v0, :cond_1a

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;setGlobalMSEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 964
    :cond_1a
    return-void
.end method

.method private setGlobalSoundAlive(I)V
    .registers 4
    .param p1, "isEnable"    # I

    .prologue
    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;setGlobalSoundAliveEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private setGlobalTubeAmp(I)V
    .registers 4
    .param p1, "isEnable"    # I

    .prologue
    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;setGlobalTubeAmpffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method private setMonoMode(I)V
    .registers 4
    .param p1, "monoMode"    # I

    .prologue
    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toMono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 956
    return-void
.end method

.method private setNaturalSoundMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 996
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNaturalSoundMode() - mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-lez p1, :cond_21

    .line 998
    const-string v0, "bwe=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1002
    :goto_20
    return-void

    .line 1000
    :cond_21
    const-string v0, "bwe=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_20
.end method

.method private setSoundBalance()V
    .registers 6

    .prologue
    .line 1025
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sound_balance"

    const/16 v3, 0x32

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1026
    .local v0, "soundBalance":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1027
    return-void
.end method


# virtual methods
.method protected ChangeDefaultVolume()V
    .registers 1

    .prologue
    .line 833
    return-void
.end method

.method protected checkAndSendEarCareInfo()V
    .registers 1

    .prologue
    .line 754
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 196
    const-string v0, "\nSamsungAudioService dump:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected getAllSoundMute()I
    .registers 2

    .prologue
    .line 1011
    iget v0, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    return v0
.end method

.method protected getCurOutDevice()I
    .registers 4

    .prologue
    .line 866
    const-string v1, "audioParam;outDevice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 868
    :cond_10
    sget-object v1, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "getCurOutDevice : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v1, -0x1

    .line 871
    :goto_18
    return v1

    :cond_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_18
.end method

.method protected increaseEARCount()V
    .registers 9

    .prologue
    .line 876
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/earjack_count"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "strEARCount":Ljava/lang/String;
    if-eqz v1, :cond_25

    const-string v4, ""

    if-eq v1, v4, :cond_25

    .line 878
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 879
    .local v2, "earjack_count":J
    const-string v4, "/efs/FactoryApp/earjack_count"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .end local v1    # "strEARCount":Ljava/lang/String;
    .end local v2    # "earjack_count":J
    :goto_24
    return-void

    .line 881
    .restart local v1    # "strEARCount":Ljava/lang/String;
    :cond_25
    const-string v4, "/efs/FactoryApp/earjack_count"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_2c} :catch_47

    goto :goto_24

    .line 883
    .end local v1    # "strEARCount":Ljava/lang/String;
    :catch_2d
    move-exception v0

    .line 884
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 885
    .end local v0    # "e":Ljava/io/IOException;
    :catch_47
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method protected initCPUBoost()V
    .registers 1

    .prologue
    .line 720
    return-void
.end method

.method protected isCoverOpen()Z
    .registers 3

    .prologue
    .line 892
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 893
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_10

    .line 894
    const/4 v1, 0x0

    .line 895
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method protected isFactorySim()Z
    .registers 8

    .prologue
    .line 852
    :try_start_0
    iget-object v4, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 853
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 854
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_3d

    const-string v4, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 856
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v5, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 857
    const/4 v4, 0x1

    .line 862
    .end local v0    # "IMSI":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :goto_23
    return v4

    .line 859
    :catch_24
    move-exception v1

    .line 860
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error checking factory SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3d
    const/4 v4, 0x0

    goto :goto_23
.end method

.method protected isPlaySilentModeOff()Z
    .registers 2

    .prologue
    .line 950
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    return v0
.end method

.method protected isStatusbarExpanded()Z
    .registers 2

    .prologue
    .line 1031
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z

    return v0
.end method

.method protected mediaServerDied()V
    .registers 5

    .prologue
    .line 530
    iget v2, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    .line 532
    sget-boolean v2, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v2, :cond_1d

    .line 533
    iget v2, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setGlobalMySound(I)V

    .line 534
    iget v2, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V

    .line 535
    iget v2, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V

    .line 536
    iget v2, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V

    .line 539
    :cond_1d
    iget v2, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    .line 541
    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    .line 543
    iget v2, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    .line 545
    iget v2, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setAutoHaptic(I)V

    .line 547
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->setSoundBalance()V

    .line 549
    const-string/jumbo v2, "persist.audio.voicetrig"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "voicetrig":Ljava/lang/String;
    if-eqz v0, :cond_52

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voice_trig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 553
    :cond_52
    const-string/jumbo v2, "persist.audio.voicewakeup"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "voicewakeup":Ljava/lang/String;
    if-eqz v1, :cond_84

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 555
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voice_wakeup_mic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 557
    :cond_84
    return-void
.end method

.method protected onAudioService()V
    .registers 3

    .prologue
    .line 479
    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    .line 481
    sget-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v0, :cond_1d

    .line 482
    iget v0, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalMySound(I)V

    .line 483
    iget v0, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V

    .line 484
    iget v0, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V

    .line 485
    iget v0, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V

    .line 488
    :cond_1d
    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    .line 490
    iget v0, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 491
    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    .line 493
    :cond_2a
    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    .line 495
    iget v0, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    if-eqz v0, :cond_38

    .line 496
    iget v0, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setAutoHaptic(I)V

    .line 498
    :cond_38
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->setSoundBalance()V

    .line 499
    return-void
.end method

.method protected performSoftReset()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 562
    iput v3, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    .line 563
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "mono_audio_db"

    iget v2, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 564
    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    .line 566
    sget-boolean v0, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v0, :cond_59

    .line 567
    iput v3, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    .line 568
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hearing_musiccheck"

    iget v2, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 569
    iget v0, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalMySound(I)V

    .line 570
    iput v3, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    .line 571
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sound_alive_effect"

    iget v2, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 572
    iget v0, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V

    .line 573
    iput v3, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    .line 574
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "k2hd_effect"

    iget v2, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 575
    iget v0, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V

    .line 576
    iput v3, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    .line 577
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tube_amp_effect"

    iget v2, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 578
    iget v0, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V

    .line 581
    :cond_59
    iput v3, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    .line 582
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "call_noise_reduction"

    iget v2, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 583
    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    .line 585
    iput v3, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    .line 586
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "all_sound_off"

    iget v2, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 587
    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    .line 589
    iput v3, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    .line 590
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "call_natural_sound"

    iget v2, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 591
    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    .line 593
    iput v3, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    .line 599
    return-void
.end method

.method public playBackgroundMusic(II)Z
    .registers 6
    .param p1, "music_id"    # I
    .param p2, "delay"    # I

    .prologue
    .line 1076
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-nez v0, :cond_1a

    .line 1077
    new-instance v0, Landroid/media/BackgroundMusicService;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-direct {v0, v1, v2}, Landroid/media/BackgroundMusicService;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    .line 1078
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-eqz v0, :cond_1a

    .line 1079
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    invoke-virtual {v0, p1, p2}, Landroid/media/BackgroundMusicService;->play(II)V

    .line 1080
    const/4 v0, 0x1

    .line 1084
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected porcessUsbAudioDevicePlug(Landroid/content/Intent;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 604
    const/4 v9, 0x0

    .line 605
    .local v9, "outDevice":I
    const/4 v7, 0x0

    .line 606
    .local v7, "inDevice":I
    const-string/jumbo v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 607
    .local v11, "state":I
    const-string v12, "card"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 608
    .local v1, "alsaCard":I
    const-string v12, "device"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 609
    .local v2, "alsaDevice":I
    const-string v12, "hasPlayback"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 610
    .local v6, "hasPlayback":Z
    const-string v12, "hasCapture"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 611
    .local v4, "hasCapture":Z
    const-string v12, "hasMIDI"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 612
    .local v5, "hasMIDI":Z
    const/4 v12, -0x1

    if-ne v1, v12, :cond_8a

    const/4 v12, -0x1

    if-ne v2, v12, :cond_8a

    const-string v10, ""

    .line 615
    .local v10, "params":Ljava/lang/String;
    :goto_41
    invoke-direct/range {p0 .. p0}, Landroid/media/SamsungAudioService;->isSmartDockConnected()Z

    move-result v8

    .line 616
    .local v8, "isSmartdock":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "cradle_enable"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 617
    .local v3, "cradleEnabled":I
    if-eqz v8, :cond_b2

    .line 618
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    if-eq v8, v12, :cond_89

    .line 619
    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    .line 620
    const/4 v12, 0x1

    if-ne v11, v12, :cond_a8

    move-object v12, v10

    :goto_61
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    .line 621
    const/4 v12, 0x1

    if-ne v3, v12, :cond_aa

    .line 622
    sget-object v12, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cradleEnabled change path, state : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/16 v9, 0x4000

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v9, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;)V

    .line 643
    :cond_89
    :goto_89
    return-void

    .line 612
    .end local v3    # "cradleEnabled":I
    .end local v8    # "isSmartdock":Z
    .end local v10    # "params":Ljava/lang/String;
    :cond_8a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "card="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";device="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_41

    .line 620
    .restart local v3    # "cradleEnabled":I
    .restart local v8    # "isSmartdock":Z
    .restart local v10    # "params":Ljava/lang/String;
    :cond_a8
    const/4 v12, 0x0

    goto :goto_61

    .line 627
    :cond_aa
    sget-object v12, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v13, "cradle disabled no any action"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 631
    :cond_b2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    .line 633
    if-eqz v6, :cond_c2

    .line 634
    const/16 v9, 0x4000

    .line 635
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v9, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 638
    :cond_c2
    if-eqz v4, :cond_89

    .line 639
    const v7, -0x7ffff000

    .line 640
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v7, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_89
.end method

.method protected readPersistedSettings()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 503
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 505
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "mono_audio_db"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    .line 507
    sget-boolean v1, Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z

    if-eqz v1, :cond_3b

    .line 508
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "hearing_musiccheck"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mMySoundEnabled:I

    .line 509
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sound_alive_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I

    .line 510
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "k2hd_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mK2HDEnabled:I

    .line 511
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "tube_amp_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I

    .line 514
    :cond_3b
    const-string v1, "call_noise_reduction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    .line 516
    const-string v1, "all_sound_off"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    .line 518
    const-string v1, "call_natural_sound"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    .line 523
    iput v4, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    .line 525
    return-void
.end method

.method protected setAllSoundMute()V
    .registers 3

    .prologue
    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;allsoundmute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1008
    const-string/jumbo v0, "persist.audio.allsoundmute"

    iget v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method protected setRingerMode(I)V
    .registers 9
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 901
    packed-switch p1, :pswitch_data_34

    .line 916
    :goto_6
    return-void

    .line 903
    :pswitch_7
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iput-boolean v3, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    goto :goto_6

    .line 907
    :pswitch_11
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iput-boolean v3, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    .line 909
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x4

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_6

    .line 912
    :pswitch_23
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x3

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_6

    .line 901
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
        :pswitch_11
        :pswitch_23
    .end packed-switch
.end method

.method protected setSilentModeOff(Z)V
    .registers 2
    .param p1, "onOff"    # Z

    .prologue
    .line 946
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    .line 947
    return-void
.end method

.method protected setSystemReady(Z)V
    .registers 3
    .param p1, "bEable"    # Z

    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 472
    const-string/jumbo v0, "system_ready=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 473
    :cond_d
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    .line 474
    return-void
.end method

.method protected startCPUBoost()V
    .registers 1

    .prologue
    .line 734
    return-void
.end method

.method public stopBackgroundMusic()Z
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-eqz v0, :cond_e

    .line 1089
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    invoke-virtual {v0}, Landroid/media/BackgroundMusicService;->stop()V

    .line 1090
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    .line 1091
    const/4 v0, 0x1

    .line 1093
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected stopCPUBoost()V
    .registers 1

    .prologue
    .line 748
    return-void
.end method

.method protected vibrateCall()V
    .registers 5

    .prologue
    .line 936
    :try_start_0
    iget-object v2, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 937
    iget-object v2, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    .line 938
    .local v1, "vibrator":Landroid/os/SystemVibrator;
    const/16 v2, 0xc

    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 943
    .end local v1    # "vibrator":Landroid/os/SystemVibrator;
    :cond_1a
    :goto_1a
    return-void

    .line 940
    :catch_1b
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "Vibrator error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
