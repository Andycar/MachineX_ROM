.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$ScanThread;,
        Lcom/android/server/FMRadioService$ListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final ACTION_BACKGROUND_PLAY:Ljava/lang/String; = "com.android.backgroung.playing"

.field private static final ACTION_DNS_PAUSE_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.pause_internet_stream"

.field private static final ACTION_DNS_RESUME_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.resume_internet_stream"

.field private static final ACTION_DNS_STOP_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.stop_internet_stream"

.field private static final ACTION_MUSIC_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final ACTION_RECORDING_SAVE:Ljava/lang/String; = "com.samsung.media.fmradio.rec_save"

.field private static final ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.android.fm.volume_lock"

.field private static final ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.android.fm.volume_unlock"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DELAY_WAITING_STREAM_STOPPED:I = 0x96

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field static final EVENT_REC_FINISH:I = 0x11

.field static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final EVENT_VOLUME_LOCK:I = 0xf

.field private static final KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.android.fm.return_back_volume"

.field private static final KNOX_MODE_USER_SWITCH:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_MOTION_LISTENER:I = 0x15

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field private static final PACKAGE_NAME_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field public static final PAUSED:I = 0xb

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64

.field private static final VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final audioMute:Ljava/lang/String; = "fm_radio_mute=1"

.field private static final audioUnMute:Ljava/lang/String; = "fm_radio_mute=0"

.field private static mIsSetWakeKey:Z

.field private static mIsTransientPaused:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private alarmTTSPlay:Z

.field private fos:Ljava/io/FileOutputStream;

.field private isFMBackGroundPlaying:Z

.field private mAFEnable:Z

.field private mAirPlaneEnabled:Z

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlgo_type:I

.field private final mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field final mAudioFocusHandler:Landroid/os/Handler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mBand:I

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mCf0_th12:I

.field public mChannelSpacing:I

.field private mChipVendor:I

.field private mCnt_th:I

.field private mCnt_th_2:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFoundFreq:J

.field private mCurrentResumeVol:J

.field public mDEConstant:I

.field private mDNSEnable:Z

.field private mFmOff:Ljava/lang/String;

.field private mFmOn:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field private mInternetStreamingMode:Z

.field public mIsAudioFocusAlive:Z

.field private mIsBatteryLow:Z

.field private mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

.field private mIsForcestop:Z

.field private mIsHeadsetPlugged:Z

.field private mIsKeepRecoding:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsSeeking:Z

.field private mIsSkipTunigVal:Z

.field private mIsSpeakerOn:Z

.field private mIsTestMode:Z

.field private mIsTvOutPlugged:Z

.field private mIsphoneCall:Z

.field private mIsphoneCallRinging:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMarvell_cmi:I

.field private mMarvell_rssi:I

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mNeedResumeToFreq:J

.field private mOnProgress:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPlayerNative:Lcom/android/server/FMPlayerNative;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousFoundFreq:J

.field private mQualcomm_cfoth12:I

.field private mQualcomm_offchannel:I

.field private mQualcomm_onchannel:I

.field private mQualcomm_rmssi_firststate:I

.field private mQualcomm_sinr_samplecnt:I

.field private mRDSEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mReturnBackVolume:I

.field private mRssi_th:I

.field private mRssi_th_2:I

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanThread:Ljava/lang/Thread;

.field private mScanVolume:I

.field private final mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private mSilicon_cnt:I

.field private mSilicon_rssi:I

.field private mSilicon_snr:I

.field private mSnr_th:I

.field private mSnr_th_2:I

.field private final mSurfaceTouchReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitPidDuringScanning:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpKeyFileName:Ljava/lang/String;

