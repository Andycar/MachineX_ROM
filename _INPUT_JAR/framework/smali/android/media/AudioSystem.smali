.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final ALL_CALL_STATES_KEY:Ljava/lang/String; = "all_call_states"

.field public static final AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final AUDIO_STATUS_STOP_RECORDING:I = 0xc8

.field public static final BAD_VALUE:I = -0x2

.field public static final CALL_ACTIVE:I = 0x2

.field public static final CALL_HOLD:I = 0x3

.field public static final CALL_INACTIVE:I = 0x1

.field public static final CALL_LOCAL_HOLD:I = 0x4

.field public static final CALL_STATE_KEY:Ljava/lang/String; = "call_state"

.field public static final DEAD_OBJECT:I = -0x6

.field public static final DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER:I = 0x2c0002

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL:I = -0x3e000001

.field public static final DEVICE_IN_ALL_SCO:I = -0x7ffffff8

.field public static final DEVICE_IN_ALL_USB:I = -0x7fffe800

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_EXTERNAL_MIC:I = -0x7fe00000

.field public static final DEVICE_IN_EXTERNAL_TMS:I = -0x7ff00000

.field public static final DEVICE_IN_FM:I = -0x7fffe000

.field public static final DEVICE_IN_FM_RX:I = -0x7f800000

.field public static final DEVICE_IN_FM_RX_A2DP:I = -0x7f000000

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_PROXY:I = -0x7fc00000

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_THIRD_MIC:I = -0x7ff80000

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ACPU:I = 0x4000000

.field public static final DEVICE_OUT_ALL:I = 0x4fbfffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO:I = 0x2c0000

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x6000

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_EXTERNAL_TMS:I = 0x1000000

.field public static final DEVICE_OUT_EXTERNAL_TMS_NAME:Ljava/lang/String; = "external_tms"

.field public static final DEVICE_OUT_EXTERNAL_WIFI:I = 0x800000

.field public static final DEVICE_OUT_EXTERNAL_WIFI_NAME:Ljava/lang/String; = "external_wifi"

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final DEVICE_OUT_FM_TX:I = 0x8000000

.field public static final DEVICE_OUT_FM_TX_NAME:Ljava/lang/String; = "fm_tx"

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hmdi_arc"

.field public static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_OUT_PROXY:I = 0x2000000

.field public static final DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final FORCE_2MIC:I = 0xd

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_FMRADIO:I = 0x6

.field public static final FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_SYSTEM:I = 0x4

.field public static final IMS_VSID:J = 0x10c02000L

.field public static final INVALID_OPERATION:I = -0x3

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_IN_VIDEOCALL:I = 0x4

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NO_INIT:I = -0x5

.field private static final NUM_DEVICE_STATES:I = 0x1

.field private static final NUM_FORCE_CONFIG:I = 0xe

.field private static final NUM_FORCE_USE:I = 0x7

.field public static final NUM_MODES:I = 0x5

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xe

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

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

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEFAULT:I = -0x1

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

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field public static final VOICE2_VSID:J = 0x10dc1000L

.field public static final VOICE_VSID:J = 0x10c01000L

.field public static final VSID_KEY:Ljava/lang/String; = "vsid"

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method public static native checkAudioFlinger()I
.end method

