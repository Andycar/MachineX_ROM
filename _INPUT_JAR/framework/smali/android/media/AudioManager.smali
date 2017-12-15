.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$OnAudioPortUpdateListener;,
        Landroid/media/AudioManager$FocusEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;
    }
.end annotation


# static fields
.field public static final A2DPCONNECTED:Ljava/lang/String; = "audioParam;a2dpconnected"

.field public static final A2DPPLAYING:Ljava/lang/String; = "audioParam;a2dpplaying"

.field public static final ACTION_ANALOG_AUDIO_DOCK_PLUG:Ljava/lang/String; = "android.media.action.ANALOG_AUDIO_DOCK_PLUG"

.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY_SEC"

.field public static final ACTION_DIGITAL_AUDIO_DOCK_PLUG:Ljava/lang/String; = "android.media.action.DIGITAL_AUDIO_DOCK_PLUG"

.field public static final ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ACTION_USB_AUDIO_ACCESSORY_PLUG:Ljava/lang/String; = "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

.field public static final ACTION_USB_AUDIO_DEVICE_PLUG:Ljava/lang/String; = "android.media.action.USB_AUDIO_DEVICE_PLUG"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final AF:Ljava/lang/String; = "situation=4"

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_NONE:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field static final AUDIOPORT_GENERATION_INIT:I = 0x0

.field public static final AUDIO_SESSION_ID_GENERATE:I = 0x0

.field public static final BOOTSOUND:Ljava/lang/String; = "situation=8"

.field public static final CALL_ACTIVE:I = 0x2

.field public static final CALL_CONNECTION:Ljava/lang/String; = "situation=14"

.field public static final CALL_HOLD:I = 0x3

.field public static final CALL_INACTIVE:I = 0x1

.field public static final CALL_LOCAL_HOLD:I = 0x4

.field public static final CALL_STATE_KEY:Ljava/lang/String; = "call_state"

.field public static final CAMCORDING_START:Ljava/lang/String; = "situation=5"

.field public static final CAMCORDING_STOP:Ljava/lang/String; = "situation=5"

.field public static final DEFAULT_STREAM_VOLUME:[I

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_EXT_MIC:I = -0x7fe00000

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final EAR_PROTECT_DEFAULT_INDEX:I = 0xa

.field public static final EAR_PROTECT_DEFAULT_INDEX_DOUBLE:I = 0x15

.field public static EAR_PROTECT_LIMIT_INDEX_DISABLE:I = 0x0

.field public static EAR_PROTECT_LIMIT_INDEX_DISABLE_DOUBLE:I = 0x0

.field public static EAR_PROTECT_LIMIT_INDEX_NORMAL:I = 0x0

.field public static EAR_PROTECT_LIMIT_INDEX_NORMAL_DOUBLE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field public static final ERROR_NO_INIT:I = -0x5

.field public static final ERROR_PERMISSION_DENIED:I = -0x4

.field public static final EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field public static final EXTRA_AVAILABLITY_CHANGED_VALUE:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

.field public static final EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

.field public static final EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field public static final EXTRA_FOCUS_CHANGED_VALUE:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_VALUE"

.field public static final EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field public static final EXTRA_PREV_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ACTIVE_MEDIA_ONLY:I = 0x200

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40

.field public static final FLAG_DISMISS_UI_WARNINGS:I = 0x20000

.field public static final FLAG_FIXED_VOLUME:I = 0x20

.field public static final FLAG_FORCE_SHOW_UI:I = 0x8000

.field public static final FLAG_HDMI_SYSTEM_AUDIO_VOLUME:I = 0x100

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_SILENT_HINT:I = 0x80

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final FLAG_SILENT_MODE_STATE:I = 0x1000

.field public static final FLAG_SKIP_PENDING:I = 0x10000

.field public static final FLAG_SKIP_RINGER_MODES:I = 0x2000

.field public static final FLAG_UDATE_STATE:I = 0x800

.field public static final FLAG_UI_EXPANDED:I = 0x4000

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_INVALID:I = 0x9

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final HEADSET_VOLUME:Ljava/lang/String; = ";device=2"

.field public static final IMPLICIT:Ljava/lang/String; = ";device=0"

.field public static final IMS_VSID:J = 0x10c02000L

.field public static final KEYBOARD:Ljava/lang/String; = "situation=2"

.field public static final KEY_TONE:Ljava/lang/String; = "situation=0"

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final MASTER_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_VOLUME_CHANGED_ACTION"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_IN_VIDEOCALL:I = 0x4

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_SOUNDALIVE_PRESET_NUSIC:I = 0x6

.field public static final NUM_SOUNDALIVE_PRESET_VIDEO:I = 0x5

.field public static final NUM_SOUND_EFFECTS:I = 0xe

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OUTDEVICE:Ljava/lang/String; = "audioParam;outDevice"

.field public static final PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final RCC_CHANGED_ACTION:Ljava/lang/String; = "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

.field public static final RECORD_ACTIVE:Ljava/lang/String; = "isRecordActive"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field private static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SA_DUMP_OFF:I = 0x2000

.field public static final SA_DUMP_ON:I = 0x4000

.field public static final SA_GET_PUMP_DATA:I = 0x200

.field public static final SA_GET_VISUALIZATION_DATA:I = 0x80

.field public static final SA_INVOKE_ID_TUNNEL_CONTROL:I = 0x186a0

.field public static final SA_SET_EXTENDED_PARAM:I = 0x800

.field public static final SA_SET_PRESET:I = 0x10

.field public static final SA_SET_PUMP:I = 0x100

.field public static final SA_SET_SPEED:I = 0x400

.field public static final SA_SET_USEREQ_DATA:I = 0x20

.field public static final SA_SET_VISUALIZATION:I = 0x40

.field public static final SA_ULP_DUMP_OFF:I = 0x1000

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final SHUTTER_1:Ljava/lang/String; = "situation=3"

.field public static final SHUTTER_2:Ljava/lang/String; = "situation=9"

.field public static final SHUTTER_3:Ljava/lang/String; = "situation=10"

.field public static final SITUATION_MIDI:Ljava/lang/String; = "situation=6"

.field public static final SOUNDALIVE_PRESET_BASS_BOOST:I = 0x7

.field public static final SOUNDALIVE_PRESET_CAFE:I = 0xb

.field public static final SOUNDALIVE_PRESET_CLASSIC:I = 0x5

.field public static final SOUNDALIVE_PRESET_CLUB:I = 0x4

.field public static final SOUNDALIVE_PRESET_CONCERTHALL:I = 0x5

.field public static final SOUNDALIVE_PRESET_CONCERT_HALL:I = 0xc

.field public static final SOUNDALIVE_PRESET_DANCE:I = 0x3

.field public static final SOUNDALIVE_PRESET_EXTERNALIZATION:I = 0xa

.field public static final SOUNDALIVE_PRESET_JAZZ:I = 0x4

.field public static final SOUNDALIVE_PRESET_MOVIE:I = 0xf

.field public static final SOUNDALIVE_PRESET_MTHEATER:I = 0x9

.field public static final SOUNDALIVE_PRESET_NORMAL:I = 0x0

.field public static final SOUNDALIVE_PRESET_POP:I = 0x1

.field public static final SOUNDALIVE_PRESET_ROCK:I = 0x2

.field public static final SOUNDALIVE_PRESET_SAMSUNG_TUBE_SOUND:I = 0x11

.field public static final SOUNDALIVE_PRESET_SRS_SURROUND_MUSIC:I = 0x12

.field public static final SOUNDALIVE_PRESET_SRS_SURROUND_VIDEO:I = 0x14

.field public static final SOUNDALIVE_PRESET_SRS_WOWHD:I = 0x13

.field public static final SOUNDALIVE_PRESET_STUDIO:I = 0x3

.field public static final SOUNDALIVE_PRESET_TREBLE_BOOST:I = 0x8

.field public static final SOUNDALIVE_PRESET_TUBE:I = 0x1

.field public static final SOUNDALIVE_PRESET_USER:I = 0xd

.field public static final SOUNDALIVE_PRESET_VIDEO_AUTO:I = 0xe

.field public static final SOUNDALIVE_PRESET_VIDEO_MUSIC:I = 0xc

.field public static final SOUNDALIVE_PRESET_VIDEO_NORMAL:I = 0xa

.field public static final SOUNDALIVE_PRESET_VIDEO_VIRT71:I = 0xd

.field public static final SOUNDALIVE_PRESET_VIDEO_VOICE:I = 0xb

.field public static final SOUNDALIVE_PRESET_VIRT51:I = 0x10

.field public static final SOUNDALIVE_PRESET_VIRT71:I = 0x2

.field public static final SOUNDALIVE_PRESET_VOCAL:I = 0x6

.field public static final SOUNDALIVE_PRESET_VOICE:I = 0xe

.field public static final SOUND_HW_TOUCH:I = 0xc

.field public static final SOUND_SILENT_MODE_OFF:I = 0xb

.field public static final SOUND_TOUCH:I = 0xa

.field public static final SOUND_TW_HIGHLIGHT:I = 0xd

.field public static final SPEAKER_VOLUME:Ljava/lang/String; = ";device=1"

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_FM_RADIO:I = 0xa

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SEC_VOICE_COMMUNICATION:I = 0xc

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VIDEO_CALL:I = 0xb

.field public static final STREAM_VOICENOTE:I = 0xd

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final TONE_HIPRI:Ljava/lang/String; = "situation=16"

.field public static final TONE_LOPRI:Ljava/lang/String; = "situation=15"

.field public static final TOUCH_TONE:Ljava/lang/String; = "situation=1"

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field private static final VIBRATE_SETTING_MAX:I = 0x2

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field private static final VIBRATE_TYPE_MAX:I = 0x1

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VIDEO:Ljava/lang/String; = "situation=7"

.field public static final VOICE2_VSID:J = 0x10dc1000L

.field public static final VOICE_VSID:J = 0x10c01000L

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final VSID_KEY:Ljava/lang/String; = "vsid"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private final mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field private final mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mAudioPatchesCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;"
        }
    .end annotation