.field private mWakeUpKeyFilePath:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private volumeLock:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_b
    sput-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    .line 149
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 201
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    return-void

    :cond_15
    move v0, v1

    .line 62
    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1274
    invoke-direct {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    .line 126
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 136
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    .line 137
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    .line 138
    const-wide/16 v6, -0x2

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 148
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    .line 152
    iput-wide v10, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    .line 153
    iput-wide v10, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    .line 155
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    .line 162
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    .line 169
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    .line 178
    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 179
    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 180
    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 181
    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 182
    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 183
    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 184
    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 185
    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 188
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 189
    iput v5, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 190
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 195
    iput-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    .line 196
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 197
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 198
    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 199
    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .line 204
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 206
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    .line 207
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    .line 211
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 214
    iput v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    .line 217
    iput v4, p0, Lcom/android/server/FMRadioService;->mSilicon_rssi:I

    .line 218
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/FMRadioService;->mSilicon_snr:I

    .line 219
    iput v3, p0, Lcom/android/server/FMRadioService;->mSilicon_cnt:I

    .line 220
    const/16 v2, -0x71

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    .line 221
    const/16 v2, 0x6d

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    .line 222
    const/16 v2, 0x73

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    .line 223
    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    .line 224
    const/16 v2, 0x3a98

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    .line 225
    iput v4, p0, Lcom/android/server/FMRadioService;->mMarvell_rssi:I

    .line 226
    iput v4, p0, Lcom/android/server/FMRadioService;->mMarvell_cmi:I

    .line 228
    new-instance v2, Lcom/android/server/FMRadioService$1;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v2, Lcom/android/server/FMRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 367
    new-instance v2, Lcom/android/server/FMRadioService$3;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 386
    new-instance v2, Lcom/android/server/FMRadioService$4;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    .line 395
    new-instance v2, Lcom/android/server/FMRadioService$5;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v2, Lcom/android/server/FMRadioService$6;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    .line 632
    new-instance v2, Lcom/android/server/FMRadioService$7;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 687
    new-instance v2, Lcom/android/server/FMRadioService$8;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 710
    new-instance v2, Lcom/android/server/FMRadioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 794
    new-instance v2, Lcom/android/server/FMRadioService$10;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    .line 823
    new-instance v2, Lcom/android/server/FMRadioService$11;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 844
    new-instance v2, Lcom/android/server/FMRadioService$12;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 886
    new-instance v2, Lcom/android/server/FMRadioService$13;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    .line 912
    new-instance v2, Lcom/android/server/FMRadioService$14;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 956
    new-instance v2, Lcom/android/server/FMRadioService$15;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSurfaceTouchReceiver:Landroid/content/BroadcastReceiver;

    .line 982
    new-instance v2, Lcom/android/server/FMRadioService$16;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1009
    new-instance v2, Lcom/android/server/FMRadioService$17;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 2112
    iput-object v8, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 2943
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 2955
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    .line 1275
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    .line 1276
    new-instance v2, Lcom/android/server/FMPlayerNative;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    .line 1277
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 1278
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1290
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1292
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "FMRadio Service"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1296
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1297
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1298
    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1299
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1302
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v1, "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1306
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.android.fm.volume_lock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1307
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1309
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.android.fm.volume_unlock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1310
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1313
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_27e

    move v2, v3

    :goto_16f
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    .line 1315
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAirPlaneEnabled flag :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1316
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1317
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1319
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1320
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1322
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.media.fmradio.rec_save"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1323
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1325
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    .line 1326
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    .line 1328
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSetPropertyListener()V

    .line 1330
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readChipVendor()V

    .line 1331
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    .line 1332
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readParametersForCurrentRegion()V

    .line 1334
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    .line 1335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1337
    iget-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v2, :cond_20c

    .line 1338
    const-string v2, "exynos4"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fb

    const-string v2, "msm8960"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_281

    .line 1339
    :cond_1fb
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1340
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1341
    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1342
    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .line 1361
    :cond_20c
    :goto_20c
    iget-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v2, :cond_27d

    .line 1362
    const-string/jumbo v2, "rhea"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string v2, "capri"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string v2, "hawaii"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string v2, "java"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string/jumbo v2, "sc8810"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string/jumbo v2, "sc8825"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string/jumbo v2, "sc6820i"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string/jumbo v2, "sc8830"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string/jumbo v2, "scx15"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27b

    const-string/jumbo v2, "u2"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27d

    .line 1366
    :cond_27b
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    .line 1370
    :cond_27d
    return-void

    :cond_27e
    move v2, v4

    .line 1313
    goto/16 :goto_16f

    .line 1343
    :cond_281
    const-string v2, "msm7627a"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_295

    const-string v2, "msm7k"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a8

    .line 1344
    :cond_295
    const-string v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1345
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1346
    const-string v2, "1"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1347
    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_20c

    .line 1348
    :cond_2a8
    const-string v2, "montblanc"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c5

    .line 1349
    const-string v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1350
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1351
    const-string v2, "114,115,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1352
    const-string v2, "172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_20c

    .line 1353
    :cond_2c5
    const-string v2, "mrvl"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20c

    .line 1354
    const-string v2, "/sys/devices/platform/pxa27x-keypad/power/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1355
    const-string/jumbo v2, "wakeup"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1356
    const-string v2, "enabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1357
    const-string v2, "disabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_20c
.end method

.method static synthetic access$000(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/FMRadioService;ZIZ)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/FMRadioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->responedFocusEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/FMRadioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/FMRadioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->clearMessageQueue()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/server/FMRadioService;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/FMRadioService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/FMRadioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/FMRadioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/FMRadioService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/FMRadioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->stopInternetStreaming()V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1949
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1950
    const-string v0, "Lock is held"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1952
    :cond_12
    return-void
.end method

.method private checkForWakeLockRelease()V
    .registers 2

    .prologue
    .line 2229
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-nez v0, :cond_14

    .line 2230
    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2231
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 2233
    :cond_14
    return-void
.end method

.method private clearMessageQueue()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    return-void
.end method

.method private closeFile()V
    .registers 3

    .prologue
    .line 2726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_9

    .line 2727
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2733
    :cond_9
    :goto_9
    return-void

    .line 2729
    :catch_a
    move-exception v0

    .line 2731
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .registers 6
    .param p1, "longObArray"    # [Ljava/lang/Long;

    .prologue
    .line 2497
    if-eqz p1, :cond_14

    .line 2498
    array-length v2, p1

    new-array v1, v2, [J

    .line 2499
    .local v1, "longArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 2500
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2499
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2505
    .end local v0    # "i":I
    .end local v1    # "longArray":[J
    :cond_14
    const/4 v1, 0x0

    :cond_15
    return-object v1
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1267
    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void
.end method

.method private declared-synchronized offInternal(ZIZ)Z
    .registers 14
    .param p1, "isModeToSet"    # Z
    .param p2, "reasonCode"    # I
    .param p3, "needToRemoveFocusListener"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1965
    monitor-enter p0

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offInternal :: reasonCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1968
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v6, :cond_2e

    .line 1970
    if-eqz p3, :cond_2c

    .line 1971
    const-string v5, "offInternal :: remove audiofocus "

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1972
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_145

    .line 2063
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v4

    .line 1979
    :cond_2e
    if-nez p3, :cond_148

    move v6, v4

    :goto_31
    :try_start_31
    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 1980
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1981
    if-eqz p1, :cond_14b

    .line 1982
    iget v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    if-eq v6, v8, :cond_69

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1983
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offInternal :: mReturnBackVolume="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1984
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v7, 0xa

    iget v8, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1986
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 1988
    :cond_69
    const-string v2, "fmradio_turnon=false"

    .line 1989
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1990
    const-string v6, "offInternal Turning off FM radio"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1996
    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :goto_75
    if-nez p3, :cond_15c

    move v6, v4

    :goto_78
    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 1997
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v6}, Lcom/android/server/FMPlayerNative;->off()V

    .line 1999
    const-string v6, "off returned from native"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2000
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2001
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2002
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2003
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 2005
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2007
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    if-nez v6, :cond_c0

    .line 2008
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMusicCommandRec()V

    .line 2009
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    .line 2011
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->unregisterMotionListener()V

    .line 2015
    :cond_ac
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v6, :cond_b3

    .line 2016
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAlarmListener()V

    .line 2018
    :cond_b3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAllSoundOffListener()V

    .line 2019
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->unregisterSurfaceTouchListener()V

    .line 2022
    :cond_c0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 2024
    if-eqz p3, :cond_cc

    .line 2025
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2027
    :cond_cc
    const/4 v6, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2030
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendFMOFFBroadcast()V

    .line 2034
    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v6, :cond_180

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "msm8226"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_121

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "exynos4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_121

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "msm7627a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_121

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "msm7k"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_121

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "montblanc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_121

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "msm8960"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_121

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "msm8226"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_180

    .line 2038
    :cond_121
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v7, "input"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 2040
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v7, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_12f} :catch_152
    .catchall {:try_start_31 .. :try_end_12f} :catchall_17b

    if-eq v6, v7, :cond_140

    if-eqz v1, :cond_140

    .line 2042
    :try_start_133
    const-string v6, "com.sec.android.app.fm"

    iget-boolean v7, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v8, "114,115"

    invoke-virtual {v1, v6, v7, v8}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/SecurityException; {:try_start_133 .. :try_end_13c} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13c} :catch_152
    .catchall {:try_start_133 .. :try_end_13c} :catchall_17b

    .line 2046
    :goto_13c
    :try_start_13c
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_140} :catch_152
    .catchall {:try_start_13c .. :try_end_140} :catchall_17b

    .line 2061
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_140
    :goto_140
    :try_start_140
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_145

    goto/16 :goto_2c

    .line 1965
    :catchall_145
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_148
    move v6, v5

    .line 1979
    goto/16 :goto_31

    .line 1993
    :cond_14b
    :try_start_14b
    const-string v6, "offInternal NOT Turning off FM radio"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_150} :catch_152
    .catchall {:try_start_14b .. :try_end_150} :catchall_17b

    goto/16 :goto_75

    .line 2057
    :catch_152
    move-exception v0

    .line 2058
    .local v0, "e":Ljava/lang/Exception;
    :try_start_153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_156
    .catchall {:try_start_153 .. :try_end_156} :catchall_17b

    .line 2061
    :try_start_156
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_159
    .catchall {:try_start_156 .. :try_end_159} :catchall_145

    move v4, v5

    .line 2063
    goto/16 :goto_2c

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15c
    move v6, v5

    .line 1996
    goto/16 :goto_78

    .line 2043
    .restart local v1    # "inputManager":Landroid/hardware/input/InputManager;
    :catch_15f
    move-exception v3

    .line 2044
    .local v3, "se":Ljava/lang/SecurityException;
    :try_start_160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_17a} :catch_152
    .catchall {:try_start_160 .. :try_end_17a} :catchall_17b

    goto :goto_13c

    .line 2061
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catchall_17b
    move-exception v4

    :try_start_17c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    throw v4
    :try_end_180
    .catchall {:try_start_17c .. :try_end_180} :catchall_145

    .line 2048
    :cond_180
    :try_start_180
    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v6, :cond_140

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "mrvl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_140

    .line 2050
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    .line 2051
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v6}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    .line 2052
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_199} :catch_152
    .catchall {:try_start_180 .. :try_end_199} :catchall_17b

    goto :goto_140
