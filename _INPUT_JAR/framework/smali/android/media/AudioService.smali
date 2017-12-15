.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$AudioPolicyProxy;,
        Landroid/media/AudioService$AudioServiceInternal;,
        Landroid/media/AudioService$VolumeController;,
        Landroid/media/AudioService$StreamOverride;,
        Landroid/media/AudioService$MyDisplayStatusCallback;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$LoadSoundEffectReply;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;,
        Landroid/media/AudioService$StreamVolumeCommand;,
        Landroid/media/AudioService$AudioOrientationEventListener;,
        Landroid/media/AudioService$ScoDevice;,
        Landroid/media/AudioService$MediaPlayerInfo;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_MODE:Z

.field private static final DEBUG_SESSIONS:Z

.field protected static final DEBUG_VOL:Z

.field private static final EXTRA_DOCK_STATE_HMT:I = 0xb

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static final MAX_STREAM_VOLUME:[I

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY_PERSONA:I = 0x18

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PLATFORM_DEFAULT:I = 0x0

.field private static final PLATFORM_TELEVISION:I = 0x2

.field private static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final PREVENT_VOLUME_ADJUSTMENT_IF_SILENT:Z = false

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEAM_VOLUME_OPS:[I

.field private static final STREAM_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VOLUME_SETS_RINGER_MODE_SILENT:Z

.field private static final mMediaPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final MAX_STREAM_VOLUME2:[I

.field private final MAX_STREAM_VOLUME_DOUBLE:[I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothScoOndump:[I

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mIsCoverSafetyVolume:Z

.field private mIsTogether:Z

.field private mIsVolumeControllerVisible:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLateBootCompleted_WiredDevice:I

.field private final mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

.field private final mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

.field private final mMasterVolumeRamp:[I

.field private mMcc:I

.field private final mMediaFocusControl:Landroid/media/MediaFocusControl;

.field private mMediaLastAudibleIndex:I

.field private mMediaSilentMode:Z

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

.field private mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private final mSamsungAudioService:Landroid/media/SamsungAudioService;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private mScoDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mSpeakerOndump:[I

.field private mStatusbarHasVolumeSlider:Z

.field private mStreamMutedump:[I

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Landroid/media/AudioService$VolumeController;

.field private pIdOfsetVolume:[I

.field private pIdOfsetVolumeIndex:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 135
    const-string v0, "AudioService.MOD"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_MODE:Z

    .line 137
    const-string v0, "AudioService.VOL"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    .line 140
    const-string v0, "AudioService.SESSIONS"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_SESSIONS:Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 301
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 427
    new-array v0, v7, [I

    fill-array-data v0, :array_ba

    sput-object v0, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    .line 443
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v4

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v5

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v6

    const-string v1, "STREAM_MUSIC"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "STREAM_ALARM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STREAM_NOTIFICATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STREAM_BLUETOOTH_SCO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STREAM_SYSTEM_ENFORCED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "STREAM_DTMF"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STREAM_TTS"

    aput-object v2, v0, v1

    const-string v1, "STREAM_FM_RADIO"

    aput-object v1, v0, v7

    const/16 v1, 0xb

    const-string v2, "STREAM_VIDEO_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "STREAM_SEC_COMMUNICATION"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "STREAM_VOICENOTE"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 6719
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SILENT"

    aput-object v1, v0, v4

    const-string v1, "VIBRATE"

    aput-object v1, v0, v5

    const-string v1, "NORMAL"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    .line 301
    nop

    :array_9a
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 427
    :array_ba
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v3, 0xe

    const/4 v6, 0x0

    .line 681
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 211
    new-instance v0, Landroid/media/AudioService$VolumeController;

    invoke-direct {v0}, Landroid/media/AudioService$VolumeController;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    .line 265
    const-string v0, "h2w"

    iput-object v0, p0, Landroid/media/AudioService;->mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

    .line 266
    const-string v0, "h2w-before-boot-completed"

    iput-object v0, p0, Landroid/media/AudioService;->mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

    .line 276
    iput v6, p0, Landroid/media/AudioService;->mMode:I

    .line 278
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 298
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 322
    new-array v0, v3, [I

    fill-array-data v0, :array_350

    iput-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    .line 340
    new-array v0, v3, [I

    fill-array-data v0, :array_370

    iput-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME_DOUBLE:[I

    .line 367
    new-array v0, v3, [I

    fill-array-data v0, :array_390

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 385
    new-array v0, v3, [I

    fill-array-data v0, :array_3b0

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 403
    new-array v0, v3, [I

    fill-array-data v0, :array_3d0

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 462
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 484
    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 503
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 580
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 584
    iput v6, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 589
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 590
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 594
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 598
    iput v6, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 599
    iput v6, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 602
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 605
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 606
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 620
    iput v6, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 623
    iput v6, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 629
    iput-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 631
    iput v6, p0, Landroid/media/AudioService;->mDockState:I

    .line 644
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 646
    iput-boolean v6, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 648
    iput-boolean v6, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    .line 649
    iput v6, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    .line 659
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mLateBootCompleted_WiredDevice:I

    .line 668
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsTogether:Z

    .line 671
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsCoverSafetyVolume:Z

    .line 673
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsVolumeControllerVisible:Z

    .line 2124
    iput v6, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 3493
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5664
    const v0, 0x82ff8c

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 6481
    iput v6, p0, Landroid/media/AudioService;->mMcc:I

    .line 6485
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeDevices:I

    .line 6619
    iput-boolean v6, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    .line 6630
    new-instance v0, Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$MyDisplayStatusCallback;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    .line 7061
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 682
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 683
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 684
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 686
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_332

    .line 688
    iput v4, p0, Landroid/media/AudioService;->mPlatformType:I

    .line 696
    :goto_11a
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 697
    .local v11, "pm":Landroid/os/PowerManager;
    const-string v0, "handleAudioEvent"

    invoke-virtual {v11, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 699
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Vibrator;

    .line 700
    .local v12, "vibrator":Landroid/os/Vibrator;
    if-nez v12, :cond_346

    move v0, v6

    :goto_137
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 716
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v1, "ro.config.vc_call_vol_steps"

    sget-object v3, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v6

    .line 719
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v1, 0xb

    sget-object v3, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    aput v3, v0, v1

    .line 720
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v1, 0xc

    sget-object v3, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    aput v3, v0, v1

    .line 724
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    const-string/jumbo v3, "ro.config.media_vol_steps"

    sget-object v4, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v13, 0x3

    aget v4, v4, v13

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    .line 728
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    .line 731
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 733
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 735
    new-instance v0, Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/media/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 738
    new-instance v0, Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/media/SamsungAudioService;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    .line 740
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->ChangeDefaultVolume()V

    .line 742
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 744
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 750
    .local v7, "cameraSoundForced":Z
    const/4 v7, 0x0

    .line 752
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraSoundForced : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mCameraSoundForced : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 756
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v3, 0x4

    if-eqz v7, :cond_34c

    const/16 v4, 0xb

    :goto_1ed
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 765
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "audio_safe_volume_state"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 775
    const/16 v0, 0x64

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 777
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    .line 782
    invoke-direct {p0, v6}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 783
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 784
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 785
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 787
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    .line 791
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 792
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 794
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->onAudioService()V

    .line 797
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 799
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    const-string v0, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v0, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string v0, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    .line 816
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_289

    .line 817
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 821
    :cond_289
    const-string/jumbo v0, "ro.audio.monitorRotation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    .line 822
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_2d7

    .line 823
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 825
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitoring device rotation, initial="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/AudioService;->mDeviceRotation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v0, Landroid/media/AudioService$AudioOrientationEventListener;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$AudioOrientationEventListener;-><init>(Landroid/media/AudioService;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    .line 828
    iget-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioOrientationEventListener;->enable()V

    .line 831
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    .line 834
    :cond_2d7
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 838
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 840
    .local v9, "knoxModeIntentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "com.samsung.container.OBSERVER"

    invoke-virtual {p1, v0, v9, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 844
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 846
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 848
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 851
    const-class v0, Landroid/media/AudioManagerInternal;

    new-instance v1, Landroid/media/AudioService$AudioServiceInternal;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioServiceInternal;-><init>(Landroid/media/AudioService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 855
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->initCPUBoost()V

    .line 857
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    .line 858
    .local v10, "numStreamTypes":I
    new-array v0, v10, [I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamMutedump:[I

    .line 859
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    .line 860
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/media/AudioService;->mSpeakerOndump:[I

    .line 861
    new-array v0, v10, [I

    iput-object v0, p0, Landroid/media/AudioService;->pIdOfsetVolumeIndex:[I

    .line 862
    new-array v0, v10, [I

    iput-object v0, p0, Landroid/media/AudioService;->pIdOfsetVolume:[I

    .line 865
    invoke-direct {p0}, Landroid/media/AudioService;->setWiredDeviceConnectionStateBeforeBoot()V

    .line 867
    return-void

    .line 689
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "knoxModeIntentFilter":Landroid/content/IntentFilter;
    .end local v10    # "numStreamTypes":I
    .end local v11    # "pm":Landroid/os/PowerManager;
    .end local v12    # "vibrator":Landroid/os/Vibrator;
    :cond_332
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_342

    .line 691
    iput v2, p0, Landroid/media/AudioService;->mPlatformType:I

    goto/16 :goto_11a

    .line 693
    :cond_342
    iput v6, p0, Landroid/media/AudioService;->mPlatformType:I

    goto/16 :goto_11a

    .line 700
    .restart local v11    # "pm":Landroid/os/PowerManager;
    .restart local v12    # "vibrator":Landroid/os/Vibrator;
    :cond_346
    invoke-virtual {v12}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_137

    .restart local v7    # "cameraSoundForced":Z
    :cond_34c
    move v4, v6

    .line 756
    goto/16 :goto_1ed

    .line 322
    nop

    :array_350
    .array-data 4
        0x5
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 340
    :array_370
    .array-data 4
        0x5
        0xf
        0xf
        0x1e
        0xf
        0xf
        0xf
        0xf
        0xf
        0x1e
        0x1e
        0x5
        0x5
        0x1e
    .end array-data

    .line 367
    :array_390
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    .line 385
    :array_3b0
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 403
    :array_3d0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x3
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$AudioHandler;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 130
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    return v0
.end method

.method static synthetic access$10000(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$10002(Landroid/media/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$1002(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/media/AudioService;->mDeviceRotation:I

    return p1
.end method

.method static synthetic access$10100(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$10300(Landroid/media/AudioService;)Landroid/media/AudioService$VolumeController;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$10400(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 130
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10500(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 130
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10600(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 130
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10700(Landroid/media/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$ForceControlStreamClient;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;ILandroid/os/IBinder;I)I
    .registers 5
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolCallback;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2800(Landroid/media/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2902(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget v0, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$3002(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 130
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$4002(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return p1
.end method

.method static synthetic access$4100()[I
    .registers 1

    .prologue
    .line 130
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4602(Landroid/media/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    return p1
.end method

.method static synthetic access$4702(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    return p1
.end method

.method static synthetic access$4800(Landroid/media/AudioService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/media/AudioService;I)I
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)[I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$5100(Landroid/media/AudioService;III)I
    .registers 5
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$5700(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$5800(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$5802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolListenerThread;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$5900()Ljava/util/List;
    .registers 1

    .prologue
    .line 130
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)[[I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$6200(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6300()V
    .registers 0

    .prologue
    .line 130
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    return-void
.end method

.method static synthetic access$6400(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    return v0
.end method

.method static synthetic access$6600(Landroid/media/AudioService;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    return v0
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/media/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method static synthetic access$7800(Landroid/media/AudioService;)Landroid/media/SamsungAudioService;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$8100(Landroid/media/AudioService;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8202(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/media/AudioService;->mLateBootCompleted_WiredDevice:I

    return p1
.end method

.method static synthetic access$8300(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$8400(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8500(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8600(Landroid/media/AudioService;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/AudioService;->onCheckMusicActive()V

    return-void
.end method

.method static synthetic access$8700(Landroid/media/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic access$8800(Landroid/media/AudioService;II)V
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSendBecomingNoisyIntent(II)V

    return-void
.end method

.method static synthetic access$8900(Landroid/media/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onConfigureSafeVolume(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/media/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$9100(Landroid/media/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/media/AudioService;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget v0, p0, Landroid/media/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$9302(Landroid/media/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/media/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$9400(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Landroid/media/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$9700(Landroid/media/AudioService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$9900(Landroid/media/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method private addScoDevice(ILjava/lang/String;)V
    .registers 5
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 5565
    new-instance v0, Landroid/media/AudioService$ScoDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$ScoDevice;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    .line 5566
    .local v0, "sco":Landroid/media/AudioService$ScoDevice;
    iput p1, v0, Landroid/media/AudioService$ScoDevice;->device:I

    .line 5567
    iput-object p2, v0, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    .line 5568
    iget-object v1, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5569
    return-void
.end method

.method private adjustStreamVolume(IIILjava/lang/String;I)V
    .registers 29
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1420
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v4, :cond_7

    .line 1609
    :cond_6
    :goto_6
    return-void

    .line 1423
    :cond_7
    sget-boolean v4, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v4, :cond_3d

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustStreamVolume() stream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v4}, Landroid/media/SamsungAudioService;->getAllSoundMute()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_57

    .line 1428
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.intent.action.SOUND_OFF_TOAST"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v14, "intent":Landroid/content/Intent;
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    .line 1433
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_57
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 1434
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v22, v4, p1

    .line 1440
    .local v22, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v4, v22

    .line 1442
    .local v9, "streamState":Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 1444
    .local v7, "device":I
    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_82

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 1445
    const/4 v7, 0x2

    .line 1448
    :cond_82
    invoke-virtual {v9, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1449
    .local v12, "aliasIndex":I
    const/4 v11, 0x1

    .line 1471
    .local v11, "adjustVolume":Z
    and-int/lit16 v4, v7, 0x380

    if-nez v4, :cond_8f

    and-int/lit8 v4, p3, 0x40

    if-nez v4, :cond_6

    .line 1476
    :cond_8f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v5, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v5, v5, v22

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 1482
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v5

    .line 1483
    const/4 v4, 0x0

    :try_start_a7
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1484
    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_213

    .line 1486
    and-int/lit8 p3, p3, -0x21

    .line 1487
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_21c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_21c

    .line 1489
    or-int/lit8 p3, p3, 0x20

    .line 1494
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_216

    and-int/lit8 v4, v7, 0xc

    if-eqz v4, :cond_216

    .line 1496
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v21, v0

    .line 1500
    .local v21, "step":I
    :goto_d1
    if-eqz v12, :cond_d5

    .line 1501
    move/from16 v12, v21

    .line 1510
    :cond_d5
    :goto_d5
    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_e1

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v4

    move/from16 v0, v22

    if-ne v0, v4, :cond_107

    .line 1512
    :cond_e1
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v20

    .line 1514
    .local v20, "ringerMode":I
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_ec

    .line 1515
    and-int/lit8 p3, p3, -0x11

    .line 1519
    :cond_ec
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v12, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(III)I

    move-result v19

    .line 1520
    .local v19, "result":I
    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_22a

    const/4 v11, 0x1

    .line 1522
    :goto_fb
    move/from16 v0, v19

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_107

    .line 1523
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 1527
    .end local v19    # "result":I
    .end local v20    # "ringerMode":I
    :cond_107
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v18

    .line 1529
    .local v18, "oldIndex":I
    if-eqz v11, :cond_1fc

    if-eqz p2, :cond_1fc

    .line 1532
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_13d

    and-int/lit16 v4, v7, 0x380

    if-eqz v4, :cond_13d

    and-int/lit8 v4, p3, 0x40

    if-nez v4, :cond_13d

    .line 1535
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1536
    :try_start_127
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_13c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_13c

    .line 1537
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 1539
    :cond_13c
    monitor-exit v5
    :try_end_13d
    .catchall {:try_start_127 .. :try_end_13d} :catchall_22d

    .line 1542
    :cond_13d
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_230

    add-int v4, v12, v21

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v4, v7}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v4

    if-nez v4, :cond_230

    .line 1544
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v4}, Landroid/media/SamsungAudioService;->isCoverOpen()Z

    move-result v4

    if-nez v4, :cond_177

    .line 1547
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/AudioService;->mIsCoverSafetyVolume:Z

    .line 1550
    :cond_177
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1578
    :cond_180
    :goto_180
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 1579
    .local v17, "newIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v4, :cond_1fc

    .line 1580
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v5

    .line 1581
    :try_start_195
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v4, :cond_1cd

    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_1cd

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    if-nez v4, :cond_1cd

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_1cd

    .line 1585
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v16

    .line 1586
    .local v16, "maxIndex":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v6
    :try_end_1b5
    .catchall {:try_start_195 .. :try_end_1b5} :catchall_28c

    .line 1587
    :try_start_1b5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v4, :cond_1cc

    .line 1588
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    add-int/lit8 v8, v18, 0x5

    div-int/lit8 v8, v8, 0xa

    add-int/lit8 v10, v17, 0x5

    div-int/lit8 v10, v10, 0xa

    move/from16 v0, v16

    invoke-virtual {v4, v8, v10, v0}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V

    .line 1591
    :cond_1cc
    monitor-exit v6
    :try_end_1cd
    .catchall {:try_start_1b5 .. :try_end_1cd} :catchall_289

    .line 1594
    .end local v16    # "maxIndex":I
    :cond_1cd
    :try_start_1cd
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioService;->mHdmiCecSink:Z

    if-eqz v4, :cond_1fb

    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_1fb

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_1fb

    .line 1597
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v6
    :try_end_1e3
    .catchall {:try_start_1cd .. :try_end_1e3} :catchall_28c

    .line 1598
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_28f

    const/16 v15, 0x19

    .line 1600
    .local v15, "keyCode":I
    :goto_1ea
    :try_start_1ea
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v8, 0x1

    invoke-virtual {v4, v15, v8}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v8, 0x0

    invoke-virtual {v4, v15, v8}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1602
    monitor-exit v6
    :try_end_1fb
    .catchall {:try_start_1ea .. :try_end_1fb} :catchall_293

    .line 1604
    .end local v15    # "keyCode":I
    :cond_1fb
    :try_start_1fb
    monitor-exit v5
    :try_end_1fc
    .catchall {:try_start_1fb .. :try_end_1fc} :catchall_28c

    .line 1607
    .end local v17    # "newIndex":I
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v13

    .line 1608
    .local v13, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v13, v3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_6

    .line 1484
    .end local v13    # "index":I
    .end local v18    # "oldIndex":I
    .end local v21    # "step":I
    :catchall_213
    move-exception v4

    :try_start_214
    monitor-exit v5
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_213

    throw v4

    .line 1498
    :cond_216
    invoke-virtual {v9}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v21

    .restart local v21    # "step":I
    goto/16 :goto_d1

    .line 1505
    .end local v21    # "step":I
    :cond_21c
    const/16 v4, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v21

    .restart local v21    # "step":I
    goto/16 :goto_d5

    .line 1520
    .restart local v19    # "result":I
    .restart local v20    # "ringerMode":I
    :cond_22a
    const/4 v11, 0x0

    goto/16 :goto_fb

    .line 1539
    .end local v19    # "result":I
    .end local v20    # "ringerMode":I
    .restart local v18    # "oldIndex":I
    :catchall_22d
    move-exception v4

    :try_start_22e
    monitor-exit v5
    :try_end_22f
    .catchall {:try_start_22e .. :try_end_22f} :catchall_22d

    throw v4

    .line 1552
    :cond_230
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_24c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v4}, Landroid/media/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_24c

    .line 1553
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1554
    and-int/lit8 p3, p3, -0x2

    goto/16 :goto_180

    .line 1556
    :cond_24c
    mul-int v4, p2, v21

    invoke-virtual {v9, v4, v7}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v4

    if-eqz v4, :cond_180

    .line 1560
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioService;->mIsCoverSafetyVolume:Z

    if-eqz v4, :cond_27c

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_27c

    .line 1561
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_27c

    .line 1562
    const-string v4, "AudioService"

    const-string v5, "adjustStreamVolume() Remove the safeVolumeWarning pop-up on S cover."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1564
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/AudioService;->mIsCoverSafetyVolume:Z

    .line 1568
    :cond_27c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_180

    .line 1591
    .restart local v16    # "maxIndex":I
    .restart local v17    # "newIndex":I
    :catchall_289
    move-exception v4

    :try_start_28a
    monitor-exit v6
    :try_end_28b
    .catchall {:try_start_28a .. :try_end_28b} :catchall_289

    :try_start_28b
    throw v4

    .line 1604
    .end local v16    # "maxIndex":I
    :catchall_28c
    move-exception v4

    monitor-exit v5
    :try_end_28e
    .catchall {:try_start_28b .. :try_end_28e} :catchall_28c

    throw v4

    .line 1598
    :cond_28f
    const/16 v15, 0x18

    goto/16 :goto_1ea

    .line 1602
    .restart local v15    # "keyCode":I
    :catchall_293
    move-exception v4

    :try_start_294
    monitor-exit v6
    :try_end_295
    .catchall {:try_start_294 .. :try_end_295} :catchall_293

    :try_start_295
    throw v4
    :try_end_296
    .catchall {:try_start_295 .. :try_end_296} :catchall_28c
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    .registers 14
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    const/4 v4, 0x2

    .line 1348
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_27

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_27
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9b

    .line 1352
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1356
    .local v1, "streamType":I
    :goto_2e
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v7, v0, v1

    .line 1359
    .local v7, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3a

    if-eq v7, v4, :cond_3a

    .line 1361
    and-int/lit8 p3, p3, -0x5

    .line 1380
    :cond_3a
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_50

    iget-object v0, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1383
    :cond_50
    and-int/lit8 p3, p3, -0x5

    .line 1386
    :cond_52
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_65

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_65

    .line 1389
    and-int/lit8 p3, p3, -0x5

    .line 1391
    :cond_65
    const-string v0, "isRecordActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1393
    .local v6, "isRecordActive":Ljava/lang/String;
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_7f

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_7f

    const-string v0, "TRUE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1396
    and-int/lit8 p3, p3, -0x5

    .line 1400
    :cond_7f
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_a0

    .line 1401
    invoke-virtual {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 1402
    const-string v0, "AudioService"

    const-string v2, "Volume change disabled : cover closed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :goto_9a
    return-void

    .line 1354
    .end local v1    # "streamType":I
    .end local v6    # "isRecordActive":Ljava/lang/String;
    .end local v7    # "resolvedStream":I
    :cond_9b
    invoke-virtual {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_2e

    .restart local v6    # "isRecordActive":Ljava/lang/String;
    .restart local v7    # "resolvedStream":I
    :cond_a0
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1409
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    goto :goto_9a
.end method

.method private broadcastMasterMuteStatus(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .prologue
    .line 1988
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1989
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1990
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1992
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1993
    return-void
.end method

.method private broadcastRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 4068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4069
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4070
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4072
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 4073
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .registers 9
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 3478
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3480
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .param p1, "vibrateType"    # I

    .prologue
    .line 4077
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4078
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4079
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4080
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4081
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4083
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .prologue
    .line 5434
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 5435
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .registers 6

    .prologue
    .line 1002
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1003
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_30

    .line 1004
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_1c

    .line 1005
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 1009
    :cond_1c
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1010
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1003
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1013
    :cond_30
    return-void
.end method

.method private checkAllFixedVolumeDevices()V
    .registers 4

    .prologue
    .line 1017
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1018
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1019
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1018
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1021
    :cond_11
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1025
    return-void
.end method

.method private checkForRingerModeChange(III)I
    .registers 10
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 3749
    const/4 v0, 0x1

    .line 3750
    .local v0, "result":I
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 3752
    .local v1, "ringerMode":I
    packed-switch v1, :pswitch_data_6a

    .line 3841
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    :cond_22
    :goto_22
    invoke-virtual {p0, v1, v5}, Landroid/media/AudioService;->setRingerMode(IZ)V

    .line 3854
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 3856
    return v0

    .line 3754
    :pswitch_28
    const/4 v2, -0x1

    if-ne p2, v2, :cond_22

    .line 3755
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_3e

    .line 3765
    if-gt p3, p1, :cond_35

    mul-int/lit8 v2, p3, 0x2

    if-lt p1, v2, :cond_37

    :cond_35
    if-ge p1, p3, :cond_38

    .line 3767
    :cond_37
    const/4 v1, 0x1

    .line 3782
    :cond_38
    :goto_38
    iget-object v2, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2, v5}, Landroid/media/SamsungAudioService;->setSilentModeOff(Z)V

    goto :goto_22

    .line 3777
    :cond_3e
    if-ne p1, p3, :cond_38

    .line 3779
    const/4 v1, 0x0

    goto :goto_38

    .line 3786
    :pswitch_42
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_4e

    .line 3787
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 3815
    :cond_4e
    if-ne p2, v3, :cond_56

    .line 3816
    const/4 v1, 0x2

    .line 3817
    iget-object v2, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2, v3}, Landroid/media/SamsungAudioService;->setSilentModeOff(Z)V

    .line 3821
    :cond_56
    and-int/lit8 v0, v0, -0x2

    .line 3822
    goto :goto_22

    .line 3824
    :pswitch_59
    if-ne p2, v3, :cond_60

    .line 3828
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_63

    .line 3829
    const/4 v1, 0x1

    .line 3838
    :cond_60
    :goto_60
    and-int/lit8 v0, v0, -0x2

    .line 3839
    goto :goto_22

    .line 3831
    :cond_63
    const/4 v1, 0x2

    .line 3833
    iget-object v2, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2, v3}, Landroid/media/SamsungAudioService;->setSilentModeOff(Z)V

    goto :goto_60

    .line 3752
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_59
        :pswitch_42
        :pswitch_28
    .end packed-switch
.end method

.method private checkSafeMediaVolume(III)Z
    .registers 10
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 6547
    iget-object v3, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v3

    .line 6549
    :try_start_5
    iget-object v4, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-static {}, Landroid/media/SamsungAudioService;->getFactoryMode()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v4}, Landroid/media/SamsungAudioService;->isFactorySim()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 6550
    :cond_15
    monitor-exit v3

    .line 6572
    :goto_16
    return v2

    .line 6552
    :cond_17
    iget-object v4, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_5d

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, p1

    if-ne v4, v5, :cond_5d

    and-int/lit8 v4, p3, 0xc

    if-eqz v4, :cond_5d

    iget v4, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le p2, v4, :cond_5d

    .line 6557
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6558
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_57

    .line 6560
    const v2, 0x3000000a

    const-string v4, "AudioService"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 6563
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_52

    .line 6564
    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 6567
    :cond_52
    iget-object v2, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Landroid/media/SamsungAudioService;->vibrateCall()V

    .line 6570
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_57
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_16

    .line 6573
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5a

    throw v2

    .line 6572
    :cond_5d
    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5a

    goto :goto_16
.end method

.method private checkScoAudioState()V
    .registers 3

    .prologue
    .line 3386
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    .line 3390
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 3392
    :cond_1b
    return-void
.end method

.method private checkZen(I)V
    .registers 8
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 2363
    iget-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2364
    .local v2, "zen":I
    if-eqz p1, :cond_1e

    if-eqz v2, :cond_1e

    .line 2365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2367
    .local v0, "ident":J
    :try_start_12
    iget-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 2369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2372
    .end local v0    # "ident":J
    :cond_1e
    return-void

    .line 2369
    .restart local v0    # "ident":J
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 5903
    const-string v20, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5904
    const-string v20, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5905
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_ca

    .line 5906
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 5907
    .local v18, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 5908
    .local v17, "portGeneration":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v19

    .line 5909
    .local v19, "status":I
    if-nez v19, :cond_ca

    .line 5910
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_37
    :goto_37
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_ca

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioPort;

    .line 5911
    .local v16, "port":Landroid/media/AudioPort;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/AudioDevicePort;

    move/from16 v20, v0

    if-eqz v20, :cond_37

    move-object/from16 v5, v16

    .line 5912
    check-cast v5, Landroid/media/AudioDevicePort;

    .line 5913
    .local v5, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_37

    .line 5915
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    .line 5916
    .local v9, "formats":[I
    array-length v0, v9

    move/from16 v20, v0

    if-lez v20, :cond_aa

    .line 5917
    new-instance v7, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5918
    .local v7, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v9

    .local v3, "arr$":[I
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_70
    if-ge v12, v13, :cond_82

    aget v8, v3, v12

    .line 5920
    .local v8, "format":I
    if-eqz v8, :cond_7f

    .line 5921
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5918
    :cond_7f
    add-int/lit8 v12, v12, 0x1

    goto :goto_70

    .line 5924
    .end local v8    # "format":I
    :cond_82
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 5925
    .local v6, "encodingArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_8b
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_a1

    .line 5926
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aput v20, v6, v10

    .line 5925
    add-int/lit8 v10, v10, 0x1

    goto :goto_8b

    .line 5928
    :cond_a1
    const-string v20, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5931
    .end local v3    # "arr$":[I
    .end local v6    # "encodingArray":[I
    .end local v7    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_aa
    const/4 v15, 0x0

    .line 5932
    .local v15, "maxChannels":I
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    .restart local v3    # "arr$":[I
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_b1
    if-ge v12, v13, :cond_bf

    aget v14, v3, v12

    .line 5933
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    .line 5934
    .local v4, "channelCount":I
    if-le v4, v15, :cond_bc

    .line 5935
    move v15, v4

    .line 5932
    :cond_bc
    add-int/lit8 v12, v12, 0x1

    goto :goto_b1

    .line 5938
    .end local v4    # "channelCount":I
    .end local v14    # "mask":I
    :cond_bf
    const-string v20, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_37

    .line 5944
    .end local v3    # "arr$":[I
    .end local v5    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "maxChannels":I
    .end local v16    # "port":Landroid/media/AudioPort;
    .end local v17    # "portGeneration":[I
    .end local v18    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v19    # "status":I
    :cond_ca
    return-void
.end method

.method private createAudioSystemThread()V
    .registers 2

    .prologue
    .line 924
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 925
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 926
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 927
    return-void
.end method

.method private createStreamStates()V
    .registers 7

    .prologue
    .line 1028
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1029
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 1031
    .local v2, "streams":[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_1e

    .line 1032
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 1031
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1035
    :cond_1e
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 1036
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 1037
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2101
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2102
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    .line 2104
    .local v0, "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2105
    invoke-virtual {v0}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 2106
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2107
    const/4 v2, 0x1

    .line 2110
    .end local v0    # "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private disconnectBluetoothSco(I)V
    .registers 10
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 3447
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3448
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 3449
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_41

    .line 3451
    :cond_10
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2e

    .line 3452
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_30

    .line 3453
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3455
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3466
    :cond_2e
    :goto_2e
    monitor-exit v7

    .line 3467
    return-void

    .line 3458
    :cond_30
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_2e

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3460
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_2e

    .line 3466
    :catchall_3e
    move-exception v0

    monitor-exit v7
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw v0

    .line 3464
    :cond_41
    const/4 v0, 0x1

    :try_start_42
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3e

    goto :goto_2e
.end method

.method private doSetMasterVolume(FI)V
    .registers 12
    .param p1, "volume"    # F
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 2242
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2243
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 2244
    .local v8, "oldVolume":I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2246
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 2247
    .local v7, "newVolume":I
    if-eq v7, v8, :cond_25

    .line 2249
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2253
    :cond_25
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 2255
    .end local v7    # "newVolume":I
    .end local v8    # "oldVolume":I
    :cond_28
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6726
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6728
    const-string v0, "- ringer mode affected streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6729
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6730
    const-string v0, "- ringer mode muted streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6731
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6732
    return-void
.end method

.method private dumpScoClients(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6736
    const-string v3, "\nSco Client list entries: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6737
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6738
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6739
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_36

    .line 6740
    iget-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 6741
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n  pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6739
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 6743
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_36
    monitor-exit v4

    .line 6744
    return-void

    .line 6743
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1040
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1042
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_3d

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1045
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1047
    :cond_3d
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    iget v2, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    const-string v2, "\nMute calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    const/4 v0, 0x0

    :goto_51
    if-ge v0, v1, :cond_7e

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mStreamMutedump:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1055
    :cond_7e
    const-string v2, "\nVolume change calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    const/4 v0, 0x0

    :goto_84
    if-ge v0, v1, :cond_bf

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INDEX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->pIdOfsetVolumeIndex:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->pIdOfsetVolume:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 1059
    :cond_bf
    const-string v2, "\nBT SCO on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    const-string v2, "\nSpeaker on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Speaker on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mSpeakerOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Speaker off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mSpeakerOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    const-string v2, "\nPID which makes system volume to 0 at first boot"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->pIdOfsetVolume:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Volume index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->pIdOfsetVolume:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    return-void
.end method

.method private enforceSafeMediaVolume()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 6522
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 6523
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    .line 6524
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 6526
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_a
    if-eqz v7, :cond_31

    .line 6527
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 6528
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_17

    move v9, v8

    .line 6529
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_a

    .line 6531
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_17
    invoke-virtual {v5, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 6532
    .local v10, "index":I
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_2c

    .line 6533
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 6534
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6542
    :cond_2c
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 6543
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_a

    .line 6544
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_31
    return-void
.end method

.method private enforceSelfOrSystemUI(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 6792
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6794
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 3931
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    if-le p1, v0, :cond_1f

    .line 3932
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3934
    :cond_1f
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .registers 5
    .param p1, "ringerMode"    # I

    .prologue
    .line 2323
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2326
    :cond_1f
    return-void
.end method

.method private ensureValidSteps(I)V
    .registers 5
    .param p1, "steps"    # I

    .prologue
    .line 3937
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_20

    .line 3938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3940
    :cond_20
    return-void
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    .line 3943
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 3944
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3946
    :cond_20
    return-void
.end method

.method private findVolumeDelta(II)I
    .registers 9
    .param p1, "direction"    # I
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1857
    const/4 v0, 0x0

    .line 1858
    .local v0, "delta":I
    if-ne p1, v5, :cond_26

    .line 1859
    const/16 v4, 0x64

    if-ne p2, v4, :cond_a

    .line 1888
    :cond_9
    :goto_9
    return v3

    .line 1863
    :cond_a
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 1866
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_13
    if-le v1, v5, :cond_21

    .line 1867
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_23

    .line 1868
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1    # "i":I
    :cond_21
    :goto_21
    move v3, v0

    .line 1888
    goto :goto_9

    .line 1866
    .restart local v1    # "i":I
    :cond_23
    add-int/lit8 v1, v1, -0x2

    goto :goto_13

    .line 1872
    .end local v1    # "i":I
    :cond_26
    const/4 v4, -0x1

    if-ne p1, v4, :cond_21

    .line 1873
    if-eqz p2, :cond_9

    .line 1876
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 1878
    .local v2, "length":I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1881
    const/4 v1, 0x2

    .restart local v1    # "i":I
    :goto_36
    if-ge v1, v2, :cond_21

    .line 1882
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_46

    .line 1883
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1884
    goto :goto_21

    .line 1881
    :cond_46
    add-int/lit8 v1, v1, 0x2

    goto :goto_36
.end method

.method private getBluetoothHeadset()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 3431
    const/4 v8, 0x0

    .line 3432
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 3433
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_11

    .line 3434
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 3441
    :cond_11
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_20

    const/16 v6, 0xbb8

    :goto_1a
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3443
    return v8

    :cond_20
    move v6, v2

    .line 3441
    goto :goto_1a
.end method

.method private getDeviceForStream(I)I
    .registers 4
    .param p1, "stream"    # I

    .prologue
    .line 4125
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 4126
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 4133
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 4134
    const/4 v0, 0x2

    .line 4145
    :cond_e
    :goto_e
    return v0

    .line 4135
    :cond_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 4136
    const/high16 v0, 0x40000

    goto :goto_e

    .line 4137
    :cond_17
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1f

    .line 4138
    const/high16 v0, 0x80000

    goto :goto_e

    .line 4139
    :cond_1f
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_27

    .line 4140
    const/high16 v0, 0x200000

    goto :goto_e

    .line 4142
    :cond_27
    and-int/lit16 v0, v0, 0x380

    goto :goto_e
.end method

.method protected static getMaxStreamVolume(I)I
    .registers 2
    .param p0, "streamType"    # I

    .prologue
    .line 2191
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 3395
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3396
    const/4 v0, 0x0

    .line 3397
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_32

    move-result v3

    .line 3398
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .local v1, "client":Landroid/media/AudioService$ScoClient;
    :goto_c
    if-ge v2, v3, :cond_23

    .line 3399
    :try_start_e
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_35

    .line 3400
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_16
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1f

    .line 3401
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_32

    move-object v1, v0

    .line 3407
    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :goto_1e
    return-object v1

    .line 3398
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_c

    .line 3403
    :cond_23
    if-eqz p2, :cond_38

    .line 3404
    :try_start_25
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_35

    .line 3405
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_2a
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3407
    :goto_2f
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_1e

    .line 3408
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :catchall_32
    move-exception v4

    :goto_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v4

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_35
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_33

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :cond_38
    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_2f
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2504
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 2507
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 2509
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6313
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 6315
    .local v8, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_17

    .line 6316
    iget v10, v8, Landroid/content/res/Configuration;->orientation:I

    .line 6317
    .local v10, "newOrientation":I
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v10, v0, :cond_17

    .line 6318
    iput v10, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 6319
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 6322
    .end local v10    # "newOrientation":I
    :cond_17
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6330
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 6336
    .local v7, "cameraSoundForced":Z
    const/4 v7, 0x0

    .line 6338
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraSoundForced : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraSoundForced : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6341
    iget-object v12, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_c7

    .line 6342
    :try_start_58
    iget-object v13, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v13
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_c4

    .line 6343
    :try_start_5b
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_a6

    .line 6344
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 6346
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_87

    .line 6347
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v11, v0, v1

    .line 6348
    .local v11, "s":Landroid/media/AudioService$VolumeStreamState;
    if-eqz v7, :cond_b2

    .line 6349
    invoke-virtual {v11}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 6350
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 6358
    :goto_7f
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 6361
    .end local v11    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_87
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_d0

    const/16 v4, 0xb

    :goto_91
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6370
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6377
    :cond_a6
    monitor-exit v13
    :try_end_a7
    .catchall {:try_start_5b .. :try_end_a7} :catchall_c1

    .line 6378
    :try_start_a7
    monitor-exit v12
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_c4

    .line 6379
    :try_start_a8
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b1} :catch_c7

    .line 6383
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "config":Landroid/content/res/Configuration;
    :goto_b1
    return-void

    .line 6353
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "config":Landroid/content/res/Configuration;
    .restart local v11    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_b2
    :try_start_b2
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v11, v0}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 6354
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_7f

    .line 6377
    .end local v11    # "s":Landroid/media/AudioService$VolumeStreamState;
    :catchall_c1
    move-exception v0

    monitor-exit v13
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_c1

    :try_start_c3
    throw v0

    .line 6378
    :catchall_c4
    move-exception v0

    monitor-exit v12
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c4

    :try_start_c6
    throw v0
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c7} :catch_c7

    .line 6380
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "config":Landroid/content/res/Configuration;
    :catch_c7
    move-exception v9

    .line 6381
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b1

    .line 6361
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "config":Landroid/content/res/Configuration;
    :cond_d0
    const/4 v4, 0x0

    goto :goto_91
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .registers 14
    .param p1, "connected"    # Z
    .param p2, "device"    # I
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5592
    iget-object v6, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v6

    .line 5598
    :try_start_5
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 5599
    .local v0, "isConnected":Z
    const-string v3, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5600
    if-nez p1, :cond_53

    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_53

    .line 5601
    const-string v3, "AudioService"

    const-string v5, "handleDeviceConnection no more unavailable device, return false"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5602
    monitor-exit v6

    move v3, v4

    .line 5659
    :goto_52
    return v3

    .line 5604
    :cond_53
    if-eqz v0, :cond_75

    if-eqz p1, :cond_75

    const/16 v3, 0x1000

    if-ne p2, v3, :cond_75

    .line 5605
    const/4 v7, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v7, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5608
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5609
    const/4 v0, 0x0

    .line 5612
    :cond_75
    if-eqz v0, :cond_85

    if-eqz p1, :cond_85

    invoke-direct {p0, p2}, Landroid/media/AudioService;->isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 5613
    invoke-direct {p0, p2, p3}, Landroid/media/AudioService;->addScoDevice(ILjava/lang/String;)V

    .line 5614
    monitor-exit v6

    move v3, v5

    goto :goto_52

    .line 5618
    :cond_85
    if-eqz v0, :cond_ec

    if-nez p1, :cond_ec

    .line 5620
    invoke-direct {p0, p2}, Landroid/media/AudioService;->isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 5621
    invoke-direct {p0, p2, p3}, Landroid/media/AudioService;->removeScoDevice(ILjava/lang/String;)V

    .line 5622
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 5623
    monitor-exit v6

    move v3, v5

    goto :goto_52

    .line 5625
    :cond_a5
    iget-object v3, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_cf

    .line 5626
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoDevice;

    iget v3, v3, Landroid/media/AudioService$ScoDevice;->device:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v3, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoDevice;

    iget-object v3, v3, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5627
    monitor-exit v6

    move v3, v5

    goto :goto_52

    .line 5632
    :cond_cf
    const/4 v4, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v4, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5635
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5636
    monitor-exit v6

    move v3, v5

    goto/16 :goto_52

    .line 5637
    :cond_ec
    if-nez v0, :cond_13b

    if-eqz p1, :cond_13b

    .line 5639
    const/4 v3, 0x4

    if-eq p2, v3, :cond_f7

    const/16 v3, 0x8

    if-ne p2, v3, :cond_120

    .line 5640
    :cond_f7
    const-string v3, "AudioService"

    const-string/jumbo v4, "onReceive set Screen power on for Contextual Awareness."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5641
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 5642
    .local v1, "pm":Landroid/os/PowerManager;
    const v3, 0x1000001a

    const-string v4, "Earphone Inserted"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 5643
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5644
    const-wide/16 v8, 0x1388

    invoke-virtual {v2, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5647
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_120
    const/4 v3, 0x1

    invoke-static {p2, v3, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5650
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5652
    invoke-direct {p0, p2}, Landroid/media/AudioService;->isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 5653
    invoke-direct {p0, p2, p3}, Landroid/media/AudioService;->addScoDevice(ILjava/lang/String;)V

    .line 5656
    :cond_137
    monitor-exit v6

    move v3, v5

    goto/16 :goto_52

    .line 5658
    :cond_13b
    monitor-exit v6

    move v3, v4

    .line 5659
    goto/16 :goto_52

    .line 5658
    .end local v0    # "isConnected":Z
    :catchall_13f
    move-exception v3

    monitor-exit v6
    :try_end_141
    .catchall {:try_start_5 .. :try_end_141} :catchall_13f

    throw v3
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2115
    iget-object v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2116
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2118
    const/4 v1, 0x1

    .line 2121
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .prologue
    .line 5439
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isAfMusicActiveRecently(I)Z
    .registers 4
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 3965
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isPlatformTelevision()Z
    .registers 3

    .prologue
    .line 207
    iget v0, p0, Landroid/media/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isPlatformVoice()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 203
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isScoDevice(I)Z
    .registers 3
    .param p1, "device"    # I

    .prologue
    .line 5557
    packed-switch p1, :pswitch_data_8

    .line 5561
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 5559
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 5557
    nop

    :pswitch_data_8
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method

.method private isStreamMutedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3865
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private loadTouchSoundAssetDefaults()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2767
    sget-object v1, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2768
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1e

    .line 2769
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 2770
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2768
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2772
    :cond_1e
    return-void
.end method

.method private loadTouchSoundAssets()V
    .registers 15

    .prologue
    .line 2775
    const/4 v9, 0x0

    .line 2778
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 2847
    :cond_9
    :goto_9
    return-void

    .line 2782
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssetDefaults()V

    .line 2785
    :try_start_d
    iget-object v11, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 2787
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2788
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2789
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2791
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 2793
    :cond_30
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2794
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2795
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4a

    .line 2806
    :goto_39
    if-eqz v7, :cond_44

    .line 2807
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2808
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_41} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_41} :catch_cc
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_41} :catch_db
    .catchall {:try_start_d .. :try_end_41} :catchall_ea

    move-result-object v1

    .line 2809
    if-nez v1, :cond_65

    .line 2843
    .end local v1    # "element":Ljava/lang/String;
    :cond_44
    if-eqz v9, :cond_9

    .line 2844
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_9

    .line 2798
    .restart local v1    # "element":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    const-string v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 2799
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2800
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 2801
    const/4 v7, 0x1

    .line 2802
    goto :goto_39

    .line 2812
    .end local v8    # "name":Ljava/lang/String;
    :cond_65
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 2813
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2814
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_7a} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_7a} :catch_cc
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_7a} :catch_db
    .catchall {:try_start_4a .. :try_end_7a} :catchall_ea

    move-result-object v3

    .line 2818
    .local v3, "file":Ljava/lang/String;
    :try_start_7b
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2819
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_85} :catch_b1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_85} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_85} :catch_cc
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_85} :catch_db
    .catchall {:try_start_7b .. :try_end_85} :catchall_ea

    move-result v4

    .line 2825
    .local v4, "fx":I
    :try_start_86
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2826
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_9a

    .line 2827
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 2828
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2830
    :cond_9a
    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_a1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_86 .. :try_end_a1} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_a1} :catch_cc
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a1} :catch_db
    .catchall {:try_start_86 .. :try_end_a1} :catchall_ea

    goto :goto_39

    .line 2836
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_a2
    move-exception v0

    .line 2837
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_a3
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_ea

    .line 2843
    if-eqz v9, :cond_9

    .line 2844
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 2820
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_b1
    move-exception v0

    .line 2821
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b2
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b2 .. :try_end_ca} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b2 .. :try_end_ca} :catch_cc
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_ca} :catch_db
    .catchall {:try_start_b2 .. :try_end_ca} :catchall_ea

    goto/16 :goto_39

    .line 2838
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_cc
    move-exception v0

    .line 2839
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_cd
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_ea

    .line 2843
    if-eqz v9, :cond_9

    .line 2844
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 2840
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_db
    move-exception v0

    .line 2841
    .local v0, "e":Ljava/io/IOException;
    :try_start_dc
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_ea

    .line 2843
    if-eqz v9, :cond_9

    .line 2844
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 2843
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_ea
    move-exception v11

    if-eqz v9, :cond_f0

    .line 2844
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f0
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x80

    const/4 v1, 0x0

    .line 5340
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 5341
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5343
    invoke-virtual {p0, v7}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5344
    invoke-static {v3, v7, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5348
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5349
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5351
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 5406
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5408
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5410
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5411
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5413
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 5385
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5386
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 5387
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_32

    .line 5388
    invoke-static {v3, v2, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5391
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5392
    iget-object v7, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 5394
    :try_start_19
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_30

    .line 5395
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5396
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5399
    :cond_30
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_35

    .line 5400
    return-void

    .line 5387
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 5399
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v7
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 5417
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5420
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5422
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x7ffe0000

    .line 5426
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5429
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5430
    return-void
.end method

.method private onBroadcastScoConnectionState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 3483
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_1c

    .line 3484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3485
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3486
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3488
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3489
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 3491
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method private onCheckMusicActive()V
    .registers 12

    .prologue
    const v10, 0xea60

    .line 3650
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3651
    :try_start_6
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    .line 3652
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 3654
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    if-eqz v0, :cond_4e

    .line 3655
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3662
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 3663
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_4e

    .line 3666
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3667
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_4e

    .line 3668
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 3669
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3677
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_4e
    monitor-exit v9

    .line 3678
    return-void

    .line 3677
    :catchall_50
    move-exception v0

    monitor-exit v9
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_50

    throw v0
.end method

.method private onConfigureSafeVolume(Z)V
    .registers 12
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x2

    .line 3685
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3686
    :try_start_4
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3687
    .local v7, "mcc":I
    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    if-ne v0, v7, :cond_1a

    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    if-nez v0, :cond_41

    if-eqz p1, :cond_41

    .line 3697
    :cond_1a
    const/16 v0, 0x64

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 3698
    const/4 v8, 0x1

    .line 3703
    .local v8, "safeMediaVolumeEnabled":Z
    if-eqz v8, :cond_43

    .line 3704
    const/4 v3, 0x3

    .line 3708
    .local v3, "persistedState":I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_34

    .line 3719
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3720
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 3727
    :cond_34
    :goto_34
    iput v7, p0, Landroid/media/AudioService;->mMcc:I

    .line 3728
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3736
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :cond_41
    monitor-exit v9

    .line 3737
    return-void

    .line 3724
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_43
    const/4 v3, 0x1

    .line 3725
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_34

    .line 3736
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :catchall_4c
    move-exception v0

    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method private onSendBecomingNoisyIntent(I)V
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 5361
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5362
    .local v1, "noisySecIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5364
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5365
    .local v0, "noisyIntent":Landroid/content/Intent;
    and-int/lit16 v2, p1, 0x380

    if-eqz v2, :cond_1b

    .line 5366
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5367
    :cond_1b
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5368
    return-void
.end method

.method private onSendBecomingNoisyIntent(II)V
    .registers 7
    .param p1, "device"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 5373
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5374
    .local v1, "noisySecIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5376
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5377
    .local v0, "noisyIntent":Landroid/content/Intent;
    and-int/lit16 v2, p1, 0x380

    if-eqz v2, :cond_22

    .line 5378
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5379
    :cond_22
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5380
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 16
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 5444
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2b

    .line 5445
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    :cond_2b
    if-nez p1, :cond_2e

    .line 5514
    :goto_2d
    return-void

    .line 5450
    :cond_2e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 5451
    .local v7, "address":Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 5452
    const-string v7, ""

    .line 5455
    :cond_3a
    iget-object v11, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v11

    .line 5457
    :try_start_3d
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5459
    .local v10, "preVolIndex":I
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 5463
    .local v8, "isConnected":Z
    :goto_6d
    if-eqz v8, :cond_bf

    if-eq p2, v4, :cond_bf

    .line 5464
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 5465
    if-nez p2, :cond_7c

    .line 5469
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 5475
    :cond_7c
    :goto_7c
    iget-object v12, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v12
    :try_end_7f
    .catchall {:try_start_3d .. :try_end_7f} :catchall_b3

    .line 5476
    :try_start_7f
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_96

    .line 5477
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5478
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5481
    :cond_96
    monitor-exit v12
    :try_end_97
    .catchall {:try_start_7f .. :try_end_97} :catchall_bc

    .line 5506
    :cond_97
    :goto_97
    :try_start_97
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->checkAndSendEarCareInfo()V

    .line 5509
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    const/16 v2, 0x800

    invoke-direct {p0, v0, v10, v1, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 5513
    monitor-exit v11

    goto/16 :goto_2d

    .end local v8    # "isConnected":Z
    .end local v10    # "preVolIndex":I
    :catchall_b3
    move-exception v0

    monitor-exit v11
    :try_end_b5
    .catchall {:try_start_97 .. :try_end_b5} :catchall_b3

    throw v0

    .restart local v10    # "preVolIndex":I
    :cond_b6
    move v8, v1

    .line 5459
    goto :goto_6d

    .line 5473
    .restart local v8    # "isConnected":Z
    :cond_b8
    :try_start_b8
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_b3

    goto :goto_7c

    .line 5481
    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit v12
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    :try_start_be
    throw v0

    .line 5482
    :cond_bf
    if-nez v8, :cond_97

    if-ne p2, v4, :cond_97

    .line 5483
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 5485
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5486
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 5495
    :cond_ce
    :goto_ce
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 5496
    iget-object v12, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v12
    :try_end_d4
    .catchall {:try_start_be .. :try_end_d4} :catchall_b3

    .line 5497
    :try_start_d4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 5498
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f2

    .line 5499
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5500
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5503
    :cond_f2
    monitor-exit v12

    goto :goto_97

    .end local v9    # "name":Ljava/lang/String;
    :catchall_f4
    move-exception v0

    monitor-exit v12
    :try_end_f6
    .catchall {:try_start_d4 .. :try_end_f6} :catchall_f4

    :try_start_f6
    throw v0

    .line 5490
    :cond_f7
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 5491
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5492
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_f6 .. :try_end_105} :catchall_b3

    goto :goto_ce
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v5, 0x2

    .line 5518
    sget-boolean v2, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_28

    .line 5519
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5521
    :cond_28
    if-nez p1, :cond_2b

    .line 5540
    :goto_2a
    return-void

    .line 5524
    :cond_2b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5525
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 5526
    const-string v0, ""

    .line 5529
    :cond_37
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 5530
    :try_start_3a
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v1, 0x1

    .line 5534
    .local v1, "isConnected":Z
    :goto_5d
    if-eqz v1, :cond_6b

    if-eq p2, v5, :cond_6b

    .line 5535
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 5539
    :cond_64
    :goto_64
    monitor-exit v3

    goto :goto_2a

    .end local v1    # "isConnected":Z
    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_3a .. :try_end_68} :catchall_66

    throw v2

    .line 5530
    :cond_69
    const/4 v1, 0x0

    goto :goto_5d

    .line 5536
    .restart local v1    # "isConnected":Z
    :cond_6b
    if-nez v1, :cond_64

    if-ne p2, v5, :cond_64

    .line 5537
    :try_start_6f
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_66

    goto :goto_64
.end method

.method private onSetStreamVolume(IIII)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1654
    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    invoke-direct {p0, v3, p2, p4, v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 1655
    and-int/lit16 v3, p3, 0x2000

    if-nez v3, :cond_33

    .line 1657
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_1c

    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v4

    if-ne v3, v4, :cond_33

    .line 1660
    :cond_1c
    if-nez p2, :cond_36

    .line 1661
    iget-boolean v3, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v3, :cond_34

    move v0, v1

    .line 1665
    .local v0, "newRingerMode":I
    :goto_23
    if-ne v0, v1, :cond_30

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_30

    const/16 v1, 0x1000

    if-ne p3, v1, :cond_30

    .line 1668
    const/4 v0, 0x0

    .line 1674
    :cond_30
    :goto_30
    invoke-virtual {p0, v0, v5}, Landroid/media/AudioService;->setRingerMode(IZ)V

    .line 1677
    .end local v0    # "newRingerMode":I
    :cond_33
    return-void

    :cond_34
    move v0, v2

    .line 1661
    goto :goto_23

    .line 1672
    :cond_36
    const/4 v0, 0x2

    .restart local v0    # "newRingerMode":I
    goto :goto_30
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .registers 16
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5809
    iget-object v11, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v11

    .line 5811
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5812
    .local v10, "preVolIndex":I
    const-string v9, ""

    .line 5814
    .local v9, "params":Ljava/lang/String;
    if-nez p2, :cond_24

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/16 v0, 0x8

    if-eq p1, v0, :cond_20

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_24

    .line 5817
    :cond_20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5821
    :cond_24
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_2d

    const v0, -0x7ffffc00

    if-ne p1, v0, :cond_2e

    .line 5823
    :cond_2d
    move-object v9, p3

    .line 5828
    :cond_2e
    if-eqz p2, :cond_63

    const/4 v0, 0x4

    if-eq p1, v0, :cond_37

    const/16 v0, 0x8

    if-ne p1, v0, :cond_63

    .line 5830
    :cond_37
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-le v0, v1, :cond_63

    .line 5831
    const/4 v0, 0x3

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5832
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 5839
    :cond_63
    and-int/lit16 v0, p1, -0x6001

    if-eqz v0, :cond_72

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_f5

    const v0, 0x7fffe7ff

    and-int/2addr v0, p1

    if-nez v0, :cond_f5

    :cond_72
    const/4 v8, 0x1

    .line 5843
    .local v8, "isUsb":Z
    :goto_73
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_f8

    const/4 v7, 0x1

    .line 5849
    .local v7, "isHdmi":Z
    :goto_78
    const/4 v0, 0x1

    if-ne p2, v0, :cond_fb

    const/4 v0, 0x1

    :goto_7c
    if-nez v8, :cond_80

    if-eqz v7, :cond_81

    :cond_80
    move-object v9, p3

    .end local v9    # "params":Ljava/lang/String;
    :cond_81
    invoke-direct {p0, v0, p1, v9}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 5851
    if-eqz p2, :cond_103

    .line 5852
    const/4 v0, 0x4

    if-eq p1, v0, :cond_91

    const/16 v0, 0x8

    if-eq p1, v0, :cond_91

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_9a

    .line 5856
    :cond_91
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->increaseEARCount()V

    .line 5858
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5860
    :cond_9a
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_ac

    .line 5861
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5870
    :cond_ac
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_d5

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_d5

    .line 5871
    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 5872
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 5873
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_d5

    .line 5874
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_100

    .line 5875
    :try_start_c6
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_d4

    .line 5876
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 5877
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 5879
    :cond_d4
    monitor-exit v1
    :try_end_d5
    .catchall {:try_start_c6 .. :try_end_d5} :catchall_fd

    .line 5892
    :cond_d5
    :goto_d5
    const/4 v0, 0x3

    :try_start_d6
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    const/16 v2, 0x800

    invoke-direct {p0, v0, v10, v1, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 5896
    if-nez v8, :cond_f3

    const v0, -0x7ffffff0

    if-eq p1, v0, :cond_f3

    .line 5897
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 5899
    :cond_f3
    monitor-exit v11
    :try_end_f4
    .catchall {:try_start_d6 .. :try_end_f4} :catchall_100

    .line 5900
    return-void

    .line 5839
    .end local v7    # "isHdmi":Z
    .end local v8    # "isUsb":Z
    .restart local v9    # "params":Ljava/lang/String;
    :cond_f5
    const/4 v8, 0x0

    goto/16 :goto_73

    .line 5843
    .restart local v8    # "isUsb":Z
    :cond_f8
    const/4 v7, 0x0

    goto/16 :goto_78

    .line 5849
    .restart local v7    # "isHdmi":Z
    :cond_fb
    const/4 v0, 0x0

    goto :goto_7c

    .line 5879
    .end local v9    # "params":Ljava/lang/String;
    :catchall_fd
    move-exception v0

    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    :try_start_ff
    throw v0

    .line 5899
    .end local v7    # "isHdmi":Z
    .end local v8    # "isUsb":Z
    .end local v10    # "preVolIndex":I
    :catchall_100
    move-exception v0

    monitor-exit v11
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_100

    throw v0

    .line 5883
    .restart local v7    # "isHdmi":Z
    .restart local v8    # "isUsb":Z
    .restart local v10    # "preVolIndex":I
    :cond_103
    :try_start_103
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_d5

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_d5

    .line 5884
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_d5

    .line 5885
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_114
    .catchall {:try_start_103 .. :try_end_114} :catchall_100

    .line 5886
    const/4 v0, 0x0

    :try_start_115
    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 5887
    monitor-exit v1

    goto :goto_d5

    :catchall_119
    move-exception v0

    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_115 .. :try_end_11b} :catchall_119

    :try_start_11b
    throw v0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_100
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 17
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 4092
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4095
    .local v8, "ident":J
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4096
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4097
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4098
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .registers 4

    .prologue
    .line 6785
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 6786
    .local v0, "status":I
    if-eqz v0, :cond_22

    .line 6787
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6789
    :cond_22
    return-void
.end method

.method private readAudioSettings(Z)V
    .registers 11
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2957
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 2959
    iget-object v5, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v5}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    .line 2962
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2963
    .local v1, "numStreamTypes":I
    const/4 v4, 0x0

    .local v4, "streamType":I
    :goto_f
    if-ge v4, v1, :cond_69

    .line 2964
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 2966
    .local v3, "streamState":Landroid/media/AudioService$VolumeStreamState;
    if-eqz p1, :cond_20

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v4

    if-ne v5, v8, :cond_20

    .line 2963
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2970
    :cond_20
    monitor-enter v3

    .line 2971
    :try_start_21
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 2974
    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-direct {p0, v4}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    :cond_36
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_64

    .line 2976
    :cond_3a
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2400(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2977
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    if-ge v0, v2, :cond_64

    .line 2978
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2400(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x1

    # setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2502(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 2979
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2400(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 2977
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 2982
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_64
    monitor-exit v3

    goto :goto_1d

    :catchall_66
    move-exception v5

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_21 .. :try_end_68} :catchall_66

    throw v5

    .line 2987
    .end local v3    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_69
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v7}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2989
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 2990
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 2992
    iget-object v6, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 2998
    :try_start_79
    iget-object v5, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_84

    .line 2999
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 3001
    :cond_84
    monitor-exit v6

    .line 3002
    return-void

    .line 3001
    :catchall_86
    move-exception v5

    monitor-exit v6
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_86

    throw v5
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .registers 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1134
    const-string v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_26

    :goto_c
    iput-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 1137
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_28

    .line 1138
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 1143
    :goto_18
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_2f

    move v4, v1

    :goto_21
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1151
    return-void

    :cond_26
    move v0, v6

    .line 1134
    goto :goto_c

    .line 1140
    :cond_28
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_18

    :cond_2f
    move v4, v6

    .line 1143
    goto :goto_21
.end method

.method private readPersistedSettings()V
    .registers 14

    .prologue
    const/4 v12, -0x2

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1154
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1156
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1159
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    .line 1162
    .local v3, "ringerMode":I
    invoke-static {v3}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v7

    if-nez v7, :cond_15

    .line 1163
    const/4 v3, 0x2

    .line 1165
    :cond_15
    if-ne v3, v5, :cond_1c

    iget-boolean v7, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_1c

    .line 1166
    const/4 v3, 0x0

    .line 1168
    :cond_1c
    if-eq v3, v4, :cond_24

    .line 1169
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1171
    :cond_24
    iget-boolean v7, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-nez v7, :cond_2e

    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1172
    :cond_2e
    const/4 v3, 0x2

    .line 1174
    :cond_2f
    iget-object v9, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1175
    :try_start_32
    iput v3, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1180
    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v7, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v7, :cond_a7

    move v7, v8

    :goto_3b
    invoke-static {v10, v11, v7}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1184
    iget v10, p0, Landroid/media/AudioService;->mVibrateSetting:I

    const/4 v11, 0x0

    iget-boolean v7, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v7, :cond_a9

    move v7, v8

    :goto_49
    invoke-static {v10, v11, v7}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1189
    iget-object v7, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v7}, Landroid/media/SamsungAudioService;->readPersistedSettings()V

    .line 1191
    invoke-virtual {p0}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    .line 1192
    invoke-direct {p0, v0}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1193
    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_ab

    .line 1195
    const-string/jumbo v7, "mute_streams_affected"

    const/16 v9, 0xe

    invoke-static {v0, v7, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 1204
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v7

    if-nez v7, :cond_71

    .line 1205
    iget-object v7, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    const/4 v9, 0x5

    aput v9, v7, v8

    .line 1213
    :cond_71
    const-string/jumbo v7, "volume_master_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_ae

    move v1, v5

    .line 1215
    .local v1, "masterMute":Z
    :goto_7b
    iget-boolean v7, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v7, :cond_85

    .line 1216
    const/4 v1, 0x0

    .line 1217
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1219
    :cond_85
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1220
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1222
    const-string/jumbo v7, "microphone_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_b0

    move v2, v5

    .line 1224
    .local v2, "microphoneMute":Z
    :goto_95
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1229
    invoke-direct {p0, v3}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 1232
    invoke-direct {p0, v6}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1233
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1236
    iget-object v5, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v5, v0}, Landroid/media/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1237
    return-void

    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_a7
    move v7, v6

    .line 1180
    goto :goto_3b

    :cond_a9
    move v7, v6

    .line 1184
    goto :goto_49

    .line 1193
    :catchall_ab
    move-exception v5

    :try_start_ac
    monitor-exit v9
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v5

    :cond_ae
    move v1, v6

    .line 1213
    goto :goto_7b

    .restart local v1    # "masterMute":Z
    :cond_b0
    move v2, v6

    .line 1222
    goto :goto_95
.end method

.method private removeScoDevice(ILjava/lang/String;)V
    .registers 6
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 5571
    iget-object v2, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5572
    .local v0, "iter":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ScoDevice;

    .line 5574
    .local v1, "sco":Landroid/media/AudioService$ScoDevice;
    iget v2, v1, Landroid/media/AudioService$ScoDevice;->device:I

    if-ne v2, p1, :cond_6

    iget-object v2, v1, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5576
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 5580
    .end local v1    # "sco":Landroid/media/AudioService$ScoDevice;
    :cond_21
    return-void
.end method

.method private rescaleIndex(III)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .registers 4

    .prologue
    .line 3470
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3471
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 3472
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 3473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 3474
    monitor-exit v1

    .line 3475
    return-void

    .line 3474
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private restoreMasterVolume()V
    .registers 6

    .prologue
    .line 2444
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_a

    .line 2445
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2455
    :cond_9
    :goto_9
    return-void

    .line 2448
    :cond_a
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_9

    .line 2449
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2451
    .local v0, "volume":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_9

    .line 2452
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    goto :goto_9
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 6773
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 6779
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 6774
    :pswitch_9
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    goto :goto_8

    .line 6775
    :pswitch_c
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    goto :goto_8

    .line 6776
    :pswitch_f
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    goto :goto_8

    .line 6777
    :pswitch_12
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    goto :goto_8

    .line 6773
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .registers 5

    .prologue
    .line 3681
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x16

    iget v2, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3682
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .registers 20
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5740
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v2, :cond_7

    .line 5805
    :cond_6
    :goto_6
    return-void

    .line 5742
    :cond_7
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 5744
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5745
    const-string/jumbo v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5746
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5748
    const/4 v9, 0x0

    .line 5750
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_96

    .line 5751
    const/4 v9, 0x1

    .line 5752
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5753
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5771
    :cond_34
    :goto_34
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v15

    .line 5772
    if-eqz v9, :cond_60

    .line 5773
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v14, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5774
    .local v14, "newConn":I
    if-eqz p2, :cond_dd

    .line 5775
    or-int/2addr v14, v9

    .line 5779
    :goto_44
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v14, v2, :cond_60

    .line 5780
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v14, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5781
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5785
    .end local v14    # "newConn":I
    :cond_60
    monitor-exit v15
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_e2

    .line 5787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5789
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_67
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_e5

    .line 5791
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5794
    const/4 v2, 0x4

    move/from16 v0, p1

    if-eq v0, v2, :cond_78

    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 5795
    :cond_78
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5796
    .local v13, "intentForCA":Landroid/content/Intent;
    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 5797
    const/16 v2, 0x20

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5798
    const-string v2, "AudioService"

    const-string/jumbo v3, "send broadcast HEADSET_PLUG to CA "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5799
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 5754
    .end local v10    # "ident":J
    .end local v13    # "intentForCA":Landroid/content/Intent;
    :cond_96
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_a2

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_b0

    .line 5757
    :cond_a2
    const/4 v9, 0x2

    .line 5758
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5759
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_34

    .line 5760
    :cond_b0
    const/16 v2, 0x800

    move/from16 v0, p1

    if-ne v0, v2, :cond_be

    .line 5761
    const/4 v9, 0x4

    .line 5762
    const-string v2, "android.media.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_34

    .line 5763
    :cond_be
    const/16 v2, 0x1000

    move/from16 v0, p1

    if-ne v0, v2, :cond_cc

    .line 5764
    const/4 v9, 0x4

    .line 5765
    const-string v2, "android.media.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_34

    .line 5766
    :cond_cc
    const/16 v2, 0x400

    move/from16 v0, p1

    if-ne v0, v2, :cond_34

    .line 5767
    const/16 v9, 0x8

    .line 5768
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, Landroid/media/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto/16 :goto_34

    .line 5777
    .restart local v14    # "newConn":I
    :cond_dd
    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v14, v2

    goto/16 :goto_44

    .line 5785
    .end local v14    # "newConn":I
    :catchall_e2
    move-exception v2

    :try_start_e3
    monitor-exit v15
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v2

    .line 5791
    .restart local v10    # "ident":J
    :catchall_e5
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .registers 4
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1983
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 1984
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1985
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "oldVolume"    # I
    .param p3, "newVolume"    # I

    .prologue
    .line 1973
    iget-object v1, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, p1}, Landroid/media/AudioService$VolumeController;->postMasterVolumeChanged(I)V

    .line 1975
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1976
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1977
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1978
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1979
    return-void
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
    .line 4103
    if-nez p2, :cond_e

    .line 4104
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4109
    :cond_5
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4110
    :goto_d
    return-void

    .line 4105
    :cond_e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_d
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1917
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 1919
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1921
    return-void

    .line 1919
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .registers 12
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    const v6, 0x8000

    const/4 v5, 0x2

    .line 1925
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v2

    if-nez v2, :cond_d

    if-ne p1, v5, :cond_d

    .line 1926
    const/4 p1, 0x5

    .line 1929
    :cond_d
    const/16 v2, 0xd

    if-ne p1, v2, :cond_12

    .line 1930
    const/4 p1, 0x3

    .line 1932
    :cond_12
    if-ne v5, p1, :cond_3a

    if-nez p4, :cond_3a

    if-lez p3, :cond_3a

    iget-object v2, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-static {}, Landroid/media/SamsungAudioService;->getFactoryMode()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1934
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enforce to FLAG_PLAY_SOUND volume index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    or-int/lit8 p4, p4, 0x4

    .line 1938
    :cond_3a
    const-string/jumbo v2, "persist.sys.setupwizard"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1939
    .local v1, "setupwizard":Ljava/lang/String;
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v2

    if-eqz v2, :cond_72

    if-eqz p1, :cond_72

    if-eq v5, p1, :cond_72

    const/4 v2, 0x6

    if-eq v2, p1, :cond_72

    iget-object v2, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_72

    iget-object v2, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_72

    if-eqz v1, :cond_72

    const-string v2, "FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Landroid/media/SamsungAudioService;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_72

    and-int v2, p4, v6

    if-nez v2, :cond_72

    .line 1942
    and-int/lit8 p4, p4, -0x2

    .line 1944
    :cond_72
    iget-boolean v2, p0, Landroid/media/AudioService;->mStatusbarHasVolumeSlider:Z

    if-eqz v2, :cond_88

    iget-object v2, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Landroid/media/SamsungAudioService;->isStatusbarExpanded()Z

    move-result v2

    if-eqz v2, :cond_88

    and-int v2, p4, v6

    if-nez v2, :cond_88

    iget-boolean v2, p0, Landroid/media/AudioService;->mIsVolumeControllerVisible:Z

    if-nez v2, :cond_88

    .line 1945
    and-int/lit8 p4, p4, -0x2

    .line 1950
    :cond_88
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_9d

    const/4 v2, 0x3

    if-ne p1, v2, :cond_9d

    .line 1951
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v3

    .line 1952
    :try_start_92
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v2, :cond_9c

    and-int/lit16 v2, p4, 0x100

    if-nez v2, :cond_9c

    .line 1954
    and-int/lit8 p4, p4, -0x2

    .line 1956
    :cond_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_c8

    .line 1958
    :cond_9d
    iget-object v2, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v2, p1, p4}, Landroid/media/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 1960
    and-int/lit8 v2, p4, 0x20

    if-nez v2, :cond_c7

    .line 1961
    add-int/lit8 v2, p2, 0x5

    div-int/lit8 p2, v2, 0xa

    .line 1962
    add-int/lit8 v2, p3, 0x5

    div-int/lit8 p3, v2, 0xa

    .line 1963
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1965
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1966
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1967
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1969
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_c7
    return-void

    .line 1956
    :catchall_c8
    move-exception v2

    :try_start_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v2
.end method

.method private setModeInt(ILandroid/os/IBinder;I)I
    .registers 19
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 2627
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_31

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setModeInt(mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    :cond_31
    const/4 v8, 0x0

    .line 2629
    .local v8, "newModeOwnerPid":I
    if-nez p2, :cond_3e

    .line 2630
    const-string v12, "AudioService"

    const-string/jumbo v13, "setModeInt() called with null binder"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2737
    .end local v8    # "newModeOwnerPid":I
    .local v9, "newModeOwnerPid":I
    :goto_3d
    return v9

    .line 2634
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_3e
    const/4 v5, 0x0

    .line 2635
    .local v5, "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2636
    .local v7, "iter":Ljava/util/Iterator;
    :cond_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_65

    .line 2637
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2638
    .local v4, "h":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_45

    .line 2639
    move-object v5, v4

    .line 2641
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 2643
    :try_start_5d
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_65
    .catch Ljava/util/NoSuchElementException; {:try_start_5d .. :try_end_65} :catch_132

    .line 2653
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_65
    :goto_65
    const/4 v10, 0x0

    .line 2655
    .local v10, "status":I
    :cond_66
    if-nez p1, :cond_13c

    .line 2657
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ad

    .line 2658
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v5, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2659
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2660
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 2661
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_ad

    .line 2662
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " using mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " instead due to death hdlr at pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Landroid/media/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v5}, Landroid/media/AudioService$SetModeDeathHandler;->access$1800(Landroid/media/AudioService$SetModeDeathHandler;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    :cond_ad
    :goto_ad
    iget v12, p0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v12, :cond_1ba

    .line 2685
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v10

    .line 2686
    if-nez v10, :cond_195

    .line 2687
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_d7

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mode successfully set to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    :cond_d7
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_17d

    .line 2690
    iget-object v12, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v12}, Landroid/media/SamsungAudioService;->startCPUBoost()V

    .line 2694
    :cond_e1
    :goto_e1
    const/4 v12, 0x4

    move/from16 v0, p1

    if-ne v0, v12, :cond_189

    .line 2695
    iget-object v12, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v12}, Landroid/media/SamsungAudioService;->startCPUBoost()V

    .line 2700
    :cond_eb
    :goto_eb
    move/from16 v0, p1

    iput v0, p0, Landroid/media/AudioService;->mMode:I

    .line 2720
    :goto_ef
    if-eqz v10, :cond_f9

    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_66

    .line 2722
    :cond_f9
    if-nez v10, :cond_12f

    .line 2723
    if-eqz p1, :cond_10d

    .line 2724
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1bd

    .line 2725
    const-string v12, "AudioService"

    const-string/jumbo v13, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_10d
    :goto_10d
    const/high16 v12, -0x80000000

    invoke-virtual {p0, v12}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v11

    .line 2731
    .local v11, "streamType":I
    invoke-direct {p0, v11}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 2732
    .local v2, "device":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v13, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v13, v13, v11

    aget-object v12, v12, v13

    invoke-virtual {v12, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 2733
    .local v6, "index":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v12, v12, v11

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v2, v13}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 2735
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .end local v2    # "device":I
    .end local v6    # "index":I
    .end local v11    # "streamType":I
    :cond_12f
    move v9, v8

    .line 2737
    .end local v8    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    goto/16 :goto_3d

    .line 2646
    .end local v9    # "newModeOwnerPid":I
    .end local v10    # "status":I
    .restart local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v8    # "newModeOwnerPid":I
    :catch_132
    move-exception v3

    .line 2647
    .local v3, "e":Ljava/util/NoSuchElementException;
    const-string v12, "AudioService"

    const-string v13, "SetModeDeathHandler not registered to binder"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    .line 2667
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v10    # "status":I
    :cond_13c
    if-nez v5, :cond_147

    .line 2668
    new-instance v5, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, p0, v0, v1}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 2672
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_147
    const/4 v12, 0x0

    :try_start_148
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_14d} :catch_15a

    .line 2680
    :goto_14d
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2681
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_ad

    .line 2673
    :catch_15a
    move-exception v3

    .line 2675
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    .line 2691
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_17d
    iget v12, p0, Landroid/media/AudioService;->mMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_e1

    .line 2692
    iget-object v12, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v12}, Landroid/media/SamsungAudioService;->stopCPUBoost()V

    goto/16 :goto_e1

    .line 2696
    :cond_189
    iget v12, p0, Landroid/media/AudioService;->mMode:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_eb

    .line 2697
    iget-object v12, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v12}, Landroid/media/SamsungAudioService;->stopCPUBoost()V

    goto/16 :goto_eb

    .line 2702
    :cond_195
    if-eqz v5, :cond_1a2

    .line 2703
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2705
    const/4 v12, 0x0

    :try_start_19d
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1a2
    .catch Ljava/util/NoSuchElementException; {:try_start_19d .. :try_end_1a2} :catch_1b1

    .line 2714
    :cond_1a2
    :goto_1a2
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_1ad

    const-string v12, "AudioService"

    const-string v13, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :cond_1ad
    const/16 p1, 0x0

    goto/16 :goto_ef

    .line 2708
    :catch_1b1
    move-exception v3

    .line 2709
    .local v3, "e":Ljava/util/NoSuchElementException;
    const-string v12, "AudioService"

    const-string v13, "SetModeDeathHandler not registered to binder"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a2

    .line 2718
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :cond_1ba
    const/4 v10, 0x0

    goto/16 :goto_ef

    .line 2727
    :cond_1bd
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v12}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v8

    goto/16 :goto_10d
.end method

.method private setOrientationForAudioSystem()V
    .registers 3

    .prologue
    .line 6386
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_2a

    .line 6404
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6406
    :goto_c
    return-void

    .line 6389
    :pswitch_d
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6393
    :pswitch_14
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6397
    :pswitch_1b
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6401
    :pswitch_22
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6386
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_14
        :pswitch_d
        :pswitch_1b
    .end packed-switch
.end method

.method private setRingerModeInt(IZ)V
    .registers 15
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2375
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2376
    :try_start_7
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 2377
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_70

    .line 2380
    const-string/jumbo v0, "persist.audio.ringermode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    .line 2387
    .local v9, "numStreamTypes":I
    add-int/lit8 v11, v9, -0x1

    .local v11, "streamType":I
    :goto_1a
    if-ltz v11, :cond_9e

    .line 2388
    invoke-direct {p0, v11}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2389
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-ne p1, v4, :cond_84

    .line 2410
    :cond_2a
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v11

    if-ne v0, v4, :cond_74

    .line 2412
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v0, v11

    monitor-enter v1

    .line 2413
    :try_start_3b
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 2414
    .local v10, "set":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2415
    .local v8, "i":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2416
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2417
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4b

    .line 2418
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 2421
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :catchall_6d
    move-exception v0

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_6d

    throw v0

    .line 2377
    .end local v9    # "numStreamTypes":I
    .end local v11    # "streamType":I
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0

    .line 2421
    .restart local v8    # "i":Ljava/util/Iterator;
    .restart local v9    # "numStreamTypes":I
    .restart local v10    # "set":Ljava/util/Set;
    .restart local v11    # "streamType":I
    :cond_73
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_6d

    .line 2424
    .end local v8    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :cond_74
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2425
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 2387
    :cond_84
    :goto_84
    add-int/lit8 v11, v11, -0x1

    goto :goto_1a

    .line 2428
    :cond_87
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_84

    if-eq p1, v4, :cond_84

    .line 2430
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2431
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_84

    .line 2437
    :cond_9e
    if-eqz p2, :cond_aa

    .line 2438
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2441
    :cond_aa
    return-void
.end method

.method private setRotationForAudioSystem()V
    .registers 3

    .prologue
    .line 6409
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    packed-switch v0, :pswitch_data_2a

    .line 6423
    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6425
    :goto_c
    return-void

    .line 6411
    :pswitch_d
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6414
    :pswitch_14
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6417
    :pswitch_1b
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6420
    :pswitch_22
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 6409
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_22
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(Z)V
    .registers 10
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 6496
    iget-object v7, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 6497
    :try_start_5
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    .line 6499
    if-eqz p1, :cond_2c

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 6500
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6501
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 6518
    :cond_2a
    :goto_2a
    monitor-exit v7

    .line 6519
    return-void

    .line 6502
    :cond_2c
    if-nez p1, :cond_2a

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2a

    .line 6503
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6508
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 6509
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2a

    .line 6518
    :catchall_4f
    move-exception v0

    monitor-exit v7
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method private setStreamVolume(IIILjava/lang/String;I)V
    .registers 17
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1686
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_5

    .line 1803
    :cond_4
    :goto_4
    return-void

    .line 1690
    :cond_5
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1691
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v9, v0, p1

    .line 1692
    .local v9, "streamTypeAlias":I
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v0, v9

    .line 1708
    .local v8, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 1711
    .local v5, "device":I
    iget-object v0, p0, Landroid/media/AudioService;->pIdOfsetVolume:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    aput v1, v0, p1

    .line 1712
    iget-object v0, p0, Landroid/media/AudioService;->pIdOfsetVolumeIndex:[I

    aput p2, v0, p1

    .line 1716
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1717
    const/4 v5, 0x2

    .line 1725
    :cond_2b
    and-int/lit16 v0, v5, 0x380

    if-nez v0, :cond_33

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_4

    .line 1735
    :cond_33
    iget-object v10, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v10

    .line 1737
    const/4 v0, 0x0

    :try_start_37
    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1739
    invoke-virtual {v8, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    .line 1741
    .local v7, "oldIndex":I
    mul-int/lit8 v0, p2, 0xa

    invoke-direct {p0, v0, p1, v9}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 1743
    const/4 v0, 0x3

    if-ne v9, v0, :cond_61

    and-int/lit16 v0, v5, 0x380

    if-eqz v0, :cond_61

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_61

    .line 1746
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_c5

    .line 1747
    :try_start_51
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_60

    .line 1748
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1750
    :cond_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_c2

    .line 1753
    :cond_61
    :try_start_61
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_8f

    .line 1754
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_c5

    .line 1755
    :try_start_68
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_8e

    const/4 v0, 0x3

    if-ne v9, v0, :cond_8e

    and-int/lit16 v0, p3, 0x100

    if-nez v0, :cond_8e

    if-eq v7, p2, :cond_8e

    .line 1759
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v6

    .line 1760
    .local v6, "maxIndex":I
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v2
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_cb

    .line 1761
    :try_start_7c
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_8d

    .line 1762
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    add-int/lit8 v3, v7, 0x5

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, 0x5

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v0, v3, v4, v6}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V

    .line 1765
    :cond_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_7c .. :try_end_8e} :catchall_c8

    .line 1767
    .end local v6    # "maxIndex":I
    :cond_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_cb

    .line 1770
    :cond_8f
    and-int/lit8 p3, p3, -0x21

    .line 1771
    const/4 v0, 0x3

    if-ne v9, v0, :cond_ac

    :try_start_94
    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_ac

    .line 1773
    or-int/lit8 p3, p3, 0x20

    .line 1776
    if-eqz p2, :cond_ac

    .line 1777
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ce

    and-int/lit8 v0, v5, 0xc

    if-eqz v0, :cond_ce

    .line 1779
    iget p2, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 1786
    :cond_ac
    :goto_ac
    invoke-direct {p0, v9, p2, v5}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_df

    .line 1787
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p3}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1789
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_d3

    .line 1801
    :goto_bc
    monitor-exit v10
    :try_end_bd
    .catchall {:try_start_94 .. :try_end_bd} :catchall_c5

    .line 1802
    invoke-direct {p0, p1, v7, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_4

    .line 1750
    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v0

    .line 1801
    .end local v7    # "oldIndex":I
    :catchall_c5
    move-exception v0

    monitor-exit v10
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c5

    throw v0

    .line 1765
    .restart local v6    # "maxIndex":I
    .restart local v7    # "oldIndex":I
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v2
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v0

    .line 1767
    .end local v6    # "maxIndex":I
    :catchall_cb
    move-exception v0

    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_cb

    :try_start_cd
    throw v0

    .line 1781
    :cond_ce
    invoke-virtual {v8}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_ac

    .line 1794
    :cond_d3
    new-instance v0, Landroid/media/AudioService$StreamVolumeCommand;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$StreamVolumeCommand;-><init>(Landroid/media/AudioService;IIII)V

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    goto :goto_bc

    .line 1798
    :cond_df
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 1799
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_e9
    .catchall {:try_start_cd .. :try_end_e9} :catchall_c5

    move-result p2

    goto :goto_bc
.end method

.method private setStreamVolumeInt(IIIZ)V
    .registers 12
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2009
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 2011
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p4, :cond_16

    .line 2014
    :cond_d
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2022
    :cond_16
    return-void
.end method

.method private setWiredDeviceConnectionStateBeforeBoot()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 7074
    const/4 v1, -0x1

    .line 7075
    .local v1, "device_id":I
    const/4 v2, 0x0

    .line 7078
    .local v2, "file_reader":Ljava/io/FileReader;
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/h2w/state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_3a
    .catchall {:try_start_3 .. :try_end_a} :catchall_42

    .line 7080
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .local v3, "file_reader":Ljava/io/FileReader;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->ready()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 7081
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 7082
    .local v0, "buffer":[C
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 7083
    .local v4, "len":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2c} :catch_60
    .catchall {:try_start_a .. :try_end_2c} :catchall_5d

    move-result v1

    .line 7088
    .end local v0    # "buffer":[C
    .end local v4    # "len":I
    :cond_2d
    if-eqz v3, :cond_63

    .line 7089
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_37

    .line 7090
    const/4 v2, 0x0

    .line 7096
    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    :cond_33
    :goto_33
    packed-switch v1, :pswitch_data_66

    .line 7110
    :goto_36
    return-void

    .line 7092
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catch_37
    move-exception v5

    move-object v2, v3

    .line 7094
    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_33

    .line 7085
    :catch_3a
    move-exception v5

    .line 7088
    :goto_3b
    if-eqz v2, :cond_33

    .line 7089
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_59

    .line 7090
    const/4 v2, 0x0

    goto :goto_33

    .line 7087
    :catchall_42
    move-exception v5

    .line 7088
    :goto_43
    if-eqz v2, :cond_49

    .line 7089
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_5b

    .line 7090
    const/4 v2, 0x0

    .line 7093
    :cond_49
    :goto_49
    throw v5

    .line 7098
    :pswitch_4a
    const/4 v5, 0x4

    const-string v6, "h2w-before-boot-completed"

    invoke-virtual {p0, v5, v7, v6}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_36

    .line 7103
    :pswitch_51
    const/16 v5, 0x8

    const-string v6, "h2w-before-boot-completed"

    invoke-virtual {p0, v5, v7, v6}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_36

    .line 7092
    :catch_59
    move-exception v5

    goto :goto_33

    :catch_5b
    move-exception v6

    goto :goto_49

    .line 7087
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catchall_5d
    move-exception v5

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_43

    .line 7085
    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :catch_60
    move-exception v5

    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_3b

    .end local v2    # "file_reader":Ljava/io/FileReader;
    .restart local v3    # "file_reader":Ljava/io/FileReader;
    :cond_63
    move-object v2, v3

    .end local v3    # "file_reader":Ljava/io/FileReader;
    .restart local v2    # "file_reader":Ljava/io/FileReader;
    goto :goto_33

    .line 7096
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_51
    .end packed-switch
.end method

.method public static streamToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "stream"    # I

    .prologue
    .line 1076
    if-ltz p0, :cond_c

    sget-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 1078
    :goto_b
    return-object v0

    .line 1077
    :cond_c
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_13

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    goto :goto_b

    .line 1078
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private updateStreamVolumeAlias(Z)V
    .registers 10
    .param p1, "updateVolumes"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 1084
    iget v0, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_5e

    .line 1094
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 1102
    const/4 v7, 0x3

    .line 1107
    .local v7, "dtmfStreamAlias":I
    :goto_d
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1108
    iput v3, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 1118
    :goto_15
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 1119
    if-eqz p1, :cond_3b

    .line 1120
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 1122
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1123
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1130
    :cond_3b
    return-void

    .line 1086
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_3c
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 1087
    const/4 v7, 0x2

    .line 1088
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_d

    .line 1090
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_42
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 1091
    const/4 v7, 0x3

    .line 1092
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_d

    .line 1110
    :cond_48
    invoke-virtual {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1111
    const/4 v7, 0x0

    .line 1112
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_15

    .line 1114
    :cond_56
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_15

    .line 1084
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_42
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .prologue
    .line 931
    monitor-enter p0

    .line 932
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 935
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    goto :goto_1

    .line 936
    :catch_9
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 940
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 941
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 4
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 6285
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected addConnectedDevice(ILjava/lang/String;)V
    .registers 6
    .param p1, "nDevice"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1252
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 1253
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    monitor-exit v1

    .line 1255
    return-void

    .line 1254
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 947
    const/4 v2, 0x1

    .line 948
    .local v2, "playerToAdd":Z
    sget-object v4, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_59

    .line 949
    sget-object v4, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 950
    .local v3, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 951
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$MediaPlayerInfo;

    .line 952
    .local v1, "player":Landroid/media/AudioService$MediaPlayerInfo;
    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 953
    const-string v4, "AudioService"

    const-string v5, "Player entry present, no need to add"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v2, 0x0

    .line 955
    invoke-virtual {v1, v7}, Landroid/media/AudioService$MediaPlayerInfo;->setFocus(Z)V

    goto :goto_10

    .line 957
    :cond_32
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Player: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Lost Focus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/AudioService$MediaPlayerInfo;->setFocus(Z)V

    goto :goto_10

    .line 962
    .end local v1    # "player":Landroid/media/AudioService$MediaPlayerInfo;
    .end local v3    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :cond_59
    if-eqz v2, :cond_83

    .line 963
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Player: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to available player list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sget-object v4, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    new-instance v5, Landroid/media/AudioService$MediaPlayerInfo;

    invoke-direct {v5, p0, p1, v7}, Landroid/media/AudioService$MediaPlayerInfo;-><init>(Landroid/media/AudioService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_83
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 969
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 970
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 971
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updating focussed RCC change to RCD: CallingPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method public adjustMasterVolume(IILjava/lang/String;)V
    .registers 11
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1613
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_5

    .line 1628
    :goto_4
    return-void

    .line 1616
    :cond_5
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 1617
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1618
    .local v4, "volume":I
    const/4 v0, 0x0

    .line 1619
    .local v0, "delta":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1620
    .local v3, "numSteps":I
    if-lez p1, :cond_26

    const/4 v1, 0x1

    .line 1621
    .local v1, "direction":I
    :goto_1b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v3, :cond_28

    .line 1622
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 1623
    add-int/2addr v4, v0

    .line 1621
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1620
    .end local v1    # "direction":I
    .end local v2    # "i":I
    :cond_26
    const/4 v1, -0x1

    goto :goto_1b

    .line 1627
    .restart local v1    # "direction":I
    .restart local v2    # "i":I
    :cond_28
    invoke-virtual {p0, v4, p2, p3}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;)V

    goto :goto_4
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 1416
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .registers 11
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    .line 1344
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 5544
    iget-object v7, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5545
    :try_start_3
    iput-boolean p2, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 5546
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5549
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5552
    monitor-exit v7

    .line 5553
    return-void

    .line 5552
    :catchall_27
    move-exception v0

    monitor-exit v7
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 4113
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 4115
    const/4 v1, 0x1

    .line 4121
    :goto_b
    return v1

    .line 4117
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4120
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected checkSendBecomingNoisyIntent(II)I
    .registers 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v2, 0x0

    .line 5677
    const/4 v7, 0x0

    .line 5678
    .local v7, "delay":I
    if-nez p2, :cond_5b

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_5b

    .line 5699
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->getCurOutDevice()I

    move-result v8

    .line 5700
    .local v8, "outDevice":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_5b

    .line 5702
    const/4 v0, 0x7

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eq p1, v9, :cond_20

    if-ne p1, v10, :cond_28

    :cond_20
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-eq v0, v9, :cond_28

    .line 5703
    move v8, p1

    .line 5706
    :cond_28
    and-int v0, v8, p1

    if-eqz v0, :cond_5b

    .line 5707
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v5, 0x0

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5715
    const/16 v0, 0x400

    if-ne p1, v0, :cond_7c

    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-static {}, Landroid/media/SamsungAudioService;->getFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 5716
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hdmi delay in Factorymode  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    .end local v8    # "outDevice":I
    :cond_5b
    :goto_5b
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 5732
    :cond_79
    const/16 v7, 0x3e8

    .line 5734
    :cond_7b
    return v7

    .line 5717
    .restart local v8    # "outDevice":I
    :cond_7c
    if-eq p1, v9, :cond_80

    if-ne p1, v10, :cond_a3

    :cond_80
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_89

    iget v0, p0, Landroid/media/AudioService;->mMode:I

    if-ne v0, v9, :cond_a3

    .line 5719
    :cond_89
    const/4 v7, 0x0

    .line 5720
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in call wired headset/headphone delay ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 5722
    :cond_a3
    const/16 v7, 0x1f4

    goto :goto_5b
.end method

.method public clearAllScoClients(IZ)V
    .registers 9
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 3412
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3413
    const/4 v2, 0x0

    .line 3414
    .local v2, "savedClient":Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3415
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v3, :cond_23

    .line 3416
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 3417
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_21

    .line 3418
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 3415
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3420
    :cond_21
    move-object v2, v0

    goto :goto_1e

    .line 3423
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_23
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3424
    if-eqz v2, :cond_2f

    .line 3425
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    :cond_2f
    monitor-exit v5

    .line 3428
    return-void

    .line 3427
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v4
.end method

.method public disableSafeMediaVolume()V
    .registers 7

    .prologue
    .line 6578
    const-string v1, "disable the safe media volume"

    invoke-direct {p0, v1}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6579
    iget-object v2, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v2

    .line 6580
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 6581
    iget-object v1, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_42

    .line 6582
    iget-object v1, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v1, v1, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v4, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v4, v4, Landroid/media/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v5, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v5, v5, Landroid/media/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 6587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6588
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6589
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6590
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6592
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 6594
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_42
    monitor-exit v2

    .line 6595
    return-void

    .line 6594
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public dismissVolumePanel()V
    .registers 2

    .prologue
    .line 7065
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeController;->postDismiss()V

    .line 7066
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6749
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6751
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p2}, Landroid/media/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 6753
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0, p2}, Landroid/media/SamsungAudioService;->dump(Ljava/io/PrintWriter;)V

    .line 6755
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 6756
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 6757
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpScoClients(Ljava/io/PrintWriter;)V

    .line 6758
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6759
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6760
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6762
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6763
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6764
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6765
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Landroid/media/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6766
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6767
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6768
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6769
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6770
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .registers 8
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 2129
    if-nez p2, :cond_9

    .line 2165
    :goto_8
    return-void

    .line 2132
    :cond_9
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 2134
    const-string v1, "AudioService"

    const-string v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2137
    :cond_1b
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2138
    const/4 v0, 0x0

    .line 2139
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_59

    .line 2140
    :try_start_21
    invoke-direct {p0, p2}, Landroid/media/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 2141
    iget-object v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2142
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_40

    .line 2143
    iget v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 2144
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 2145
    const/4 v0, 0x1

    .line 2147
    :cond_40
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2159
    :cond_46
    :goto_46
    if-eqz v0, :cond_54

    .line 2161
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 2162
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2164
    :cond_54
    monitor-exit v2

    goto :goto_8

    :catchall_56
    move-exception v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v1

    .line 2150
    :cond_59
    :try_start_59
    invoke-direct {p0, p2}, Landroid/media/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_46

    .line 2151
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2152
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_46

    .line 2153
    iget v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 2154
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I
    :try_end_77
    .catchall {:try_start_59 .. :try_end_77} :catchall_56

    .line 2155
    const/4 v0, 0x1

    goto :goto_46
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1807
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1808
    :try_start_3
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1809
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 1810
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_16

    .line 1811
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 1812
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 1817
    :cond_16
    :goto_16
    monitor-exit v1

    .line 1818
    return-void

    .line 1815
    :cond_18
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_16

    .line 1817
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getActiveStreamType(I)I
    .registers 8
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/high16 v5, -0x80000000

    const/16 v3, 0xd

    const/16 v2, 0xa

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 3970
    iget v4, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v4, :pswitch_data_136

    .line 4018
    invoke-virtual {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 4019
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_9a

    .line 4021
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_24

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    :cond_24
    const/4 p1, 0x6

    .line 4063
    .end local p1    # "suggestedStreamType":I
    :cond_25
    :goto_25
    return p1

    .line 3972
    .restart local p1    # "suggestedStreamType":I
    :pswitch_26
    invoke-virtual {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3973
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_34

    .line 3976
    const/4 p1, 0x6

    goto :goto_25

    :cond_34
    move p1, v0

    .line 3979
    goto :goto_25

    .line 3981
    :cond_36
    if-ne p1, v5, :cond_83

    .line 3982
    sget v4, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v4}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 3983
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_4b

    .line 3984
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move p1, v1

    .line 3985
    goto :goto_25

    .line 3987
    :cond_4d
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_55

    move p1, v2

    .line 3989
    goto :goto_25

    .line 3990
    :cond_55
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_5d

    move p1, v3

    .line 3991
    goto :goto_25

    .line 3992
    :cond_5d
    const/16 v2, 0x9

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 3993
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType STREAM_TTS: Forcing STREAM_MUSIC.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3994
    goto :goto_25

    .line 3997
    :cond_6e
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_79

    .line 3998
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    :cond_79
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_81

    move p1, v0

    .line 4001
    goto :goto_25

    .line 4003
    :cond_81
    const/4 p1, 0x2

    goto :goto_25

    .line 4005
    :cond_83
    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 4006
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_94

    .line 4007
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    move p1, v1

    .line 4008
    goto :goto_25

    .line 4012
    :pswitch_96
    if-ne p1, v5, :cond_117

    move p1, v1

    .line 4014
    goto :goto_25

    .line 4024
    :cond_9a
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_a5

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    move p1, v0

    .line 4025
    goto/16 :goto_25

    .line 4028
    :cond_a8
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_b1

    move p1, v2

    .line 4029
    goto/16 :goto_25

    .line 4030
    :cond_b1
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_ba

    move p1, v3

    .line 4031
    goto/16 :goto_25

    .line 4032
    :cond_ba
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_c3

    move p1, v0

    .line 4033
    goto/16 :goto_25

    .line 4035
    :cond_c3
    const/4 v2, 0x5

    sget v3, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_d5

    const/4 v2, 0x2

    sget v3, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_eb

    :cond_d5
    iget-object v2, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v2}, Landroid/media/SamsungAudioService;->isPlaySilentModeOff()Z

    move-result v2

    if-nez v2, :cond_eb

    .line 4040
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_e8

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    :cond_e8
    const/4 p1, 0x5

    goto/16 :goto_25

    .line 4042
    :cond_eb
    if-eq p1, v5, :cond_f3

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 4046
    :cond_f3
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 4047
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_106

    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    move p1, v1

    .line 4048
    goto/16 :goto_25

    .line 4054
    :cond_109
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_114

    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: using STREAM_MUSIC as default"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_114
    move p1, v1

    .line 4055
    goto/16 :goto_25

    .line 4061
    :cond_117
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_25

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 3970
    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_26
        :pswitch_96
    .end packed-switch
.end method

.method public getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 7140
    const/4 v0, 0x0

    .line 7147
    .local v0, "returnStr":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentAudioFocus()I
    .registers 2

    .prologue
    .line 6293
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6297
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAudibleMasterVolume()I
    .registers 3

    .prologue
    .line 2276
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 4
    .param p1, "streamType"    # I

    .prologue
    .line 2269
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2270
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2271
    .local v0, "device":I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .registers 2

    .prologue
    .line 2264
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .registers 3

    .prologue
    const/4 v0, 0x3

    .line 2281
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v1, :pswitch_data_a

    .line 2293
    :goto_6
    :pswitch_6
    return v0

    .line 2283
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_6

    .line 2281
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public getMasterVolume()I
    .registers 2

    .prologue
    .line 2218
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2219
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_7
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 2742
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .registers 2

    .prologue
    .line 6262
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getRemoteControlClientNowPlayingEntries()V

    .line 6263
    return-void
.end method

.method public getRingerMode()I
    .registers 3

    .prologue
    .line 2317
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2318
    :try_start_3
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 2319
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 2

    .prologue
    .line 6446
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 2259
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2260
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 7
    .param p1, "streamType"    # I

    .prologue
    .line 2196
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2197
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2198
    .local v0, "device":I
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2199
    .local v1, "index":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2203
    const/4 v1, 0x0

    .line 2206
    :cond_3c
    const/16 v2, 0xa

    if-ne p1, v2, :cond_47

    invoke-virtual {p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2207
    const/4 v0, 0x2

    .line 2210
    :cond_47
    if-eqz v1, :cond_5d

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5d

    iget v2, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_5d

    .line 2212
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 2214
    :cond_5d
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    return v2
.end method

.method public getTogether()Z
    .registers 2

    .prologue
    .line 5587
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsTogether:Z

    return v0
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .param p1, "vibrateType"    # I

    .prologue
    .line 2480
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2481
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_5
.end method

.method protected hasVibrator()Z
    .registers 2

    .prologue
    .line 7112
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    .line 3143
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3144
    :try_start_3
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 3145
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .registers 3

    .prologue
    .line 3124
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCameraSoundForced()Z
    .registers 3

    .prologue
    .line 6714
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 6715
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6716
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected isDeviceConnected(I)Z
    .registers 6
    .param p1, "nDevice"    # I

    .prologue
    .line 1245
    const/4 v0, 0x0

    .line 1246
    .local v0, "isDeviceConnected":Z
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v2

    .line 1247
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1248
    monitor-exit v2

    .line 1249
    return v0

    .line 1248
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isFMPlayerActive()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3067
    :try_start_2
    const-string/jumbo v4, "persist.audio.isfmactive"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3068
    .local v1, "fmPlayer":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_12

    move-result v4

    if-ne v4, v2, :cond_10

    .line 3074
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :goto_f
    return v2

    .restart local v1    # "fmPlayer":Ljava/lang/String;
    :cond_10
    move v2, v3

    .line 3071
    goto :goto_f

    .line 3073
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :catch_12
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 3074
    goto :goto_f
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 2

    .prologue
    .line 6658
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method protected isInCommunication()Z
    .registers 5

    .prologue
    .line 3949
    const/4 v0, 0x0

    .line 3951
    .local v0, "IsInCall":Z
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3953
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3955
    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    :cond_19
    const/4 v2, 0x1

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public isMasterMute()Z
    .registers 2

    .prologue
    .line 2187
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isMediaSilentMode()Z
    .registers 4

    .prologue
    .line 2534
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaSilentMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3056
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    if-ne v1, v0, :cond_6

    .line 3059
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSpeakerphoneOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3035
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3927
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3861
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 2064
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    return v0
.end method

.method public loadSoundEffects()Z
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2870
    const/4 v7, 0x3

    .line 2871
    .local v7, "attempts":I
    new-instance v5, Landroid/media/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Landroid/media/AudioService$LoadSoundEffectReply;-><init>(Landroid/media/AudioService;)V

    .line 2873
    .local v5, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 2874
    :try_start_9
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_35

    move v8, v7

    .line 2875
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_14
    :try_start_14
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_3a

    if-ne v0, v10, :cond_2d

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_2e

    .line 2877
    const-wide/16 v0, 0x1388

    :try_start_1e
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_23
    .catchall {:try_start_1e .. :try_end_21} :catchall_35

    move v8, v7

    .line 2880
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_14

    .line 2878
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_23
    move-exception v9

    .line 2879
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_24
    const-string v0, "AudioService"

    const-string v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2880
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_14

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_2d
    move v7, v8

    .line 2882
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_2e
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_35

    .line 2883
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_38

    move v0, v10

    :goto_34
    return v0

    .line 2882
    :catchall_35
    move-exception v0

    :goto_36
    :try_start_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    move v0, v11

    .line 2883
    goto :goto_34

    .line 2882
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_3a
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_36
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 6
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 6829
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6832
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 6839
    :cond_e
    :goto_e
    return-void

    .line 6836
    :cond_f
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeController;->setVisible(Z)V

    .line 6837
    iput-boolean p2, p0, Landroid/media/AudioService;->mIsVolumeControllerVisible:Z

    .line 6838
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_e

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public onSystemReady()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 874
    iput-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    .line 876
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioService;->setSystemReady(Z)V

    .line 878
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 881
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 883
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 884
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    .line 885
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    .line 888
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    .local v8, "newIntent":Landroid/content/Intent;
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 891
    invoke-direct {p0, v8}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 893
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 894
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_44

    .line 895
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 899
    :cond_44
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 901
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_77

    .line 902
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 903
    :try_start_57
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 904
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_6b

    .line 905
    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 907
    :cond_6b
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 909
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_57 .. :try_end_77} :catchall_88

    .line 912
    :cond_77
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/16 v6, 0x7530

    move v2, v3

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 920
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 921
    return-void

    .line 909
    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0
.end method

.method protected performSoftReset()V
    .registers 18

    .prologue
    .line 1264
    const-string v14, "AudioService"

    const-string v15, "Perform soft reset start"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v14}, Landroid/media/SamsungAudioService;->performSoftReset()V

    .line 1269
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/media/AudioService;->setRingerMode(IZ)V

    .line 1271
    const/4 v1, 0x0

    .line 1272
    .local v1, "deletedRows":I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 1274
    .local v7, "numStreamTypes":I
    const/4 v12, 0x0

    .local v12, "streamType":I
    :goto_1b
    if-ge v12, v7, :cond_df

    .line 1275
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v11, v14, v12

    .line 1277
    .local v11, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const-string/jumbo v9, "name LIKE ?"

    .line 1278
    .local v9, "selectionClause":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1279
    .local v6, "makeString":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v6, v8, v14

    .line 1281
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v9, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1284
    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "performSoftReset volume index settings name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " deleted Rows "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v12

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7f

    const/4 v14, 0x3

    if-eq v12, v14, :cond_7f

    .line 1274
    :goto_7c
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 1291
    :cond_7f
    monitor-enter v11

    .line 1292
    :try_start_80
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1293
    .local v10, "set":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1294
    .local v4, "i":Ljava/util/Iterator;
    :cond_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_da

    .line 1295
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1296
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1297
    .local v2, "device":I
    sget-object v14, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v5, v14, v12

    .line 1298
    .local v5, "index":I
    mul-int/lit8 v14, v5, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    invoke-virtual {v11, v2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 1303
    add-int/lit8 v13, v7, -0x1

    .local v13, "streamType2":I
    :goto_b4
    if-ltz v13, :cond_8c

    .line 1304
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v14

    if-eq v13, v14, :cond_d7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v13

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v15

    if-ne v14, v15, :cond_d7

    .line 1306
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v14, v14, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 1303
    :cond_d7
    add-int/lit8 v13, v13, -0x1

    goto :goto_b4

    .line 1310
    .end local v2    # "device":I
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "index":I
    .end local v13    # "streamType2":I
    :cond_da
    monitor-exit v11

    goto :goto_7c

    .end local v4    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :catchall_dc
    move-exception v14

    monitor-exit v11
    :try_end_de
    .catchall {:try_start_80 .. :try_end_de} :catchall_dc

    throw v14

    .line 1312
    .end local v6    # "makeString":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "selectionClause":Ljava/lang/String;
    .end local v11    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_df
    const-string v14, "AudioService"

    const-string v15, "Perform soft reset end"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-void
.end method

.method public playBackgroundMusic(II)Z
    .registers 4
    .param p1, "music_id"    # I
    .param p2, "delay"    # I

    .prologue
    .line 7116
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    if-eqz v0, :cond_b

    .line 7117
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0, p1, p2}, Landroid/media/SamsungAudioService;->playBackgroundMusic(II)Z

    move-result v0

    .line 7119
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "effectType"    # I

    .prologue
    .line 2851
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->playSoundEffectVolume(IF)V

    .line 2852
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 10
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2856
    const/16 v0, 0xe

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_25

    .line 2857
    :cond_6
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :goto_24
    return-void

    .line 2861
    :cond_25
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_24
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7008
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_40

    move v2, v4

    .line 7011
    .local v2, "hasPermissionForPolicy":Z
    :goto_d
    if-nez v2, :cond_42

    .line 7012
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t register audio policy for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7029
    :goto_3f
    return v3

    .end local v2    # "hasPermissionForPolicy":Z
    :cond_40
    move v2, v3

    .line 7008
    goto :goto_d

    .line 7016
    .restart local v2    # "hasPermissionForPolicy":Z
    :cond_42
    iget-object v5, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 7017
    :try_start_45
    new-instance v0, Landroid/media/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/AudioService$AudioPolicyProxy;-><init>(Landroid/media/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/os/IBinder;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_77

    .line 7019
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    const/4 v6, 0x0

    :try_start_4b
    invoke-interface {p2, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7020
    iget-object v6, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_53} :catch_56
    .catchall {:try_start_4b .. :try_end_53} :catchall_77

    .line 7027
    :try_start_53
    monitor-exit v5

    move v3, v4

    .line 7029
    goto :goto_3f

    .line 7021
    :catch_56
    move-exception v1

    .line 7023
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio policy registration failed, could not link to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " binder death"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7025
    monitor-exit v5

    goto :goto_3f

    .line 7027
    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_77
    move-exception v3

    monitor-exit v5
    :try_end_79
    .catchall {:try_start_53 .. :try_end_79} :catchall_77

    throw v3
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .registers 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 6241
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 6237
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .registers 2

    .prologue
    .line 2952
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->readAudioSettings(Z)V

    .line 2953
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 6249
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 6250
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 6254
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 6255
    return-void
.end method

.method protected removeConnectedDevice(I)V
    .registers 5
    .param p1, "nDevice"    # I

    .prologue
    .line 1257
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 1258
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    monitor-exit v1

    .line 1260
    return-void

    .line 1259
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "mainStreamType"    # I
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 6280
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaFocusControl;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1893
    iget-boolean v2, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v2, :cond_5

    .line 1901
    :goto_4
    return-void

    .line 1895
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1897
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 1899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 1904
    iget-boolean v2, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v2, :cond_5

    .line 1911
    :goto_4
    return-void

    .line 1905
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1907
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAudioServiceConfig(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 7137
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 4175
    if-eq p3, v2, :cond_21

    const/16 v1, 0xa

    if-eq p3, v1, :cond_21

    .line 4176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4178
    :cond_21
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 4179
    if-ne p3, v2, :cond_3e

    .line 4180
    const/16 v1, 0x80

    if-ne p2, v2, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    :try_start_2b
    invoke-virtual {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 4185
    .local v6, "delay":I
    :goto_2f
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    if-ne p3, v2, :cond_40

    const/16 v2, 0x66

    :goto_35
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4192
    monitor-exit v7

    .line 4193
    return v6

    .line 4183
    .end local v6    # "delay":I
    :cond_3e
    const/4 v6, 0x0

    .restart local v6    # "delay":I
    goto :goto_2f

    .line 4185
    :cond_40
    const/16 v2, 0x65

    goto :goto_35

    .line 4192
    .end local v6    # "delay":I
    :catchall_43
    move-exception v0

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 10
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3129
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3130
    :try_start_4
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 3131
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_1c

    :goto_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3135
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1f

    .line 3137
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->checkAndSendEarCareInfo()V

    .line 3139
    return-void

    .line 3131
    :cond_1c
    const/16 v4, 0xa

    goto :goto_10

    .line 3135
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v7
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 6430
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6431
    :try_start_3
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 6432
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 6433
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    :goto_12
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6435
    monitor-exit v1

    .line 6436
    return-void

    .line 6433
    :cond_17
    const/16 v0, 0xa

    goto :goto_12

    .line 6435
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .registers 15
    .param p1, "on"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3081
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3120
    :goto_f
    return-void

    .line 3086
    :cond_10
    if-eqz p1, :cond_5d

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_5d

    .line 3087
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v4, v5, [I

    fill-array-data v4, :array_96

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v11

    .line 3091
    .local v11, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3092
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 3093
    .local v12, "scoState":I
    const/16 v0, 0xb

    if-eq v12, v0, :cond_5d

    const/16 v0, 0xc

    if-eq v12, v0, :cond_5d

    .line 3095
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn() wrong sco state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScoAudioState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3102
    .end local v11    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v12    # "scoState":I
    :cond_5d
    if-eqz p1, :cond_85

    .line 3103
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v3

    .line 3104
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    aput v3, v0, v6

    .line 3110
    :goto_6b
    if-eqz p1, :cond_8e

    .line 3111
    iput v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 3116
    :cond_6f
    :goto_6f
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v5, 0x0

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3118
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v8, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v9, 0x0

    move v5, v1

    move v6, v2

    move v7, v2

    move v10, v3

    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    .line 3106
    :cond_85
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v6

    goto :goto_6b

    .line 3112
    :cond_8e
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v5, :cond_6f

    .line 3113
    iput v3, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_6f

    .line 3087
    nop

    :array_96
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 8
    .param p1, "on"    # Z

    .prologue
    .line 6634
    const/4 v0, 0x0

    .line 6635
    .local v0, "device":I
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2e

    .line 6636
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 6637
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_16

    .line 6638
    const-string v2, "AudioService"

    const-string v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6639
    monitor-exit v3

    move v1, v0

    .line 6653
    .end local v0    # "device":I
    .local v1, "device":I
    :goto_15
    return v1

    .line 6642
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_16
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_35

    .line 6643
    :try_start_19
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_27

    .line 6644
    iput-boolean p1, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    .line 6645
    const/4 v5, 0x5

    if-eqz p1, :cond_30

    const/16 v2, 0xc

    :goto_24
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6649
    :cond_27
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 6650
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_32

    .line 6651
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_35

    :cond_2e
    move v1, v0

    .line 6653
    .end local v0    # "device":I
    .restart local v1    # "device":I
    goto :goto_15

    .line 6645
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_30
    const/4 v2, 0x0

    goto :goto_24

    .line 6650
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2

    .line 6651
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    .registers 12
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 2169
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_6

    .line 2183
    :cond_5
    :goto_5
    return-void

    .line 2172
    :cond_6
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v3, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 2176
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_5

    .line 2177
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2179
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    if-eqz p1, :cond_32

    const/4 v3, 0x1

    :goto_24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2181
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    goto :goto_5

    :cond_32
    move v3, v2

    .line 2179
    goto :goto_24
.end method

.method public setMasterVolume(IILjava/lang/String;)V
    .registers 7
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2223
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_5

    .line 2238
    :cond_4
    :goto_4
    return-void

    .line 2227
    :cond_5
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2232
    if-gez p1, :cond_1e

    .line 2233
    const/4 p1, 0x0

    .line 2237
    :cond_16
    :goto_16
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    goto :goto_4

    .line 2234
    :cond_1e
    const/16 v0, 0x64

    if-le p1, v0, :cond_16

    .line 2235
    const/16 p1, 0x64

    goto :goto_16
.end method

.method public setMediaSilentMode(Z)V
    .registers 9
    .param p1, "state"    # Z

    .prologue
    const/16 v6, 0x800

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 2515
    iget-boolean v1, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    if-eq p1, v1, :cond_36

    .line 2516
    invoke-virtual {p0, v4}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 2517
    .local v0, "musicLev":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaSilentMode musicLev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    if-eqz p1, :cond_37

    .line 2520
    if-eqz v0, :cond_34

    .line 2521
    iput v0, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    .line 2522
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v5, v6, v1}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 2528
    :cond_34
    :goto_34
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    .line 2530
    .end local v0    # "musicLev":I
    :cond_36
    return-void

    .line 2525
    .restart local v0    # "musicLev":I
    :cond_37
    iget v1, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v6, v2}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 2526
    iput v5, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    goto :goto_34
.end method

.method public setMicrophoneMute(ZLjava/lang/String;)V
    .registers 10
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2301
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 2313
    :cond_f
    :goto_f
    return-void

    .line 2305
    :cond_10
    const-string/jumbo v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2309
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2311
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_2e

    const/4 v3, 0x1

    :goto_23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    :cond_2e
    move v3, v2

    goto :goto_23
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .registers 9
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 2587
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_25

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_25
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2621
    :cond_2e
    :goto_2e
    return-void

    .line 2592
    :cond_2f
    if-ne p1, v5, :cond_66

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_66

    .line 2596
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 2601
    :cond_66
    if-lt p1, v4, :cond_2e

    const/4 v1, 0x5

    if-ge p1, v1, :cond_2e

    .line 2605
    const/4 v0, 0x0

    .line 2606
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2607
    if-ne p1, v4, :cond_73

    .line 2608
    :try_start_71
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 2611
    :cond_73
    if-ne p1, v5, :cond_80

    invoke-virtual {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 2612
    const-string v1, "in_call=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2614
    :cond_80
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 2615
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_8f

    .line 2618
    if-eqz v0, :cond_2e

    .line 2619
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_2e

    .line 2615
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public setRadioSpeakerOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3042
    const-string/jumbo v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3052
    :goto_c
    return-void

    .line 3045
    :cond_d
    if-eqz p1, :cond_15

    .line 3046
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3047
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    goto :goto_c

    .line 3049
    :cond_15
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3050
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    goto :goto_c
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .registers 2

    .prologue
    .line 6266
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->setRemoteControlClientBrowsedPlayer()V

    .line 6267
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .registers 5
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 6258
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setRemoteControlClientPlayItem(JI)V

    .line 6259
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 6271
    const-string/jumbo v0, "set the remote stream volume"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6272
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 6273
    return-void
.end method

.method public setRingerMode(IZ)V
    .registers 7
    .param p1, "ringerMode"    # I
    .param p2, "checkZen"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2330
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-nez v1, :cond_b

    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2359
    :cond_b
    :goto_b
    return-void

    .line 2334
    :cond_c
    if-ne p1, v3, :cond_13

    iget-boolean v1, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v1, :cond_13

    .line 2335
    const/4 p1, 0x0

    .line 2344
    :cond_13
    if-eqz p1, :cond_17

    if-ne p1, v3, :cond_5c

    .line 2345
    :cond_17
    const-string/jumbo v1, "persist.sys.silent"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    :goto_1f
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    if-eq p1, v1, :cond_b

    .line 2351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRingerMode is called by pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2352
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    invoke-direct {p0, p1, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2355
    iget-object v1, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v1, p1}, Landroid/media/SamsungAudioService;->setRingerMode(I)V

    .line 2357
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    goto :goto_b

    .line 2347
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5c
    const-string/jumbo v1, "persist.sys.silent"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .registers 5
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 6440
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6441
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 6442
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 15
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 3006
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3031
    :goto_f
    return-void

    .line 3011
    :cond_10
    if-eqz p1, :cond_3b

    .line 3012
    iget-object v0, p0, Landroid/media/AudioService;->mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v4

    .line 3013
    iget-object v0, p0, Landroid/media/AudioService;->mSpeakerOndump:[I

    aput v4, v0, v7

    .line 3019
    :goto_1e
    if-eqz p1, :cond_44

    .line 3020
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2c

    .line 3021
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3024
    :cond_2c
    iput v7, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 3029
    :cond_2e
    :goto_2e
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    .line 3015
    :cond_3b
    iget-object v0, p0, Landroid/media/AudioService;->mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v7

    goto :goto_1e

    .line 3025
    :cond_44
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_2e

    .line 3026
    iput v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_2e
.end method

.method public setStatusbarHasVolumeSlider(Z)V
    .registers 2
    .param p1, "hasVolumeSlider"    # Z

    .prologue
    .line 7070
    iput-boolean p1, p0, Landroid/media/AudioService;->mStatusbarHasVolumeSlider:Z

    .line 7071
    return-void
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2038
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_5

    .line 2060
    :cond_4
    :goto_4
    return-void

    .line 2042
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 2043
    iget-object v0, p0, Landroid/media/AudioService;->mStreamMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    aput v1, v0, p1

    .line 2046
    :cond_10
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2047
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_32

    .line 2048
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 2049
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    :try_start_20
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_31

    .line 2050
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_3d

    .line 2051
    :try_start_27
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_30

    .line 2052
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V

    .line 2054
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3a

    .line 2056
    :cond_31
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_3d

    .line 2058
    :cond_32
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_4

    .line 2054
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v0

    .line 2056
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2026
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_5

    .line 2034
    :cond_4
    return-void

    .line 2030
    :cond_5
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_6
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2031
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_13

    if-ne v0, p1, :cond_16

    .line 2030
    :cond_13
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2032
    :cond_16
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_13
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V

    .line 1682
    return-void
.end method

.method public setTogether(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 5583
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsTogether:Z

    .line 5584
    return-void
.end method

.method public setVibrateSetting(II)V
    .registers 4
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2487
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_5

    .line 2494
    :goto_4
    return-void

    .line 2489
    :cond_5
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 2492
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_4
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6798
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6801
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6825
    :cond_e
    :goto_e
    return-void

    .line 6806
    :cond_f
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeController;->postDismiss()V

    .line 6807
    if-eqz p1, :cond_23

    .line 6810
    :try_start_16
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioService$3;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_47

    .line 6823
    :cond_23
    :goto_23
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 6824
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_e

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 6819
    :catch_47
    move-exception v0

    goto :goto_23
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .registers 12
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4149
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 4150
    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 4151
    .local v6, "delay":I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x64

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4157
    monitor-exit v7

    .line 4158
    return-void

    .line 4157
    .end local v6    # "delay":I
    :catchall_14
    move-exception v0

    monitor-exit v7
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method protected setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;)V
    .registers 12
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4161
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 4162
    const/4 v6, 0x0

    .line 4163
    .local v6, "delay":I
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x64

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4169
    monitor-exit v7

    .line 4170
    return-void

    .line 4169
    :catchall_11
    move-exception v0

    monitor-exit v7
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2459
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_7

    .line 2474
    :goto_6
    :pswitch_6
    return v1

    .line 2461
    :cond_7
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_24

    goto :goto_6

    .line 2464
    :pswitch_f
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_17

    :goto_15
    move v1, v0

    goto :goto_6

    :cond_17
    move v0, v1

    goto :goto_15

    .line 2467
    :pswitch_19
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-ne v2, v0, :cond_21

    :goto_1f
    move v1, v0

    goto :goto_6

    :cond_21
    move v0, v1

    goto :goto_1f

    .line 2461
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_19
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 3150
    const/16 v1, 0x12

    if-ge p2, v1, :cond_9

    const/4 v0, 0x0

    .line 3153
    .local v0, "scoAudioMode":I
    :goto_5
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3154
    return-void

    .line 3150
    .end local v0    # "scoAudioMode":I
    :cond_9
    const/4 v0, -0x1

    goto :goto_5
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 3162
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v1, :cond_e

    .line 3175
    :cond_d
    :goto_d
    return-void

    .line 3166
    :cond_e
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 3172
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3173
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->incCount(I)V

    .line 3174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3159
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 6451
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 6452
    :try_start_3
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 6453
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6454
    monitor-exit v2

    return-object v0

    .line 6455
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public stopBackgroundMusic()Z
    .registers 2

    .prologue
    .line 7123
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    if-eqz v0, :cond_b

    .line 7124
    iget-object v0, p0, Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->stopBackgroundMusic()Z

    move-result v0

    .line 7126
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3179
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v1, :cond_e

    .line 3192
    :cond_d
    :goto_d
    return-void

    .line 3183
    :cond_e
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 3187
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3188
    .local v2, "ident":J
    if-eqz v0, :cond_1c

    .line 3189
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    .line 3191
    :cond_1c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d
.end method

.method public systemReady()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 870
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 872
    return-void
.end method

.method public unloadSoundEffects()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2892
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2893
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 6289
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 6290
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 7032
    iget-object v2, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 7033
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioPolicyProxy;

    .line 7034
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_39

    .line 7035
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7040
    :goto_37
    monitor-exit v2

    .line 7042
    return-void

    .line 7038
    :cond_39
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_37

    .line 7040
    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 6245
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 6246
    return-void
.end method

.method public updateRemoteControllerOnExistingMediaPlayers()V
    .registers 7

    .prologue
    .line 979
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRemoteControllerOnExistingMediaPlayers: size of Player list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sget-object v3, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_84

    .line 982
    const-string v3, "AudioService"

    const-string v4, "Inform RemoteController regarding existing RCC entry"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    sget-object v3, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 984
    .local v2, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 985
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$MediaPlayerInfo;

    .line 986
    .local v1, "player":Landroid/media/AudioService$MediaPlayerInfo;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->isFocussed()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 991
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 992
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 993
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating RCC change: CallingPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 997
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "player":Landroid/media/AudioService$MediaPlayerInfo;
    .end local v2    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :cond_84
    const-string v3, "AudioService"

    const-string v4, "No RCC entry present to update"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_8b
    return-void
.end method

.method updateRingerModeAffectedStreams()Z
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 3872
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3879
    .local v0, "ringerModeAffectedStreams":I
    or-int/lit16 v0, v0, 0x126

    .line 3884
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v1, :pswitch_data_4c

    .line 3896
    and-int/lit8 v0, v0, -0x9

    .line 3902
    :goto_15
    iget-object v2, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3903
    :try_start_18
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3904
    and-int/lit16 v0, v0, -0x81

    .line 3908
    :goto_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_43

    .line 3909
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_46

    .line 3910
    or-int/lit16 v0, v0, 0x100

    .line 3915
    :goto_2e
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_49

    .line 3916
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3920
    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 3921
    const/4 v1, 0x1

    .line 3923
    :goto_3d
    return v1

    .line 3886
    :pswitch_3e
    const/4 v0, 0x0

    .line 3887
    goto :goto_15

    .line 3906
    :cond_40
    or-int/lit16 v0, v0, 0x80

    goto :goto_22

    .line 3908
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1

    .line 3912
    :cond_46
    and-int/lit16 v0, v0, -0x101

    goto :goto_2e

    .line 3923
    :cond_49
    const/4 v1, 0x0

    goto :goto_3d

    .line 3884
    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_3e
    .end packed-switch
.end method