.end field

.field mAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

.field mAudioPortGeneration:Ljava/lang/Integer;

.field mAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mICallBack:Landroid/os/IBinder;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mToken:Landroid/os/Binder;

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private final mUseVolumeKeySounds:Z

.field private mVolumeKeyUpTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-string v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 542
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    .line 4135
    const/16 v0, 0x1f

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE_DOUBLE:I

    .line 4137
    const/16 v0, 0x16

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL_DOUBLE:I

    .line 4141
    const/16 v0, 0x10

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE:I

    .line 4143
    const/16 v0, 0xb

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    return-void

    .line 542
    :array_1e
    .array-data 4
        0x4
        0x4
        0x5
        0x7
        0x7
        0x5
        0x7
        0x7
        0xb
        0xb
        0x7
        0x4
        0x4
        0x7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mToken:Landroid/os/Binder;

    .line 3079
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    .line 3085
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    .line 3094
    new-instance v0, Landroid/media/AudioManager$FocusEventHandlerDelegate;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    .line 3133
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 3726
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 4535
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioPortGeneration:Ljava/lang/Integer;

    .line 4536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioPortsCached:Ljava/util/ArrayList;

    .line 4537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioPatchesCached:Ljava/util/ArrayList;

    .line 826
    iput-object p1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    .line 827
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    .line 829
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    .line 831
    new-instance v0, Landroid/media/AudioPortEventHandler;

    invoke-direct {v0, p0}, Landroid/media/AudioPortEventHandler;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    .line 832
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    .line 835
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/media/AudioManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 838
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    return-object v0
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3088
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public static getActiveStreamType()I
    .registers 5

    .prologue
    .line 1736
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1737
    .local v2, "service":Landroid/media/IAudioService;
    const/high16 v1, -0x80000000

    .line 1739
    .local v1, "nReturn":I
    const/high16 v3, -0x80000000

    :try_start_8
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getActiveStreamType(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v1

    .line 1743
    :goto_c
    return v1

    .line 1740
    :catch_d
    move-exception v0

    .line 1741
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getActiveStreamType"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static getEarProtectLimitIndex()I
    .registers 2

    .prologue
    .line 4155
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4158
    .local v1, "service":Landroid/media/IAudioService;
    sget v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    .line 4159
    .local v0, "nReturn":I
    return v0
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .registers 7
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x24

    .line 3143
    if-nez p1, :cond_14

    .line 3145
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3148
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    .prologue
    .line 842
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_7

    .line 843
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 847
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 845
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 846
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 847
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    goto :goto_6
.end method

.method public static isInputDevice(I)Z
    .registers 3
    .param p0, "device"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 3953
    and-int v0, p0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isMediaSilentMode()Z
    .registers 5

    .prologue
    .line 1769
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1770
    .local v2, "service":Landroid/media/IAudioService;
    const/4 v1, 0x0

    .line 1772
    .local v1, "nReturn":Z
    :try_start_5
    invoke-interface {v2}, Landroid/media/IAudioService;->isMediaSilentMode()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v1

    .line 1776
    :goto_9
    return v1

    .line 1773
    :catch_a
    move-exception v0

    .line 1774
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isMediaSilentMode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static isOutputDevice(I)Z
    .registers 2
    .param p0, "device"    # I

    .prologue
    .line 3944
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isValidRingerMode(I)Z
    .registers 2
    .param p0, "ringerMode"    # I

    .prologue
    .line 1203
    if-ltz p0, :cond_5

    const/4 v0, 0x2

    if-le p0, v0, :cond_7

    .line 1204
    :cond_5
    const/4 v0, 0x0

    .line 1206
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private querySoundEffectsEnabled(I)Z
    .registers 5
    .param p1, "user"    # I

    .prologue
    const/4 v0, 0x0

    .line 2965
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static setMediaSilentMode(Z)V
    .registers 5
    .param p0, "on"    # Z

    .prologue
    .line 1753
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1755
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->setMediaSilentMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1759
    :goto_7
    return-void

    .line 1756
    :catch_8
    move-exception v0

    .line 1757
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMediaSilentMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static setSmartVoumeEnable(Z)V
    .registers 1
    .param p0, "on"    # Z

    .prologue
    .line 1786
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .registers 8
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 3283
    const/4 v2, 0x0

    .line 3284
    .local v2, "status":I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 3285
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3287
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-result v2

    .line 3292
    :goto_12
    return v2

    .line 3289
    :catch_13
    move-exception v0

    .line 3290
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call abandonAudioFocus() on AudioService due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public abandonAudioFocusForCall()V
    .registers 6

    .prologue
    .line 3269
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3271
    .local v1, "service":Landroid/media/IAudioService;
    const/4 v2, 0x0

    :try_start_5
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 3275
    :goto_a
    return-void

    .line 3272
    :catch_b
    move-exception v0

    .line 3273
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call abandonAudioFocusForCall() on AudioService due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public adjustMasterVolume(II)V
    .registers 7
    .param p1, "steps"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1169
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1171
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1175
    :goto_d
    return-void

    .line 1172
    :catch_e
    move-exception v0

    .line 1173
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public adjustStreamVolume(III)V
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1079
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1081
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_12

    .line 1082
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 1090
    :goto_11
    return-void

    .line 1084
    :cond_12
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 1087
    :catch_1c
    move-exception v0

    .line 1088
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 9
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1146
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1148
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v3, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v3, :cond_12

    .line 1149
    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p3, v3}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 1157
    :goto_11
    return-void

    .line 1151
    :cond_12
    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    .line 1152
    .local v1, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v1, p2, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 1154
    .end local v1    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :catch_1c
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in adjustSuggestedStreamVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public adjustVolume(II)V
    .registers 8
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1112
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1114
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v3, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v3, :cond_12

    .line 1115
    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 1123
    :goto_11
    return-void

    .line 1117
    :cond_12
    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    .line 1118
    .local v1, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/high16 v3, -0x80000000

    invoke-virtual {v1, v3, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 1120
    .end local v1    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :catch_1e
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in adjustVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 3715
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3717
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3721
    :goto_7
    return-void

    .line 3718
    :catch_8
    move-exception v0

    .line 3719
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in avrcpSupportsAbsoluteVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
    .registers 5
    .param p1, "patch"    # [Landroid/media/AudioPatch;
    .param p2, "sources"    # [Landroid/media/AudioPortConfig;
    .param p3, "sinks"    # [Landroid/media/AudioPortConfig;

    .prologue
    .line 4447
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v0

    return v0
.end method

.method public disableSafeMediaVolume()V
    .registers 4

    .prologue
    .line 4322
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->disableSafeMediaVolume()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 4326
    :goto_7
    return-void

    .line 4323
    :catch_8
    move-exception v0

    .line 4324
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error disabling safe media volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public dismissVolumePanel()V
    .registers 5

    .prologue
    .line 4168
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4170
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->dismissVolumePanel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 4174
    :goto_7
    return-void

    .line 4171
    :catch_8
    move-exception v0

    .line 4172
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in dismissVolumePanel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 874
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 875
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 876
    return-void
.end method

.method public forceVolumeControlStream(I)V
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 1535
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1537
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1541
    :goto_9
    return-void

    .line 1538
    :catch_a
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in forceVolumeControlStream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public generateAudioSessionId()I
    .registers 4

    .prologue
    .line 2390
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 2391
    .local v0, "session":I
    if-lez v0, :cond_7

    .line 2395
    .end local v0    # "session":I
    :goto_6
    return v0

    .line 2394
    .restart local v0    # "session":I
    :cond_7
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Failure to generate a new audio session ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 4267
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4269
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v2

    .line 4273
    :goto_8
    return-object v2

    .line 4270
    :catch_9
    move-exception v0

    .line 4271
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getAudioServiceConfig"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4273
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4197
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4199
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocusPackageName()Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v2

    .line 4203
    :goto_8
    return-object v2

    .line 4200
    :catch_9
    move-exception v0

    .line 4201
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getCurrentAudioFocusPackageName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4203
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getDevicesForStream(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 4002
    packed-switch p1, :pswitch_data_a

    .line 4012
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 4010
    :pswitch_5
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    goto :goto_4

    .line 4002
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getLastAudibleMasterVolume()I
    .registers 5

    .prologue
    .line 1383
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1385
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getLastAudibleMasterVolume()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1388
    :goto_8
    return v2

    .line 1386
    :catch_9
    move-exception v0

    .line 1387
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1388
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 1258
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1260
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_d

    .line 1261
    invoke-interface {v1}, Landroid/media/IAudioService;->getLastAudibleMasterVolume()I

    move-result v2

    .line 1267
    :goto_c
    return v2

    .line 1263
    :cond_d
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v2

    goto :goto_c

    .line 1265
    :catch_12
    move-exception v0

    .line 1266
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getMasterMaxVolume()I
    .registers 5

    .prologue
    .line 1352
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1354
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterMaxVolume()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1357
    :goto_8
    return v2

    .line 1355
    :catch_9
    move-exception v0

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1357
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getMasterStreamType()I
    .registers 5

    .prologue
    .line 1278
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1280
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterStreamType()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1283
    :goto_8
    return v2

    .line 1281
    :catch_9
    move-exception v0

    .line 1282
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterStreamType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getMasterVolume()I
    .registers 5

    .prologue
    .line 1368
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1370
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterVolume()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1373
    :goto_8
    return v2

    .line 1371
    :catch_9
    move-exception v0

    .line 1372
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1373
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getMode()I
    .registers 5

    .prologue
    .line 2161
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2163
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 2166
    :goto_8
    return v2

    .line 2164
    :catch_9
    move-exception v0

    .line 2165
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2166
    const/4 v2, -0x2

    goto :goto_8
.end method

.method public getOutputLatency(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 4125
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    move-result v0

    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 2484
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4105
    const-string v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4106
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v1

    .line 4107
    .local v1, "outputSampleRate":I
    if-lez v1, :cond_13

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 4113
    .end local v1    # "outputSampleRate":I
    :cond_13
    :goto_13
    return-object v2

    .line 4108
    :cond_14
    const-string v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4109
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    move-result v0

    .line 4110
    .local v0, "outputFramesPerBuffer":I
    if-lez v0, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .registers 5

    .prologue
    .line 3671
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3673
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRemoteControlClientNowPlayingEntries()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3677
    :goto_7
    return-void

    .line 3674
    :catch_8
    move-exception v0

    .line 3675
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRemoteControlClientNowPlayingEntries()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getRingerMode()I
    .registers 5

    .prologue
    .line 1185
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1187
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1190
    :goto_8
    return v2

    .line 1188
    :catch_9
    move-exception v0

    .line 1189
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 3

    .prologue
    .line 4076
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 4078
    :goto_8
    return-object v1

    .line 4077
    :catch_9
    move-exception v0

    .line 4078
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRouting(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2335
    const/4 v0, -0x1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 1217
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1219
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_d

    .line 1220
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterMaxVolume()I

    move-result v2

    .line 1226
    :goto_c
    return v2

    .line 1222
    :cond_d
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v2

    goto :goto_c

    .line 1224
    :catch_12
    move-exception v0

    .line 1225
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getStreamVolume(I)I
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 1239
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1241
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_d

    .line 1242
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterVolume()I

    move-result v2

    .line 1248
    :goto_c
    return v2

    .line 1244
    :cond_d
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v2

    goto :goto_c

    .line 1246
    :catch_12
    move-exception v0

    .line 1247
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1248
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getVibrateSetting(I)I
    .registers 6
    .param p1, "vibrateType"    # I

    .prologue
    .line 1590
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1592
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1595
    :goto_8
    return v2

    .line 1593
    :catch_9
    move-exception v0

    .line 1594
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public handleKeyDown(Landroid/view/KeyEvent;I)V
    .registers 15
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/16 v10, 0x18

    const/4 v11, 0x2

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 908
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 909
    .local v3, "keyCode":I
    sparse-switch v3, :sswitch_data_8e

    .line 1002
    :cond_d
    :goto_d
    return-void

    .line 915
    :sswitch_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    .line 916
    .local v5, "scanCode":I
    const/16 v9, 0x215

    if-eq v5, v9, :cond_d

    const/16 v9, 0x216

    if-eq v5, v9, :cond_d

    .line 926
    .end local v5    # "scanCode":I
    :sswitch_1a
    const/16 v0, 0x11

    .line 928
    .local v0, "flags":I
    iget-boolean v9, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v9, :cond_2f

    .line 929
    if-eq v3, v10, :cond_2a

    const/16 v9, 0xa8

    if-eq v3, v9, :cond_2a

    const/16 v9, 0x118

    if-ne v3, v9, :cond_2b

    :cond_2a
    move v7, v8

    :cond_2b
    invoke-virtual {p0, v7, v0}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    goto :goto_d

    .line 936
    :cond_2f
    if-eq v3, v10, :cond_39

    const/16 v9, 0xa8

    if-eq v3, v9, :cond_39

    const/16 v9, 0x118

    if-ne v3, v9, :cond_3a

    :cond_39
    move v7, v8

    :cond_3a
    invoke-virtual {p0, v7, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_d

    .line 959
    .end local v0    # "flags":I
    :sswitch_3e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_d

    .line 963
    const/4 v1, 0x1

    .line 964
    .local v1, "flags2":I
    invoke-static {}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v6

    .line 965
    .local v6, "streamType":I
    iget-object v7, p0, Landroid/media/AudioManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v7, :cond_7b

    iget-object v7, p0, Landroid/media/AudioManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_7b

    move v2, v8

    .line 981
    .local v2, "isLocked":Z
    :goto_56
    iget-object v7, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1120045

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_68

    const/4 v7, 0x3

    if-eq v6, v7, :cond_81

    .line 983
    :cond_68
    if-nez v2, :cond_73

    .line 984
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 985
    .local v4, "ringerMode":I
    if-eq v4, v11, :cond_7d

    .line 986
    invoke-virtual {p0, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 995
    .end local v4    # "ringerMode":I
    :cond_73
    :goto_73
    if-eqz v2, :cond_77

    .line 996
    and-int/lit8 v1, v1, -0x2

    .line 998
    :cond_77
    invoke-virtual {p0, v9, p2, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_d

    .end local v2    # "isLocked":Z
    :cond_7b
    move v2, v9

    .line 965
    goto :goto_56

    .line 988
    .restart local v2    # "isLocked":Z
    .restart local v4    # "ringerMode":I
    :cond_7d
    invoke-virtual {p0, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_73

    .line 992
    .end local v4    # "ringerMode":I
    :cond_81
    invoke-static {}, Landroid/media/AudioManager;->isMediaSilentMode()Z

    move-result v7

    if-nez v7, :cond_8b

    :goto_87
    invoke-static {v8}, Landroid/media/AudioManager;->setMediaSilentMode(Z)V

    goto :goto_73

    :cond_8b
    move v8, v9

    goto :goto_87

    .line 909
    nop

    :sswitch_data_8e
    .sparse-switch
        0x18 -> :sswitch_1a
        0x19 -> :sswitch_1a
        0x5b -> :sswitch_3e
        0xa4 -> :sswitch_3e
        0xa8 -> :sswitch_e
        0xa9 -> :sswitch_e
        0x117 -> :sswitch_e
        0x118 -> :sswitch_e
        0x119 -> :sswitch_3e
    .end sparse-switch
.end method

.method public handleKeyUp(Landroid/view/KeyEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/4 v4, 0x0

    .line 1008
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1009
    .local v1, "keyCode":I
    sparse-switch v1, :sswitch_data_2e

    .line 1040
    :cond_8
    :goto_8
    return-void

    .line 1015
    :sswitch_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    .line 1016
    .local v2, "scanCode":I
    const/16 v3, 0x215

    if-eq v2, v3, :cond_8

    const/16 v3, 0x216

    if-eq v2, v3, :cond_8

    .line 1026
    .end local v2    # "scanCode":I
    :sswitch_15
    iget-boolean v3, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    if-eqz v3, :cond_21

    .line 1027
    iget-boolean v3, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v3, :cond_28

    .line 1028
    const/4 v3, 0x4

    invoke-virtual {p0, v4, v3}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    .line 1037
    :cond_21
    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    goto :goto_8

    .line 1030
    :cond_28
    const/4 v0, 0x4

    .line 1031
    .local v0, "flags":I
    invoke-virtual {p0, v4, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_21

    .line 1009
    nop

    :sswitch_data_2e
    .sparse-switch
        0x18 -> :sswitch_15
        0x19 -> :sswitch_15
        0xa8 -> :sswitch_9
        0xa9 -> :sswitch_9
        0x117 -> :sswitch_9
        0x118 -> :sswitch_9
    .end sparse-switch
.end method

.method public isAudioFocusExclusive()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 2364
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2366
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_5
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocus()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_e

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    const/4 v2, 0x1

    .line 2369
    :cond_d
    :goto_d
    return v2

    .line 2367
    :catch_e
    move-exception v0

    .line 2368
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isAudioFocusExclusive()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    .line 2025
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 2027
    const/4 v0, 0x0

    .line 2029
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .registers 3

    .prologue
    .line 1871
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 5

    .prologue
    .line 2001
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2003
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 2006
    :goto_8
    return v2

    .line 2004
    :catch_9
    move-exception v0

    .line 2005
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2006
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isExtraSpeakerDockOn()Z
    .registers 3

    .prologue
    .line 2073
    const/16 v0, 0x800

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x1000

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 2077
    const/4 v0, 0x0

    .line 2079
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public isFMActive()Z
    .registers 3

    .prologue
    .line 2407
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isHdmiConnected()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2094
    const/16 v1, 0x400

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 2098
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 4

    .prologue
    .line 4352
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 4355
    :goto_8
    return v1

    .line 4353
    :catch_9
    move-exception v0

    .line 4354
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error querying system audio mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4355
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isMasterMute()Z
    .registers 5

    .prologue
    .line 1518
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1520
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isMasterMute()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1523
    :goto_8
    return v2

    .line 1521
    :catch_9
    move-exception v0

    .line 1522
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isMasterMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1523
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isMediaSpeakerOn()Z
    .registers 2

    .prologue
    .line 1726
    const/4 v0, 0x0

    return v0
.end method

.method public isMicrophoneMute()Z
    .registers 2

    .prologue
    .line 2126
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .registers 3

    .prologue
    .line 2344
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isMusicActiveRemotely()Z
    .registers 3

    .prologue
    .line 2354
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .registers 5

    .prologue
    .line 1694
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1696
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isRadioSpeakerOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1699
    :goto_8
    return v2

    .line 1697
    :catch_9
    move-exception v0

    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isRadioSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1699
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isRecordActive()Z
    .registers 3

    .prologue
    .line 2419
    const-string v1, "isRecordActive"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2420
    .local v0, "isRecordActive":Ljava/lang/String;
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2421
    const/4 v1, 0x1

    .line 2423
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isSilentMode()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3738
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 3739
    .local v0, "ringerMode":I
    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_a

    .line 3742
    .local v1, "silentMode":Z
    :cond_9
    :goto_9
    return v1

    .line 3739
    .end local v1    # "silentMode":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public isSpeakerphoneOn()Z
    .registers 5

    .prologue
    .line 1654
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1656
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1659
    :goto_8
    return v2

    .line 1657
    :catch_9
    move-exception v0

    .line 1658
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1659
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    .line 4309
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 4312
    :goto_8
    return v1

    .line 4310
    :catch_9
    move-exception v0

    .line 4311
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling isStreamAffectedByRingerMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4312
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 1480
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1482
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1485
    :goto_8
    return v2

    .line 1483
    :catch_9
    move-exception v0

    .line 1484
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isVoiceCallActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2434
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xc

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isVolumeFixed()Z
    .registers 2

    .prologue
    .line 1059
    iget-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .registers 3

    .prologue
    .line 2053
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 2057
    const/4 v0, 0x0

    .line 2059
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public listAudioDevicePorts(Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4408
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4409
    .local v1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    .line 4410
    .local v2, "status":I
    if-nez v2, :cond_28

    .line 4411
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 4413
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/media/AudioDevicePort;

    if-eqz v3, :cond_25

    .line 4414
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4412
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 4418
    .end local v0    # "i":I
    :cond_28
    return v2
.end method

.method public listAudioPatches(Ljava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4471
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public listAudioPorts(Ljava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4399
    .local p1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public loadSoundEffects()V
    .registers 6

    .prologue
    .line 2975
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2977
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2981
    :goto_7
    return-void

    .line 2978
    :catch_8
    move-exception v0

    .line 2979
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in loadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 6
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 4297
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 4301
    :goto_7
    return-void

    .line 4298
    :catch_8
    move-exception v0

    .line 4299
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error notifying about volume controller visibility"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public playBackgroundMusic(II)Z
    .registers 8
    .param p1, "music_id"    # I
    .param p2, "delay"    # I

    .prologue
    .line 4211
    const/4 v2, 0x0

    .line 4213
    .local v2, "status":Z
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4215
    .local v1, "service":Landroid/media/IAudioService;
    if-eqz v1, :cond_10

    .line 4216
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playBackgroundMusic(II)Z

    move-result v2

    .line 4218
    if-nez v2, :cond_10

    .line 4219
    invoke-interface {v1}, Landroid/media/IAudioService;->stopBackgroundMusic()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 4226
    .end local v1    # "service":Landroid/media/IAudioService;
    :cond_10
    :goto_10
    return v2

    .line 4223
    :catch_11
    move-exception v0

    .line 4224
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Error in BackgroundMusicService (play)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public playSoundEffect(I)V
    .registers 7
    .param p1, "effectType"    # I

    .prologue
    .line 2871
    if-ltz p1, :cond_6

    const/16 v2, 0xe

    if-lt p1, v2, :cond_7

    .line 2885
    :cond_6
    :goto_6
    return-void

    .line 2875
    :cond_7
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2879
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2881
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_19
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 2882
    :catch_1d
    move-exception v0

    .line 2883
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public playSoundEffect(IF)V
    .registers 8
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2949
    if-ltz p1, :cond_6

    const/16 v2, 0xe

    if-lt p1, v2, :cond_7

    .line 2959
    :cond_6
    :goto_6
    return-void

    .line 2953
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2955
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 2956
    :catch_f
    move-exception v0

    .line 2957
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public playSoundEffect(II)V
    .registers 8
    .param p1, "effectType"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2906
    if-ltz p1, :cond_6

    const/16 v2, 0xe

    if-lt p1, v2, :cond_7

    .line 2927
    :cond_6
    :goto_6
    return-void

    .line 2916
    :cond_7
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2921
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2923
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_17
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 2924
    :catch_1b
    move-exception v0

    .line 2925
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 886
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 887
    .local v0, "keyCode":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_27

    const/16 v1, 0x18

    if-eq v0, v1, :cond_27

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_27

    iget-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_27

    .line 895
    iget-boolean v1, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v1, :cond_28

    .line 896
    invoke-virtual {p0, v6, v7}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    .line 902
    :cond_27
    :goto_27
    return-void

    .line 898
    :cond_28
    invoke-virtual {p0, v6, p2, v7}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_27
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 3160
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3161
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3162
    monitor-exit v1

    .line 3166
    :goto_10
    return-void

    .line 3164
    :cond_11
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    monitor-exit v1

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I
    .registers 7
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .prologue
    const/4 v2, -0x1

    .line 3614
    if-nez p1, :cond_b

    .line 3615
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioPolicy argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3617
    :cond_b
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3619
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_f
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->token()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/os/IBinder;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e

    move-result v3

    if-nez v3, :cond_27

    .line 3626
    :goto_1d
    return v2

    .line 3622
    :catch_1e
    move-exception v0

    .line 3623
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in registerAudioPolicyAsync()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 3626
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .registers 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .prologue
    .line 4519
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 4520
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3346
    if-nez p1, :cond_3

    .line 3350
    :goto_2
    return-void

    .line 3349
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_2
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3305
    if-nez p1, :cond_4

    .line 3329
    :goto_3
    return-void

    .line 3308
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 3309
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3313
    :cond_1d
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 3315
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_21
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_41

    .line 3322
    :goto_28
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3323
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3325
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3326
    iget-object v4, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3328
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_3

    .line 3317
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catch_41
    move-exception v0

    .line 3318
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in calling Audioservice interface addMediaPlayerAndUpdateRemoteController()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 3357
    if-nez p1, :cond_a

    .line 3358
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    :goto_9
    return-void

    .line 3361
    :cond_a
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 3362
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V

    goto :goto_9
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 3
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3427
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3431
    :cond_8
    :goto_8
    return-void

    .line 3430
    :cond_9
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    goto :goto_8
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    const/4 v0, -0x1

    .line 3512
    invoke-virtual {p0, p1, v0, v0}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 3513
    return-void
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .registers 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 3526
    if-nez p1, :cond_3

    .line 3535
    :goto_2
    return-void

    .line 3529
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3531
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 3532
    :catch_b
    move-exception v0

    .line 3533
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public registerRemoteController(Landroid/media/RemoteController;)Z
    .registers 7
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3467
    if-nez p1, :cond_4

    .line 3468
    const/4 v2, 0x0

    .line 3478
    :goto_3
    return v2

    .line 3470
    :cond_4
    invoke-virtual {p1}, Landroid/media/RemoteController;->startListeningToSessions()V

    .line 3471
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3473
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1}, Landroid/media/IAudioService;->updateRemoteControllerOnExistingMediaPlayers()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 3478
    :goto_e
    const/4 v2, 0x1

    goto :goto_3

    .line 3474
    :catch_10
    move-exception v0

    .line 3475
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in calling Audio service interfaceupdateRemoteControllerOnExistingMediaPlayers() due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public releaseAudioPatch(Landroid/media/AudioPatch;)I
    .registers 3
    .param p1, "patch"    # Landroid/media/AudioPatch;

    .prologue
    .line 4462
    invoke-static {p1}, Landroid/media/AudioSystem;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .registers 6

    .prologue
    .line 3700
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3702
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3706
    :goto_7
    return-void

    .line 3703
    :catch_8
    move-exception v0

    .line 3704
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reloadAudioSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 3564
    if-nez p1, :cond_3

    .line 3573
    :goto_2
    return-void

    .line 3567
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3569
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 3570
    :catch_b
    move-exception v0

    .line 3571
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayUsesBitmapSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 8
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 3590
    if-nez p1, :cond_3

    .line 3599
    :goto_2
    return-void

    .line 3593
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3595
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 3596
    :catch_b
    move-exception v0

    .line 3597
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayWantsPlaybackPositionSync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .registers 22
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    .prologue
    .line 3210
    const/16 v16, 0x0

    .line 3211
    .local v16, "status":I
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_c

    const/4 v2, 0x4

    move/from16 v0, p3

    if-le v0, v2, :cond_16

    .line 3213
    :cond_c
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid duration hint, audio focus request denied"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v16

    .line 3238
    .end local v16    # "status":I
    .local v17, "status":I
    :goto_15
    return v17

    .line 3216
    .end local v17    # "status":I
    .restart local v16    # "status":I
    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 3218
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3221
    .local v1, "service":Landroid/media/IAudioService;
    const/16 v2, 0xa

    move/from16 v0, p2

    if-ne v0, v2, :cond_4a

    .line 3222
    :try_start_23
    const-string v7, "com.sec.android.app.fm"

    .line 3223
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3224
    const-string v7, "com.nextradioapp.nextradio"

    .line 3226
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct/range {p0 .. p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v6

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface/range {v1 .. v7}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .end local v7    # "packageName":Ljava/lang/String;
    :goto_47
    move/from16 v17, v16

    .line 3238
    .end local v16    # "status":I
    .restart local v17    # "status":I
    goto :goto_15

    .line 3231
    .end local v17    # "status":I
    .restart local v16    # "status":I
    :cond_4a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct/range {p0 .. p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v8, v1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-interface/range {v8 .. v14}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_66} :catch_68

    move-result v16

    goto :goto_47

    .line 3235
    :catch_68
    move-exception v15

    .line 3236
    .local v15, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call requestAudioFocus() on AudioService due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public requestAudioFocusForCall(II)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "durationHint"    # I

    .prologue
    .line 3252
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3254
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const/4 v4, 0x0

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 3260
    :goto_14
    return-void

    .line 3257
    :catch_15
    move-exception v7

    .line 3258
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call requestAudioFocusForCall() on AudioService due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method resetAudioPortGeneration()I
    .registers 4

    .prologue
    .line 4541
    iget-object v2, p0, Landroid/media/AudioManager;->mAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v2

    .line 4542
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4543
    .local v0, "generation":I
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioPortGeneration:Ljava/lang/Integer;

    .line 4544
    monitor-exit v2

    .line 4545
    return v0

    .line 4544
    .end local v0    # "generation":I
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I
    .registers 10
    .param p1, "port"    # Landroid/media/AudioPort;
    .param p2, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    .line 4480
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 4481
    :cond_4
    const/4 v1, -0x2

    .line 4487
    :goto_5
    return v1

    .line 4483
    :cond_6
    invoke-virtual {p1}, Landroid/media/AudioPort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    .line 4484
    .local v6, "activeConfig":Landroid/media/AudioPortConfig;
    new-instance v0, Landroid/media/AudioPortConfig;

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v2

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v3

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->format()I

    move-result v4

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    .line 4486
    .local v0, "config":Landroid/media/AudioPortConfig;
    const/16 v1, 0x8

    iput v1, v0, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 4487
    invoke-static {v0}, Landroid/media/AudioSystem;->setAudioPortConfig(Landroid/media/AudioPortConfig;)I

    move-result v1

    goto :goto_5
.end method

.method public setAudioServiceConfig(Ljava/lang/String;)V
    .registers 6
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 4254
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4256
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setAudioServiceConfig(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 4260
    :goto_7
    return-void

    .line 4257
    :catch_8
    move-exception v0

    .line 4258
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setAudioServiceConfig"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .registers 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    .line 4062
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 4063
    .local v3, "service":Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 4065
    .local v0, "delay":I
    :try_start_5
    invoke-interface {v3, p1, p2, p3}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_b
    .catchall {:try_start_5 .. :try_end_8} :catchall_26

    move-result v0

    move v1, v0

    .line 4069
    .end local v0    # "delay":I
    .local v1, "delay":I
    :goto_a
    return v1

    .line 4066
    .end local v1    # "delay":I
    .restart local v0    # "delay":I
    :catch_b
    move-exception v2

    .line 4067
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_c
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in setBluetoothA2dpDeviceConnectionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_26

    move v1, v0

    .line 4069
    .end local v0    # "delay":I
    .restart local v1    # "delay":I
    goto :goto_a

    .end local v1    # "delay":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "delay":I
    :catchall_26
    move-exception v4

    move v1, v0

    .end local v0    # "delay":I
    .restart local v1    # "delay":I
    goto :goto_a
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 2
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2016
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 1982
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1986
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioParam;FORCE_BT_SCO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1988
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 1992
    :goto_1d
    return-void

    .line 1989
    :catch_1e
    move-exception v0

    .line 1990
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public setHdmiDeviceConnectionState(ILjava/lang/String;)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4041
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4043
    .local v1, "service":Landroid/media/IAudioService;
    const/16 v2, 0x400

    :try_start_6
    invoke-interface {v1, v2, p1, p2}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 4047
    :goto_9
    return-void

    .line 4044
    :catch_a
    move-exception v0

    .line 4045
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in setHdmiDeviceConnectionState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 4337
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 4340
    :goto_8
    return v1

    .line 4338
    :catch_9
    move-exception v0

    .line 4339
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error setting system audio mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4340
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setMasterMute(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 1495
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 1496
    return-void
.end method

.method public setMasterMute(ZI)V
    .registers 7
    .param p1, "state"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1504
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1506
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 1510
    :goto_f
    return-void

    .line 1507
    :catch_10
    move-exception v0

    .line 1508
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMasterMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setMasterVolume(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1403
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1405
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setMasterVolume(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1409
    :goto_d
    return-void

    .line 1406
    :catch_e
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setMediaSpeakerOn(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 1716
    return-void
.end method

.method public setMicrophoneMute(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 2112
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2114
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 2118
    :goto_d
    return-void

    .line 2115
    :catch_e
    move-exception v0

    .line 2116
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMicrophoneMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setMode(I)V
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 2145
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2147
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2151
    :goto_9
    return-void

    .line 2148
    :catch_a
    move-exception v0

    .line 2149
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2463
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 2473
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2474
    return-void
.end method

.method public setRadioSpeakerOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 1678
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1680
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRadioSpeakerOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1684
    :goto_7
    return-void

    .line 1681
    :catch_8
    move-exception v0

    .line 1682
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRadioSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .registers 5

    .prologue
    .line 3684
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setRemoteControlClientBrowsedPlayer: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3687
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_c
    invoke-interface {v1}, Landroid/media/IAudioService;->setRemoteControlClientBrowsedPlayer()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 3691
    :goto_f
    return-void

    .line 3688
    :catch_10
    move-exception v0

    .line 3689
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRemoteControlClientBrowsedPlayer()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .registers 9
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 3655
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3657
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setRemoteControlClientPlayItem(JI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 3662
    :goto_7
    return-void

    .line 3658
    :catch_8
    move-exception v0

    .line 3659
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in setRemoteControlClientPlayItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setRingerMode(I)V
    .registers 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 1301
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    .line 1302
    return-void
.end method

.method public setRingerMode(IZ)V
    .registers 7
    .param p1, "ringerMode"    # I
    .param p2, "checkZen"    # Z

    .prologue
    .line 1310
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1319
    :goto_6
    return-void

    .line 1313
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1315
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setRingerMode(IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 1316
    :catch_f
    move-exception v0

    .line 1317
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public setRouting(III)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "routes"    # I
    .param p3, "mask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2322
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 1636
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1640
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioParam;FORCE_SPEAKER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1642
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 1646
    :goto_1d
    return-void

    .line 1643
    :catch_1e
    move-exception v0

    .line 1644
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public setStatusbarHasVolumeSlider(Z)V
    .registers 6
    .param p1, "hasVolumeSlider"    # Z

    .prologue
    .line 4184
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4186
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setStatusbarHasVolumeSlider(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 4190
    :goto_7
    return-void

    .line 4187
    :catch_8
    move-exception v0

    .line 4188
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStatusbarHasVolumeSlider"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setStreamMute(IZ)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 1466
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1468
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamMute(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1472
    :goto_9
    return-void

    .line 1469
    :catch_a
    move-exception v0

    .line 1470
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamSolo(IZ)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 1433
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1435
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamSolo(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1439
    :goto_9
    return-void

    .line 1436
    :catch_a
    move-exception v0

    .line 1437
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamSolo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamVolume(III)V
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1334
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1336
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_12

    .line 1337
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2}, Landroid/media/IAudioService;->setMasterVolume(IILjava/lang/String;)V

    .line 1344
    :goto_11
    return-void

    .line 1339
    :cond_12
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 1341
    :catch_1c
    move-exception v0

    .line 1342
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setVibrateSetting(II)V
    .registers 7
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 1618
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1620
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1624
    :goto_7
    return-void

    .line 1621
    :catch_8
    move-exception v0

    .line 1622
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 4283
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 4287
    :goto_7
    return-void

    .line 4284
    :catch_8
    move-exception v0

    .line 4285
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Error setting volume controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .registers 9
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4024
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4026
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 4030
    :goto_7
    return-void

    .line 4027
    :catch_8
    move-exception v0

    .line 4028
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in setWiredDeviceConnectionState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setWiredHeadsetOn(Z)V
    .registers 2
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2041
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 6
    .param p1, "vibrateType"    # I

    .prologue
    .line 1563
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1565
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1568
    :goto_8
    return v2

    .line 1566
    :catch_9
    move-exception v0

    .line 1567
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in shouldVibrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1568
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public startBluetoothSco()V
    .registers 5

    .prologue
    .line 1921
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1923
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 1927
    :goto_11
    return-void

    .line 1924
    :catch_12
    move-exception v0

    .line 1925
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public startBluetoothScoVirtualCall()V
    .registers 5

    .prologue
    .line 1945
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1947
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1951
    :goto_9
    return-void

    .line 1948
    :catch_a
    move-exception v0

    .line 1949
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothScoVirtualCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public stopBackgroundMusic()Z
    .registers 6

    .prologue
    .line 4234
    const/4 v2, 0x1

    .line 4236
    .local v2, "status":Z
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4238
    .local v1, "service":Landroid/media/IAudioService;
    if-eqz v1, :cond_b

    .line 4239
    invoke-interface {v1}, Landroid/media/IAudioService;->stopBackgroundMusic()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v2

    .line 4246
    .end local v1    # "service":Landroid/media/IAudioService;
    :cond_b
    :goto_b
    return v2

    .line 4243
    :catch_c
    move-exception v0

    .line 4244
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Error in BackgroundMusicService (stop)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public stopBluetoothSco()V
    .registers 5

    .prologue
    .line 1964
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1966
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1970
    :goto_9
    return-void

    .line 1967
    :catch_a
    move-exception v0

    .line 1968
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in stopBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public unloadSoundEffects()V
    .registers 6

    .prologue
    .line 2989
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2991
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2995
    :goto_7
    return-void

    .line 2992
    :catch_8
    move-exception v0

    .line 2993
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unloadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 3176
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3177
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    monitor-exit v1

    .line 3179
    return-void

    .line 3178
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 6
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .prologue
    .line 3635
    if-nez p1, :cond_a

    .line 3636
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioPolicy argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3638
    :cond_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3640
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_e
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->token()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 3644
    :goto_15
    return-void

    .line 3641
    :catch_16
    move-exception v0

    .line 3642
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in unregisterAudioPolicyAsync()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .registers 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .prologue
    .line 4527
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 4528
    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3403
    if-nez p1, :cond_3

    .line 3407
    :goto_2
    return-void

    .line 3406
    :cond_3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3373
    if-nez p1, :cond_4

    .line 3393
    :goto_3
    return-void

    .line 3377
    :cond_4
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 3379
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_8
    iget-object v4, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.together"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3380
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->setTogether(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_2e

    .line 3387
    :cond_1a
    :goto_1a
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3389
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3390
    iget-object v4, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3392
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 3382
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catch_2e
    move-exception v0

    .line 3383
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v5, "Dead object in unregisterMediaButtonEventReceiver"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 3413
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 3414
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->removeMediaButtonListener(Landroid/app/PendingIntent;)V

    .line 3415
    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 3
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3442
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3446
    :cond_8
    :goto_8
    return-void

    .line 3445
    :cond_9
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    goto :goto_8
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 7
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 3543
    if-nez p1, :cond_3

    .line 3552
    :goto_2
    return-void

    .line 3546
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3548
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 3549
    :catch_b
    move-exception v0

    .line 3550
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public unregisterRemoteController(Landroid/media/RemoteController;)V
    .registers 2
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3493
    if-nez p1, :cond_3

    .line 3497
    :goto_2
    return-void

    .line 3496
    :cond_3
    invoke-virtual {p1}, Landroid/media/RemoteController;->stopListeningToSessions()V

    goto :goto_2
.end method

.method updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p2, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v9, 0x0

    .line 4549
    iget-object v10, p0, Landroid/media/AudioManager;->mAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v10

    .line 4551
    :try_start_4
    iget-object v8, p0, Landroid/media/AudioManager;->mAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_105

    .line 4552
    const/4 v8, 0x1

    new-array v4, v8, [I

    .line 4553
    .local v4, "patchGeneration":[I
    const/4 v8, 0x1

    new-array v6, v8, [I

    .line 4555
    .local v6, "portGeneration":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4556
    .local v3, "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4559
    .local v2, "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4560
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v7

    .line 4561
    .local v7, "status":I
    if-eqz v7, :cond_27

    .line 4562
    monitor-exit v10

    .line 4609
    .end local v2    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v3    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v4    # "patchGeneration":[I
    .end local v6    # "portGeneration":[I
    .end local v7    # "status":I
    :goto_26
    return v7

    .line 4564
    .restart local v2    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .restart local v3    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .restart local v4    # "patchGeneration":[I
    .restart local v6    # "portGeneration":[I
    .restart local v7    # "status":I
    :cond_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4565
    invoke-static {v2, v4}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v7

    .line 4566
    if-eqz v7, :cond_35

    .line 4567
    monitor-exit v10

    goto :goto_26

    .line 4608
    .end local v2    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v3    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v4    # "patchGeneration":[I
    .end local v6    # "portGeneration":[I
    .end local v7    # "status":I
    :catchall_32
    move-exception v8

    monitor-exit v10
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v8

    .line 4569
    .restart local v2    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .restart local v3    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .restart local v4    # "patchGeneration":[I
    .restart local v6    # "portGeneration":[I
    .restart local v7    # "status":I
    :cond_35
    const/4 v8, 0x0

    :try_start_36
    aget v8, v4, v8

    const/4 v11, 0x0

    aget v11, v6, v11

    if-ne v8, v11, :cond_1c

    .line 4571
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_f8

    .line 4572
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_45
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_9c

    .line 4573
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {p0, v8, v3}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v5

    .line 4575
    .local v5, "portCfg":Landroid/media/AudioPortConfig;
    if-nez v5, :cond_8d

    .line 4576
    sget-object v8, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "portCfg for (newPatches "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", sources "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    :cond_8d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v8

    aput-object v5, v8, v1

    .line 4572
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 4583
    .end local v5    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_9c
    const/4 v1, 0x0

    :goto_9d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_f4

    .line 4584
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {p0, v8, v3}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v5

    .line 4586
    .restart local v5    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v5, :cond_e5

    .line 4587
    sget-object v8, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "portCfg for (newPatches "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", sinks "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4592
    :cond_e5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v8

    aput-object v5, v8, v1

    .line 4583
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 4571
    .end local v5    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_f4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e

    .line 4596
    .end local v1    # "j":I
    :cond_f8
    iput-object v3, p0, Landroid/media/AudioManager;->mAudioPortsCached:Ljava/util/ArrayList;

    .line 4597
    iput-object v2, p0, Landroid/media/AudioManager;->mAudioPatchesCached:Ljava/util/ArrayList;

    .line 4598
    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Landroid/media/AudioManager;->mAudioPortGeneration:Ljava/lang/Integer;

    .line 4600
    .end local v0    # "i":I
    .end local v2    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v3    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v4    # "patchGeneration":[I
    .end local v6    # "portGeneration":[I
    .end local v7    # "status":I
    :cond_105
    if-eqz p1, :cond_10f

    .line 4601
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4602
    iget-object v8, p0, Landroid/media/AudioManager;->mAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4604
    :cond_10f
    if-eqz p2, :cond_119

    .line 4605
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4606
    iget-object v8, p0, Landroid/media/AudioManager;->mAudioPatchesCached:Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4608
    :cond_119
    monitor-exit v10
    :try_end_11a
    .catchall {:try_start_36 .. :try_end_11a} :catchall_32

    move v7, v9

    .line 4609
    goto/16 :goto_26
.end method

.method updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;
    .registers 11
    .param p1, "portCfg"    # Landroid/media/AudioPortConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioPortConfig;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)",
            "Landroid/media/AudioPortConfig;"
        }
    .end annotation

    .prologue
    .line 4613
    .local p2, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    invoke-virtual {p1}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v3

    .line 4615
    .local v3, "port":Landroid/media/AudioPort;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_25

    .line 4618
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPort;

    invoke-virtual {v4}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 4619
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "port":Landroid/media/AudioPort;
    check-cast v3, Landroid/media/AudioPort;

    .line 4623
    .restart local v3    # "port":Landroid/media/AudioPort;
    :cond_25
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_51

    .line 4625
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePortConfig port not found for handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioHandle;->id()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    const/4 v4, 0x0

    .line 4636
    :goto_4d
    return-object v4

    .line 4615
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4628
    :cond_51
    invoke-virtual {p1}, Landroid/media/AudioPortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object v1

    .line 4629
    .local v1, "gainCfg":Landroid/media/AudioGainConfig;
    if-eqz v1, :cond_73

    .line 4630
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->index()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioPort;->gain(I)Landroid/media/AudioGain;

    move-result-object v0

    .line 4631
    .local v0, "gain":Landroid/media/AudioGain;
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->mode()I

    move-result v4

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->channelMask()I

    move-result v5

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->values()[I

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->rampDurationMs()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v1

    .line 4636
    .end local v0    # "gain":Landroid/media/AudioGain;
    :cond_73
    invoke-virtual {p1}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/AudioPortConfig;->format()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/media/AudioPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;

    move-result-object v4

    goto :goto_4d
.end method