.end method

.method private declared-synchronized on(Z)Z
    .registers 14
    .param p1, "isAudioFocusNeeded"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1683
    monitor-enter p0

    :try_start_4
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b3

    if-nez v8, :cond_a

    .line 1821
    :cond_8
    :goto_8
    monitor-exit p0

    return v6

    .line 1686
    :cond_a
    :try_start_a
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    if-nez v8, :cond_8

    .line 1689
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    if-nez v8, :cond_8

    .line 1692
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    .line 1694
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    if-nez v8, :cond_8

    .line 1698
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eq v8, v7, :cond_8

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eq v8, v9, :cond_8

    .line 1705
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v8, :cond_8

    .line 1709
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_b3

    if-eqz v8, :cond_33

    move v6, v7

    .line 1710
    goto :goto_8

    .line 1712
    :cond_33
    :try_start_33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1713
    .local v0, "caller":I
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1714
    .local v4, "pkgName":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v3, v4, v8

    .line 1717
    .local v3, "mPackageName":Ljava/lang/String;
    if-nez p1, :cond_4c

    sget-boolean v8, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-nez v8, :cond_b6

    .line 1718
    :cond_4c
    const-string v8, "AudioFocusListener registered"

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1719
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    const-string v8, "com.sec.android.app.fm"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 1722
    :cond_65
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1729
    :cond_6f
    :goto_6f
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1730
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v8}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1f1

    .line 1731
    const-string v8, "on returned from native"

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1733
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1734
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1736
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-nez v8, :cond_bc

    .line 1737
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_93} :catch_95
    .catchall {:try_start_33 .. :try_end_93} :catchall_b3

    goto/16 :goto_8

    .line 1812
    .end local v0    # "caller":I
    .end local v3    # "mPackageName":Ljava/lang/String;
    .end local v4    # "pkgName":[Ljava/lang/String;
    :catch_95
    move-exception v1

    .line 1813
    .local v1, "e":Ljava/lang/Exception;
    :try_start_96
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1814
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1815
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1816
    const-string v7, "on is failed by exception :: remove audiofocus "

    invoke-static {v7}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1817
    iget-object v7, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1818
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 1819
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V
    :try_end_b1
    .catchall {:try_start_96 .. :try_end_b1} :catchall_b3

    goto/16 :goto_8

    .line 1683
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_b3
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1726
    .restart local v0    # "caller":I
    .restart local v3    # "mPackageName":Ljava/lang/String;
    .restart local v4    # "pkgName":[Ljava/lang/String;
    :cond_b6
    :try_start_b6
    const-string v8, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_6f

    .line 1739
    :cond_bc
    iget v8, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_d2

    .line 1740
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 1741
    const-string/jumbo v8, "setRadioSpeakerOn() is called."

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1743
    :cond_d2
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1746
    iget v8, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1b0

    .line 1747
    iget v8, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    .line 1748
    iget v8, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    .line 1749
    iget v8, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    .line 1750
    iget v8, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    .line 1751
    iget v8, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    .line 1752
    iget v8, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setOffChannelThreshold(I)V

    .line 1753
    iget v8, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    .line 1754
    iget v8, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    .line 1760
    :goto_104
    iget v8, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setBand(I)V

    .line 1761
    iget v8, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->setChannelSpacing(I)V

    .line 1762
    iget v8, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    int-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    .line 1764
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMusicCommandRec()V

    .line 1766
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    .line 1767
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    .line 1769
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12c

    .line 1770
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->registerMotionListener()V

    .line 1772
    :cond_12c
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.backgroung.playing"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1774
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1776
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->registerSurfaceTouchListener()V

    .line 1780
    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v8, :cond_1d7

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "msm8226"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18b

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "exynos4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18b

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "msm7627a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18b

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "msm7k"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18b

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "montblanc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18b

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "msm8960"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18b

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "msm8226"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d7

    .line 1785
    :cond_18b
    iget-object v8, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v9, "input"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 1787
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v9, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_199} :catch_95
    .catchall {:try_start_b6 .. :try_end_199} :catchall_b3

    if-eq v8, v9, :cond_1aa

    if-eqz v2, :cond_1aa

    .line 1789
    :try_start_19d
    const-string v8, "com.sec.android.app.fm"

    iget-boolean v9, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v10, "114,115"

    invoke-virtual {v2, v8, v9, v10}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1a6
    .catch Ljava/lang/SecurityException; {:try_start_19d .. :try_end_1a6} :catch_1bb
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a6} :catch_95
    .catchall {:try_start_19d .. :try_end_1a6} :catchall_b3

    .line 1793
    :goto_1a6
    :try_start_1a6
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v8, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    .line 1801
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_1aa
    :goto_1aa
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    move v6, v7

    .line 1803
    goto/16 :goto_8

    .line 1756
    :cond_1b0
    iget v8, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v9, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v10, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    goto/16 :goto_104

    .line 1790
    .restart local v2    # "inputManager":Landroid/hardware/input/InputManager;
    :catch_1bb
    move-exception v5

    .line 1791
    .local v5, "se":Ljava/lang/SecurityException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1a6

    .line 1795
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_1d7
    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v8, :cond_1aa

    iget-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v9, "mrvl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1aa

    .line 1796
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    .line 1797
    iget-boolean v8, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v8}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    .line 1798
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V

    goto :goto_1aa

    .line 1805
    :cond_1f1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1806
    const-string v7, "on is failed :: remove audiofocus "

    invoke-static {v7}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1807
    iget-object v7, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1809
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_203} :catch_95
    .catchall {:try_start_1a6 .. :try_end_203} :catchall_b3

    goto/16 :goto_8
.end method

.method private openFile()V
    .registers 5

    .prologue
    .line 2705
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2707
    .local v1, "fileFMRadio":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2709
    :try_start_20
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2b

    .line 2717
    :cond_23
    :goto_23
    :try_start_23
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2a} :catch_30

    .line 2722
    :goto_2a
    return-void

    .line 2710
    :catch_2b
    move-exception v0

    .line 2712
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 2718
    .end local v0    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v0

    .line 2720
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2a
.end method

.method private queueUpdate(IJ)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1248
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_36

    .line 1249
    const-string/jumbo v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    :cond_36
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1253
    return-void
.end method