.method public static native createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method private static errorCallbackFromNative(I)V
    .registers 4
    .param p0, "error"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    const-class v2, Landroid/media/AudioSystem;

    monitor-enter v2

    .line 258
    :try_start_4
    sget-object v1, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz v1, :cond_a

    .line 259
    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 261
    :cond_a
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 262
    if-eqz v0, :cond_10

    .line 263
    invoke-interface {v0, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 265
    :cond_10
    return-void

    .line 261
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static native getAudioHwSyncForSession(I)I
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static final getNumStreamTypes()I
    .registers 1

    .prologue
    .line 76
    const/16 v0, 0xe

    return v0
.end method

.method public static getOutputDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "device"    # I

    .prologue
    .line 487
    sparse-switch p0, :sswitch_data_5c

    .line 544
    const-string v0, ""

    :goto_5
    return-object v0

    .line 489
    :sswitch_6
    const-string v0, "earpiece"

    goto :goto_5

    .line 491
    :sswitch_9
    const-string/jumbo v0, "speaker"

    goto :goto_5

    .line 493
    :sswitch_d
    const-string v0, "headset"

    goto :goto_5

    .line 495
    :sswitch_10
    const-string v0, "headphone"

    goto :goto_5

    .line 497
    :sswitch_13
    const-string v0, "bt_sco"

    goto :goto_5

    .line 499
    :sswitch_16
    const-string v0, "bt_sco_hs"

    goto :goto_5

    .line 501
    :sswitch_19
    const-string v0, "bt_sco_carkit"

    goto :goto_5

    .line 503
    :sswitch_1c
    const-string v0, "bt_a2dp"

    goto :goto_5

    .line 505
    :sswitch_1f
    const-string v0, "bt_a2dp_hp"

    goto :goto_5

    .line 507
    :sswitch_22
    const-string v0, "bt_a2dp_spk"

    goto :goto_5

    .line 509
    :sswitch_25
    const-string v0, "hdmi"

    goto :goto_5

    .line 511
    :sswitch_28
    const-string v0, "analog_dock"

    goto :goto_5

    .line 513
    :sswitch_2b
    const-string v0, "digital_dock"

    goto :goto_5

    .line 515
    :sswitch_2e
    const-string/jumbo v0, "usb_accessory"

    goto :goto_5

    .line 517
    :sswitch_32
    const-string/jumbo v0, "usb_device"

    goto :goto_5

    .line 519
    :sswitch_36
    const-string/jumbo v0, "remote_submix"

    goto :goto_5

    .line 521
    :sswitch_3a
    const-string/jumbo v0, "telephony_tx"

    goto :goto_5

    .line 523
    :sswitch_3e
    const-string v0, "line"

    goto :goto_5

    .line 525
    :sswitch_41
    const-string v0, "hmdi_arc"

    goto :goto_5

    .line 527
    :sswitch_44
    const-string/jumbo v0, "spdif"

    goto :goto_5

    .line 529
    :sswitch_48
    const-string v0, "fm_transmitter"

    goto :goto_5

    .line 531
    :sswitch_4b
    const-string v0, "aux_line"

    goto :goto_5

    .line 534
    :sswitch_4e
    const-string v0, "external_wifi"

    goto :goto_5

    .line 536
    :sswitch_51
    const-string v0, "external_tms"

    goto :goto_5

    .line 538
    :sswitch_54
    const-string v0, "fm_tx"

    goto :goto_5

    .line 540
    :sswitch_57
    const-string/jumbo v0, "proxy"

    goto :goto_5

    .line 487
    nop

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x4 -> :sswitch_d
        0x8 -> :sswitch_10
        0x10 -> :sswitch_13
        0x20 -> :sswitch_16
        0x40 -> :sswitch_19
        0x80 -> :sswitch_1c
        0x100 -> :sswitch_1f
        0x200 -> :sswitch_22
        0x400 -> :sswitch_25
        0x800 -> :sswitch_28
        0x1000 -> :sswitch_2b
        0x2000 -> :sswitch_2e
        0x4000 -> :sswitch_32
        0x8000 -> :sswitch_36
        0x10000 -> :sswitch_3a
        0x20000 -> :sswitch_3e
        0x40000 -> :sswitch_41
        0x80000 -> :sswitch_44
        0x100000 -> :sswitch_48
        0x200000 -> :sswitch_4b
        0x800000 -> :sswitch_4e
        0x1000000 -> :sswitch_51
        0x2000000 -> :sswitch_57
        0x8000000 -> :sswitch_54
    .end sparse-switch
.end method

.method public static native getOutputLatency(I)I
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMediaServerStarted()Z
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native isStreamActiveRemotely(II)Z
.end method

.method public static native listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native muteMicrophone(Z)I
.end method

.method public static native newAudioSessionId()I
.end method

.method public static native releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static native setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;)I
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .registers 3
    .param p0, "cb"    # Landroid/media/AudioSystem$ErrorCallback;

    .prologue
    .line 239
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 240
    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 241
    if-eqz p0, :cond_e

    .line 242
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 244
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 250
    invoke-static {}, Landroid/media/AudioSystem;->isMediaServerStarted()Z

    .line 252
    return-void

    .line 244
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setLowRamDevice(Z)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static native setStreamVolumeIndex(III)I
.end method