.method private readChipVendor()V
    .registers 3

    .prologue
    .line 1042
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChipVendor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method private readParametersForCurrentRegion()V
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1193
    :try_start_3
    const-string v1, "87500_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1195
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1206
    :goto_10
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sparse-switch v1, :sswitch_data_5e

    .line 1216
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1222
    :goto_19
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    sparse-switch v1, :sswitch_data_68

    .line 1232
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 1244
    :goto_21
    return-void

    .line 1196
    :cond_22
    const-string v1, "76000_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1198
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_30

    goto :goto_10

    .line 1237
    :catch_30
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1240
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1241
    iput v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1242
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_21

    .line 1199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    :try_start_3b
    const-string v1, "76000_90000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1201
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_10

    .line 1203
    :cond_49
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_10

    .line 1208
    :sswitch_4d
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_19

    .line 1212
    :sswitch_51
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_19

    .line 1224
    :sswitch_56
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_21

    .line 1228
    :sswitch_5a
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5d} :catch_30

    goto :goto_21

    .line 1206
    :sswitch_data_5e
    .sparse-switch
        0x32 -> :sswitch_4d
        0x64 -> :sswitch_51
    .end sparse-switch

    .line 1222
    :sswitch_data_68
    .sparse-switch
        0x32 -> :sswitch_56
        0x4b -> :sswitch_5a
    .end sparse-switch
.end method

.method private readTuningParameters()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1048
    const-string v1, ""

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1049
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v5, :cond_20

    .line 1050
    iget v1, p0, Lcom/android/server/FMRadioService;->mSilicon_rssi:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1051
    iget v1, p0, Lcom/android/server/FMRadioService;->mSilicon_snr:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1052
    iget v1, p0, Lcom/android/server/FMRadioService;->mSilicon_cnt:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1189
    :cond_1f
    :goto_1f
    return-void

    .line 1053
    :cond_20
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v4, :cond_3d

    .line 1054
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1056
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1058
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_1f

    .line 1060
    :cond_3d
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v7, :cond_4c

    .line 1061
    iget v1, p0, Lcom/android/server/FMRadioService;->mMarvell_rssi:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1062
    iput v3, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1063
    iget v1, p0, Lcom/android/server/FMRadioService;->mMarvell_cmi:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_1f

    .line 1064
    :cond_4c
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v6, :cond_1f

    .line 1065
    const-string v1, "3"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1067
    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1069
    const-string v1, "-2"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1071
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1072
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1073
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1074
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1075
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    goto :goto_1f

    .line 1078
    :cond_7d
    sget-object v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "Local_Tunning_vals":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuning value size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1081
    array-length v1, v0

    packed-switch v1, :pswitch_data_244

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuning value size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1084
    :pswitch_b9
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v4, :cond_e7

    .line 1085
    const-string/jumbo v1, "service.brcm.fm.start_mute"

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string/jumbo v1, "service.brcm.fm.set_blndmute"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1090
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1092
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1f

    .line 1094
    :cond_e7
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v6, :cond_119

    .line 1095
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1096
    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1098
    const-string v1, "-2"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1100
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1101
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1102
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1103
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1104
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    goto/16 :goto_1f

    .line 1106
    :cond_119
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1107
    iput v3, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1108
    iput v3, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1f

    .line 1114
    :pswitch_127
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v6, :cond_1f

    .line 1115
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1116
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1117
    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1119
    const-string v1, "-2"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1121
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1122
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1123
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1124
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    goto/16 :goto_1f

    .line 1130
    :pswitch_15d
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1131
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1132
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1f

    .line 1137
    :pswitch_177
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v6, :cond_1ad

    .line 1138
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1139
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1140
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1141
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1142
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1143
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1144
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1145
    iget v1, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    goto/16 :goto_1f

    .line 1148
    :cond_1ad
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1149
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1150
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1151
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v4, :cond_1f

    .line 1152
    const-string/jumbo v1, "service.brcm.fm.start_mute"

    aget-object v2, v0, v7

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const-string/jumbo v1, "service.brcm.fm.set_blndmute"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1160
    :pswitch_1db
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1161
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1162
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1163
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v4, :cond_1f

    .line 1164
    const-string/jumbo v1, "service.brcm.fm.start_snr"

    aget-object v2, v0, v7

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v1, "service.brcm.fm.stop_snr"

    aget-object v2, v0, v6

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v1, "service.brcm.fm.set_blndmute"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1172
    :pswitch_211
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1173
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1174
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1177
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1178
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1179
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    goto/16 :goto_1f

    .line 1081
    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_127
        :pswitch_15d
        :pswitch_177
        :pswitch_1db
        :pswitch_211
    .end packed-switch
.end method

.method private registerAlarmListener()V
    .registers 4

    .prologue
    .line 1031
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1032
    .local v0, "intentAlarmFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1033
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1034
    const-string/jumbo v1, "registering Alarm play listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method private registerAllSoundOffListener()V
    .registers 4

    .prologue
    .line 998
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 999
    .local v0, "intentAllSoundOffFilter":Landroid/content/IntentFilter;
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1001
    const-string/jumbo v1, "registering AllSoundOff listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method private registerBatteryListener()V
    .registers 4

    .prologue
    .line 1373
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1376
    .local v0, "intentFilterBattery":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1377
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1378
    const-string/jumbo v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1379
    return-void
.end method

.method private registerMusicCommandRec()V
    .registers 4

    .prologue
    .line 1827
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1829
    const-string v1, "music command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1836
    return-void
.end method

.method private registerSetPropertyListener()V
    .registers 4

    .prologue
    .line 1404
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1405
    .local v0, "intentFilterSetProperty":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1406
    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1407
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1408
    const-string/jumbo v1, "registering set property listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1409
    return-void
.end method

.method private registerSystemListener()V
    .registers 4

    .prologue
    .line 1387
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1388
    .local v0, "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1389
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1391
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1392
    .restart local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1393
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1394
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1396
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1397
    return-void
.end method

.method private registerTelephonyListener()V
    .registers 6

    .prologue
    .line 1847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1849
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_17

    .line 1855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1862
    const-string/jumbo v2, "registering telephony listener.."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1863
    return-void

    .line 1855
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1941
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1942
    const-string v0, "Lock is released"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1944
    :cond_12
    return-void
.end method

.method private remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 2097
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 2110
    :cond_c
    :goto_c
    return-void

    .line 2100
    :cond_d
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    monitor-enter v4

    .line 2101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    :try_start_11
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4f

    .line 2102
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2103
    .local v2, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_4c

    .line 2104
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2105
    .local v0, "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2106
    monitor-exit v4

    goto :goto_c

    .line 2109
    .end local v0    # "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_49

    throw v3

    .line 2101
    .restart local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2109
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_4f
    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_49

    goto :goto_c
.end method

.method private respondAudioFocusChangeForDns(I)V
    .registers 5
    .param p1, "focusChange"    # I

    .prologue
    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "respondAudioFocusChangeForDns()-focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 476
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v1, :cond_28

    .line 494
    :goto_27
    return-void

    .line 478
    :cond_28
    const/4 v0, 0x0

    .line 479
    .local v0, "action":Ljava/lang/String;
    packed-switch p1, :pswitch_data_40

    .line 493
    :goto_2c
    :pswitch_2c
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_27

    .line 481
    :pswitch_37
    const-string v0, "com.sec.android.app.dns.action.stop_internet_stream"

    .line 482
    goto :goto_2c

    .line 485
    :pswitch_3a
    const-string v0, "com.sec.android.app.dns.action.pause_internet_stream"

    .line 486
    goto :goto_2c

    .line 488
    :pswitch_3d
    const-string v0, "com.sec.android.app.dns.action.resume_internet_stream"

    .line 489
    goto :goto_2c

    .line 479
    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_3a
        :pswitch_3a
        :pswitch_37
        :pswitch_2c
        :pswitch_3d
    .end packed-switch
.end method

.method private responedFocusEvent(I)V
    .registers 11
    .param p1, "focusEvent"    # I

    .prologue
    const/16 v8, 0x11

    const/16 v5, 0xb

    const/16 v7, 0xa

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 498
    packed-switch p1, :pswitch_data_1c2

    .line 628
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 501
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 502
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_2e

    .line 503
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 508
    :goto_1a
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_35

    .line 509
    const-string v1, "AUDIOFOCUS_LOSS - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 510
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 516
    :goto_27
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 517
    invoke-direct {p0, v4, v5, v4}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_b

    .line 505
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1a

    .line 514
    :cond_35
    const-string v1, "AUDIOFOCUS_LOSS - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_27

    .line 518
    :cond_3b
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_b

    .line 519
    const-string/jumbo v1, "still in progress"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 527
    :pswitch_50
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 528
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_70

    .line 529
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 541
    :goto_5e
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_87

    .line 542
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    if-eqz v1, :cond_77

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    if-eqz v1, :cond_77

    .line 543
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O - call Ringing"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 531
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_5e

    .line 546
    :cond_77
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 548
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 549
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_b

    .line 552
    :cond_87
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 553
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 554
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_b

    .line 557
    :cond_94
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_b

    .line 558
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 564
    :pswitch_a4
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 565
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_b5

    .line 566
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 568
    :cond_b5
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 569
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_ca

    .line 570
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 574
    :goto_c2
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 575
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_b

    .line 572
    :cond_ca
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_c2

    .line 582
    :pswitch_d1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_b

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v1, :cond_b

    .line 583
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 584
    invoke-direct {p0, v6}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v1

    if-eqz v1, :cond_1bb

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 590
    sget-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v1, :cond_1af

    .line 591
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slowly increase the volume till :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 593
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1a6

    .line 594
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    .line 595
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 596
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 603
    :goto_156
    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 612
    :goto_158
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_165

    .line 613
    const-wide/32 v2, 0x155cc

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 615
    :cond_165
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 616
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    const-wide/16 v2, -0x2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto/16 :goto_b

    .line 599
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1a6
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    long-to-int v2, v2

    invoke-virtual {v1, v7, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_156

    .line 605
    :cond_1af
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v7, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_158

    .line 622
    :cond_1bb
    const-string v1, "Not able to resume FM player"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 498
    :pswitch_data_1c2
    .packed-switch -0x3
        :pswitch_a4
        :pswitch_50
        :pswitch_c
        :pswitch_b
        :pswitch_d1
    .end packed-switch
.end method

.method private sendFMOFFBroadcast()V
    .registers 3

    .prologue
    .line 2069
    const-string v1, "Sending broadcast FM is in OFF state"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2070
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2071
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2072
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2073
    return-void
.end method

.method private sendStopMusicCommandBroadcast()V
    .registers 4

    .prologue
    .line 1839
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1840
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    const-string/jumbo v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1841
    const-string v1, "from"

    const-string v2, "com.sec.android.app.fm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1842
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1843
    const-string v1, "music command stop sent .."

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1844
    return-void
.end method

.method private setSignalSetting(III)V
    .registers 5
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "cnt"    # I

    .prologue
    .line 2778
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_5

    .line 2784
    :goto_4
    return-void

    .line 2781
    :cond_5
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    .line 2782
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNative;->setSNR_th(I)V

    .line 2783
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNative;->setCnt_th(I)V

    goto :goto_4
.end method

.method private stopInternetStreaming()V
    .registers 5

    .prologue
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopInternetStreaming() - streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 463
    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-eqz v1, :cond_1e

    .line 471
    :goto_1d
    return-void

    .line 466
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dns.action.stop_internet_stream"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_2f} :catch_30

    goto :goto_1d

    .line 468
    :catch_30
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1d
.end method

.method private unRegisterBatteryListener()V
    .registers 3

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1383
    const-string/jumbo v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1384
    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .registers 3

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2093
    const-string v0, "music command reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2094
    return-void
.end method

.method private unRegisterSetPropertyListener()V
    .registers 3

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1413
    const-string/jumbo v0, "unregistering set property listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1414
    return-void
.end method

.method private unRegisterTelephonyListener()V
    .registers 6

    .prologue
    .line 1866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1868
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_16

    .line 1874
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1878
    const-string/jumbo v2, "unregistering telephony listener"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1879
    return-void

    .line 1874
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unregisterAlarmListener()V
    .registers 3

    .prologue
    .line 1038
    const-string v0, "Unregistering Alarm play listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1040
    return-void
.end method

.method private unregisterAllSoundOffListener()V
    .registers 3

    .prologue
    .line 1005
    const-string v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1007
    return-void
.end method

.method private unregisterSystemListener()V
    .registers 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1401
    return-void
.end method

.method private writeFile(Z)V
    .registers 7
    .param p1, "isFmRadioOn"    # Z

    .prologue
    .line 2736
    if-eqz p1, :cond_44

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 2738
    .local v2, "value":Ljava/lang/String;
    :goto_4
    sget-boolean v3, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v3, :cond_1f

    .line 2739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2742
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_43

    .line 2743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2744
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2745
    .local v0, "bvalue":[B
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_43} :catch_47

    .line 2750
    .end local v0    # "bvalue":[B
    :cond_43
    :goto_43
    return-void

    .line 2736
    .end local v2    # "value":Ljava/lang/String;
    :cond_44
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_4

    .line 2747
    .restart local v2    # "value":Ljava/lang/String;
    :catch_47
    move-exception v1

    .line 2748
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43
.end method


# virtual methods
.method public SetIsOn(Z)V
    .registers 2
    .param p1, "IsOn"    # Z

    .prologue
    .line 1959
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1960
    return-void
.end method

.method public SkipTuning_Value()V
    .registers 3

    .prologue
    .line 2545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2546
    const-string v0, "FMRadioService"

    const-string v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    return-void
.end method

.method public cancelAFSwitching()V
    .registers 2

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelAFSwitching()V

    .line 2254
    return-void
.end method

.method public cancelScan()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2140
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_1f

    .line 2141
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2142
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 2144
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    .line 2145
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_20

    .line 2147
    :cond_1e
    const/4 v1, 0x1

    .line 2153
    :cond_1f
    :goto_1f
    return v1

    .line 2150
    :catch_20
    move-exception v0

    .line 2151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public cancelSeek()V
    .registers 2

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 1552
    return-void
.end method

.method public disableAF()V
    .registers 2

    .prologue
    .line 2223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2224
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableAF()V

    .line 2225
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2226
    return-void
.end method

.method public disableDNS()V
    .registers 2

    .prologue
    .line 2203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2204
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableDNS()V

    .line 2205
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2206
    return-void
.end method

.method public disableRDS()V
    .registers 3

    .prologue
    .line 2186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2187
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableRDS()V

    .line 2188
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2189
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2190
    return-void
.end method

.method public enableAF()V
    .registers 2

    .prologue
    .line 2213
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_a

    .line 2214
    const-string v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2220
    :goto_9
    return-void

    .line 2217
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableAF()V

    .line 2218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2219
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_9
.end method

.method public enableDNS()V
    .registers 2

    .prologue
    .line 2193
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-eqz v0, :cond_a

    .line 2194
    const-string v0, "DNS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2200
    :goto_9
    return-void

    .line 2197
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableDNS()V

    .line 2198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2199
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_9
.end method

.method public enableRDS()V
    .registers 3

    .prologue
    .line 2175
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_a

    .line 2176
    const-string v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2183
    :goto_9
    return-void

    .line 2179
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableRDS()V

    .line 2180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2181
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2182
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_9
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2754
    invoke-super {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->finalize()V

    .line 2756
    :try_start_3
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2757
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2760
    :cond_14
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    .line 2761
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterSetPropertyListener()V

    .line 2763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 2766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 2767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    .line 2768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    .line 2770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    :try_end_2f
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_2f} :catch_30

    .line 2775
    :goto_2f
    return-void

    .line 2772
    :catch_30
    move-exception v0

    goto :goto_2f
.end method

.method public getAFRMSSISamples()I
    .registers 2

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .registers 2

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method public getAFValid_th()I
    .registers 2

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFValid_th()I

    move-result v0

    return v0
.end method

.method public getAF_th()I
    .registers 2

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAF_th()I

    move-result v0

    return v0
.end method

.method public getCFOTh12()I
    .registers 2

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method public getCnt_th()I
    .registers 2

    .prologue
    .line 2558
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method public getCnt_th_2()I
    .registers 2

    .prologue
    .line 2570
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentChannel()J
    .registers 3

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .registers 3

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSNR()J
    .registers 3

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .registers 2

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method public getHybridSearch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastScanResult()[J
    .registers 4

    .prologue
    .line 1491
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    .line 1493
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 1494
    .local v0, "arryL":[Ljava/lang/Long;
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    .line 1497
    .end local v0    # "arryL":[Ljava/lang/Long;
    :goto_13
    return-object v1

    .line 1496
    :cond_14
    const-string v1, "getLastScanResult - mScanChannelList null"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1497
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getMaxVolume()J
    .registers 3

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffChannelThreshold()I
    .registers 2

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method public getOnChannelThreshold()I
    .registers 2

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method public getRMSSIFirstStage()I
    .registers 2

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method public getRSSI_th()I
    .registers 2

    .prologue
    .line 2550
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method public getRSSI_th_2()I
    .registers 2

    .prologue
    .line 2562
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return v0
.end method

.method public getSINRFirstStage()I
    .registers 2

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method public getSINRSamples()I
    .registers 2

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method public getSINRThreshold()I
    .registers 2

    .prologue
    .line 2643
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method public getSNR_th()I
    .registers 2

    .prologue
    .line 2554
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method public getSNR_th_2()I
    .registers 2

    .prologue
    .line 2566
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return v0
.end method

.method public getSearchAlgoType()I
    .registers 2

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method public getSoftMuteMode()Z
    .registers 2

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSoftMuteMode()Z

    move-result v0

    return v0
.end method

.method public getVolume()J
    .registers 3

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .registers 2

    .prologue
    .line 2249
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .registers 2

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public isBatteryLow()Z
    .registers 2

    .prologue
    .line 1572
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .registers 2

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_6

    .line 1557
    const/4 v0, 0x1

    .line 1559
    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public isDNSEnable()Z
    .registers 2

    .prologue
    .line 2209
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .registers 2

    .prologue
    .line 1563
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .registers 2

    .prologue
    .line 1955
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public isRDSEnable()Z
    .registers 2

    .prologue
    .line 2245
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .registers 2

    .prologue
    .line 2123
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public isSeeking()Z
    .registers 2

    .prologue
    .line 2127
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .registers 2

    .prologue
    .line 1567
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public mute(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1476
    if-eqz p1, :cond_28

    .line 1477
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOn()V

    .line 1480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 1488
    :goto_27
    return-void

    .line 1482
    :cond_28
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOff()V

    .line 1483
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_27
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .registers 25
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2288
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_24

    .line 2289
    const-string v15, "fmradio_turnon=true"

    .line 2290
    .local v15, "keyValuePairs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2291
    const-string v2, "notifyEvent Turning on FM radio"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2295
    if-eqz p2, :cond_24

    move-object/from16 v2, p2

    .line 2296
    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/FMRadioService;->sendFMStatusBroadcast(Ljava/lang/Long;)V

    .line 2299
    .end local v15    # "keyValuePairs":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_35

    .line 2494
    :cond_34
    :goto_34
    return-void

    .line 2303
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 2304
    :try_start_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v20

    .line 2306
    .local v20, "size":I
    add-int/lit8 v14, v20, -0x1

    .local v14, "i":I
    :goto_64
    if-ltz v14, :cond_65d

    .line 2307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_3c .. :try_end_7c} :catchall_11e

    .line 2309
    packed-switch p1, :pswitch_data_660

    .line 2306
    :cond_7f
    :goto_7f
    add-int/lit8 v14, v14, -0x1

    goto :goto_64

    .line 2312
    :pswitch_82
    :try_start_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onOn()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_c1} :catch_c2
    .catchall {:try_start_82 .. :try_end_c1} :catchall_11e

    goto :goto_7f

    .line 2484
    :catch_c2
    move-exception v10

    .line 2485
    .local v10, "e":Ljava/lang/Exception;
    :try_start_c3
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2486
    const-string v3, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "we loose "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " listener--ignore it :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    .line 2490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove done go for next i\'s value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2493
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "i":I
    .end local v20    # "size":I
    :catchall_11e
    move-exception v2

    monitor-exit v21
    :try_end_120
    .catchall {:try_start_c3 .. :try_end_120} :catchall_11e

    throw v2

    .line 2318
    .restart local v14    # "i":I
    .restart local v20    # "size":I
    :pswitch_121
    :try_start_121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2320
    const/16 v18, -0x1

    .line 2321
    .local v18, "reasonCode":I
    if-eqz p2, :cond_15e

    .line 2322
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2323
    :cond_15e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onOff(I)V

    goto/16 :goto_7f

    .line 2328
    .end local v18    # "reasonCode":I
    :pswitch_171
    const-wide/16 v12, 0x0

    .line 2329
    .local v12, "freq":J
    if-eqz p2, :cond_17e

    .line 2330
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2332
    :cond_17e
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_1bc

    .line 2333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2336
    :cond_1bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V

    goto/16 :goto_7f

    .line 2340
    .end local v12    # "freq":J
    :pswitch_1cd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_7f

    .line 2349
    :pswitch_20e
    if-eqz p2, :cond_26b

    .line 2350
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 2351
    .local v9, "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v11

    .line 2352
    .local v11, "freqArry":[J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v11}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_7f

    .line 2357
    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v11    # "freqArry":[J
    :cond_26b
    const-string v2, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2362
    :pswitch_272
    if-eqz p2, :cond_2cf

    .line 2363
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 2364
    .restart local v9    # "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v11

    .line 2365
    .restart local v11    # "freqArry":[J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v11}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_7f

    .line 2370
    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v11    # "freqArry":[J
    :cond_2cf
    const-string v2, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2375
    :pswitch_2d6
    if-eqz p2, :cond_330

    .line 2376
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2377
    .restart local v12    # "freq":J
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_31f

    .line 2378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2381
    :cond_31f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onTune(J)V

    goto/16 :goto_7f

    .line 2383
    .end local v12    # "freq":J
    :cond_330
    const-string v2, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2388
    :pswitch_337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->earPhoneConnected()V

    goto/16 :goto_7f

    .line 2394
    :pswitch_378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->earPhoneDisconnected()V

    goto/16 :goto_7f

    .line 2400
    :pswitch_3b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2402
    if-eqz p2, :cond_40e

    .line 2403
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RDSData;

    move-object/from16 v17, v0

    .line 2404
    .local v17, "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/FMPlayerNative$RDSData;->mFreq:J

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2407
    .end local v17    # "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    :cond_40e
    const-string v2, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2412
    :pswitch_415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2414
    if-eqz p2, :cond_476

    .line 2415
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RTPlusData;

    move-object/from16 v19, v0

    .line 2416
    .local v19, "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType1:I

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos1:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen1:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType2:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos2:I

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen2:I

    invoke-interface/range {v2 .. v8}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRTPlusReceived(IIIIII)V

    goto/16 :goto_7f

    .line 2421
    .end local v19    # "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    :cond_476
    const-string v2, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2426
    :pswitch_47d
    if-eqz p2, :cond_4be

    .line 2427
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$PIECCData;

    move-object/from16 v16, v0

    .line 2428
    .local v16, "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/FMPlayerNative$PIECCData;->mPI:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/FMPlayerNative$PIECCData;->mECC:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onPIECCReceived(II)V

    .line 2429
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_7f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    if-eqz v2, :cond_7f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    if-eqz v2, :cond_7f

    .line 2431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_4b1
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_4b1} :catch_c2
    .catchall {:try_start_121 .. :try_end_4b1} :catchall_11e

    .line 2432
    :try_start_4b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2433
    monitor-exit v3

    goto/16 :goto_7f

    :catchall_4bb
    move-exception v2

    monitor-exit v3
    :try_end_4bd
    .catchall {:try_start_4b1 .. :try_end_4bd} :catchall_4bb

    :try_start_4bd
    throw v2

    .line 2436
    .end local v16    # "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    :cond_4be
    const-string v2, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2441
    :pswitch_4c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSEnabled()V

    goto/16 :goto_7f

    .line 2447
    :pswitch_506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSDisabled()V

    goto/16 :goto_7f

    .line 2453
    :pswitch_547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onAFStarted()V

    goto/16 :goto_7f

    .line 2459
    :pswitch_588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2461
    if-eqz p2, :cond_5d4

    .line 2462
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2463
    .restart local v12    # "freq":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onAFReceived(J)V

    goto/16 :goto_7f

    .line 2465
    .end local v12    # "freq":J
    :cond_5d4
    const-string v2, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 2470
    :pswitch_5db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->volumeLock()V

    goto/16 :goto_7f

    .line 2476
    :pswitch_61c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->recFinish()V
    :try_end_65b
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_65b} :catch_c2
    .catchall {:try_start_4bd .. :try_end_65b} :catchall_11e

    goto/16 :goto_7f

    .line 2493
    :cond_65d
    :try_start_65d
    monitor-exit v21
    :try_end_65e
    .catchall {:try_start_65d .. :try_end_65e} :catchall_11e

    goto/16 :goto_34

    .line 2309
    :pswitch_data_660
    .packed-switch 0x1
        :pswitch_171
        :pswitch_1cd
        :pswitch_272
        :pswitch_20e
        :pswitch_82
        :pswitch_121
        :pswitch_2d6
        :pswitch_337
        :pswitch_378
        :pswitch_3b9
        :pswitch_4c5
        :pswitch_506
        :pswitch_547
        :pswitch_588
        :pswitch_5db
        :pswitch_415
        :pswitch_61c
        :pswitch_47d
    .end packed-switch
.end method

.method public off()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2088
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method public on()Z
    .registers 2

    .prologue
    .line 1679
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized on_in_testmode()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1630
    monitor-enter p0

    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_59

    if-eqz v4, :cond_9

    .line 1675
    :cond_7
    :goto_7
    monitor-exit p0

    return v2

    .line 1633
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eq v4, v3, :cond_7

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 1640
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_59

    if-eqz v4, :cond_20

    move v2, v3

    .line 1641
    goto :goto_7

    .line 1648
    :cond_20
    :try_start_20
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4d

    .line 1651
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 1652
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1653
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 1654
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1656
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1658
    const-string v1, "fmradio_turnon=true"

    .line 1659
    .local v1, "keyValuePairs":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1660
    const-string v4, "on_in_testmode Turning on FM radio"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move v2, v3

    .line 1665
    goto :goto_7

    .line 1668
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_50} :catch_51
    .catchall {:try_start_20 .. :try_end_50} :catchall_59

    goto :goto_7

    .line 1671
    :catch_51
    move-exception v0

    .line 1672
    .local v0, "e":Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1673
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_59

    goto :goto_7

    .line 1630
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_59
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method registerMotionListener()V
    .registers 5

    .prologue
    .line 934
    const-string v0, "[FMRadioService] registerMotionListener "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    monitor-enter v1

    .line 937
    :try_start_8
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_18

    .line 938
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v2, "motion_recognition"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 941
    :cond_18
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 943
    monitor-exit v1

    .line 944
    return-void

    .line 943
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v0
.end method

.method registerSurfaceTouchListener()V
    .registers 4

    .prologue
    .line 969
    const-string/jumbo v1, "register SurfaceTouchListener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 970
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 971
    .local v0, "intentSurfaceFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.motion.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSurfaceTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 974
    return-void
.end method

.method public removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1619
    if-nez p1, :cond_19

    .line 1622
    :goto_18
    return-void

    .line 1621
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    goto :goto_18
.end method

.method public scan()V
    .registers 2

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_5

    .line 2120
    :goto_4
    return-void

    .line 2117
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2118
    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 2119
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public searchAll()J
    .registers 3

    .prologue
    .line 2164
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_b

    .line 2165
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchAll()J

    move-result-wide v0

    .line 2166
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public searchDown()J
    .registers 3

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchDown()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchUp()J
    .registers 3

    .prologue
    .line 2157
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_b

    .line 2158
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchUp()J

    move-result-wide v0

    .line 2159
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public seekDown()J
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 1526
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1529
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v5, :cond_36

    .line 1530
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1536
    :goto_f
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->seekDown()J

    move-result-wide v0

    .line 1539
    .local v0, "freq":J
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v5, :cond_2a

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_2a

    .line 1541
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1544
    :cond_2a
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1545
    const/4 v3, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1546
    return-wide v0

    .line 1532
    .end local v0    # "freq":J
    :cond_36
    const-string v2, "fmradio_turnon=false"

    .line 1533
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public seekUp()J
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 1502
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1505
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v5, :cond_36

    .line 1506
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1512
    :goto_f
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->seekUp()J

    move-result-wide v0

    .line 1515
    .local v0, "freq":J
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v5, :cond_2a

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_2a

    .line 1517
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1520
    :cond_2a
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1521
    const/4 v3, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1522
    return-wide v0

    .line 1508
    .end local v0    # "freq":J
    :cond_36
    const-string v2, "fmradio_turnon=false"

    .line 1509
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_f
.end method

.method sendFMStatusBroadcast(Ljava/lang/Long;)V
    .registers 7
    .param p1, "freq"    # Ljava/lang/Long;

    .prologue
    .line 2076
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .line 2077
    .local v0, "currentFreq":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_10

    .line 2078
    const/high16 v0, 0x42af0000    # 87.5f

    .line 2079
    :cond_10
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_2a

    .line 2080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast tune currentFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2081
    :cond_2a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player_lock.tune.channel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2082
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2083
    const-string v2, "freq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2085
    return-void
.end method

.method public setAFRMSSISamples(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSISamples(I)V

    .line 2680
    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSIThreshold(I)V

    .line 2672
    return-void
.end method

.method public setAFValid_th(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFValid_th(I)V

    .line 2583
    return-void
.end method

.method public setAF_th(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAF_th(I)V

    .line 2575
    return-void
.end method

.method public setBand(I)V
    .registers 3
    .param p1, "band"    # I

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBand(I)V

    .line 2237
    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 2238
    return-void
.end method

.method public setCFOTh12(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setCFOTh12(I)V

    .line 2648
    return-void
.end method

.method public setChannelSpacing(I)V
    .registers 3
    .param p1, "spacing"    # I

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setChannelSpacing(I)V

    .line 2242
    return-void
.end method

.method public setCnt_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2529
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 2530
    return-void
.end method

.method public setCnt_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2541
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 2542
    return-void
.end method

.method public setDEConstant(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2509
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setDEConstant(J)V

    .line 2510
    return-void
.end method

.method public setFMIntenna(Z)V
    .registers 3
    .param p1, "setFMIntenna"    # Z

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setFMIntenna(Z)V

    .line 2591
    return-void
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setGoodChannelRMSSIThreshold(I)V

    .line 2688
    return-void
.end method

.method public setHybridSearch(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setHybridSearch(Ljava/lang/String;)V

    .line 2697
    return-void
.end method

.method public setInternetStreamingMode(Z)V
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    .line 2946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInternetStreamingMode :: mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2947
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 2948
    if-eqz p1, :cond_21

    .line 2949
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 2953
    :goto_20
    return-void

    .line 2951
    :cond_21
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_20
.end method

.method public setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService] setListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1605
    if-eqz p1, :cond_4f

    .line 1606
    monitor-enter p1

    .line 1607
    :try_start_19
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_24

    .line 1608
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 1610
    :cond_24
    new-instance v0, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    .line 1611
    .local v0, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no of listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1613
    monitor-exit p1

    .line 1615
    .end local v0    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_4f
    return-void

    .line 1613
    :catchall_50
    move-exception v1

    monitor-exit p1
    :try_end_52
    .catchall {:try_start_19 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public setMono()V
    .registers 2

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setMono()V

    .line 2262
    return-void
.end method

.method public setOffChannelThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOffChannelThreshold(I)V

    .line 2632
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOnChannelThreshold(I)V

    .line 2624
    return-void
.end method

.method public setRMSSIFirstStage(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRMSSIFirstStage(I)V

    .line 2656
    return-void
.end method

.method public setRSSI_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2521
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 2522
    return-void
.end method

.method public setRSSI_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2533
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 2534
    return-void
.end method

.method public setRecordMode(I)V
    .registers 3
    .param p1, "is_record"    # I

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRecordMode(I)V

    .line 1933
    return-void
.end method

.method public setSINRFirstStage(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRFirstStage(I)V

    .line 2664
    return-void
.end method

.method public setSINRSamples(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRSamples(I)V

    .line 2616
    return-void
.end method

.method public setSINRThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRThreshold(I)V

    .line 2640
    return-void
.end method

.method public setSNR_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2525
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 2526
    return-void
.end method

.method public setSNR_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2537
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 2538
    return-void
.end method

.method public setSearchAlgoType(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSearchAlgoType(I)V

    .line 2608
    return-void
.end method

.method public setSeekRSSI(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekRSSI(J)V

    .line 2514
    return-void
.end method

.method public setSeekSNR(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekSNR(J)V

    .line 2518
    return-void
.end method

.method public setSoftMuteControl(III)V
    .registers 5
    .param p1, "min_RSSI"    # I
    .param p2, "max_RSSI"    # I
    .param p3, "max_attenuation"    # I

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/FMPlayerNative;->setSoftMuteControl(III)V

    .line 2603
    return-void
.end method

.method public setSoftmute(Z)V
    .registers 3
    .param p1, "setSoftmute"    # Z

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSoftmute(Z)V

    .line 2595
    return-void
.end method

.method public setSpeakerOn(Z)V
    .registers 3
    .param p1, "bSpeakerOn"    # Z

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSpeakerOn(Z)V

    .line 1929
    return-void
.end method

.method public setStereo()V
    .registers 2

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setStereo()V

    .line 2258
    return-void
.end method

.method public setVolume(J)V
    .registers 12
    .param p1, "val"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 1882
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v2, :cond_8

    .line 1921
    :cond_7
    :goto_7
    return-void

    .line 1885
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_13

    .line 1886
    const-string/jumbo v2, "setVolume :: unset on ScanProgress"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 1891
    :cond_13
    :try_start_13
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v2, :cond_5d

    .line 1892
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    .line 1893
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 1895
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "all_sound_off"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1898
    .local v0, "IsEnabledAllSoundOff":I
    if-ne v0, v5, :cond_41

    .line 1899
    const-string/jumbo v2, "setVolume :: AllSoundOff is enabled. So FMRadio is muted."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1900
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_7

    .line 1901
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_3b} :catch_3c

    goto :goto_7

    .line 1917
    .end local v0    # "IsEnabledAllSoundOff":I
    :catch_3c
    move-exception v1

    .line 1918
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7

    .line 1903
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "IsEnabledAllSoundOff":I
    :cond_41
    :try_start_41
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    .line 1904
    cmp-long v2, p1, v6

    if-gtz v2, :cond_4f

    .line 1905
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_7

    .line 1906
    :cond_4f
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v2, :cond_7

    .line 1907
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1908
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    goto :goto_7

    .line 1912
    .end local v0    # "IsEnabledAllSoundOff":I
    :cond_5d
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_7

    .line 1913
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    .line 1914
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_6c
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_6c} :catch_3c

    goto :goto_7
.end method

.method public tune(J)V
    .registers 8
    .param p1, "freq"    # J

    .prologue
    const/4 v4, 0x3

    .line 1450
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v1, v4, :cond_50

    .line 1451
    const-string/jumbo v1, "tune mute - "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1458
    :goto_12
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_47

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_47

    .line 1463
    const-string/jumbo v1, "tune unmute - "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1464
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1465
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v4, :cond_47

    .line 1466
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->muteOff()V

    .line 1470
    :cond_47
    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1471
    return-void

    .line 1454
    :cond_50
    const-string v0, "fmradio_turnon=false"

    .line 1455
    .local v0, "keyValuePairs":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_12
.end method

.method unregisterMotionListener()V
    .registers 4

    .prologue
    .line 947
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-nez v0, :cond_9

    .line 954
    :cond_8
    :goto_8
    return-void

    .line 950
    :cond_9
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    monitor-enter v1

    .line 951
    :try_start_c
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_17

    .line 952
    sget-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 953
    :cond_17
    monitor-exit v1

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v0
.end method

.method unregisterSurfaceTouchListener()V
    .registers 3

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSurfaceTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 978
    const-string/jumbo v0, "unregister SurfaceTouchListener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 980
    return-void
.end method
