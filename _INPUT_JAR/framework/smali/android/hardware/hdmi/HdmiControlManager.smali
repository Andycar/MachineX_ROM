.class public final Landroid/hardware/hdmi/HdmiControlManager;
.super Ljava/lang/Object;
.source "HdmiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_OSD_MESSAGE:Ljava/lang/String; = "android.hardware.hdmi.action.OSD_MESSAGE"

.field public static final AVR_VOLUME_MUTED:I = 0x65

.field public static final CLEAR_TIMER_STATUS_CEC_DISABLE:I = 0xa2

.field public static final CLEAR_TIMER_STATUS_CHECK_RECORDER_CONNECTION:I = 0xa0

.field public static final CLEAR_TIMER_STATUS_FAIL_TO_CLEAR_SELECTED_SOURCE:I = 0xa1

.field public static final CLEAR_TIMER_STATUS_TIMER_CLEARED:I = 0x80

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_INFO_AVAILABLE:I = 0x2

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_MATCHING:I = 0x1

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_RECORDING:I = 0x0

.field public static final DEVICE_EVENT_ADD_DEVICE:I = 0x1

.field public static final DEVICE_EVENT_REMOVE_DEVICE:I = 0x2

.field public static final DEVICE_EVENT_UPDATE_DEVICE:I = 0x3

.field public static final EXTRA_MESSAGE_EXTRAM_PARAM1:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_ID"

.field public static final ONE_TOUCH_RECORD_ALREADY_RECORDING:I = 0x12

.field public static final ONE_TOUCH_RECORD_CEC_DISABLED:I = 0x33

.field public static final ONE_TOUCH_RECORD_CHECK_RECORDER_CONNECTION:I = 0x31

.field public static final ONE_TOUCH_RECORD_DISALLOW_TO_COPY:I = 0xd

.field public static final ONE_TOUCH_RECORD_DISALLOW_TO_FUTHER_COPIES:I = 0xe

.field public static final ONE_TOUCH_RECORD_FAIL_TO_RECORD_DISPLAYED_SCREEN:I = 0x32

.field public static final ONE_TOUCH_RECORD_INVALID_EXTERNAL_PHYSICAL_ADDRESS:I = 0xa

.field public static final ONE_TOUCH_RECORD_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x9

.field public static final ONE_TOUCH_RECORD_MEDIA_PROBLEM:I = 0x15

.field public static final ONE_TOUCH_RECORD_MEDIA_PROTECTED:I = 0x13

.field public static final ONE_TOUCH_RECORD_NOT_ENOUGH_SPACE:I = 0x16

.field public static final ONE_TOUCH_RECORD_NO_MEDIA:I = 0x10

.field public static final ONE_TOUCH_RECORD_NO_OR_INSUFFICIENT_CA_ENTITLEMENTS:I = 0xc

.field public static final ONE_TOUCH_RECORD_NO_SOURCE_SIGNAL:I = 0x14

.field public static final ONE_TOUCH_RECORD_OTHER_REASON:I = 0x1f

.field public static final ONE_TOUCH_RECORD_PARENT_LOCK_ON:I = 0x17

.field public static final ONE_TOUCH_RECORD_PLAYING:I = 0x11

.field public static final ONE_TOUCH_RECORD_PREVIOUS_RECORDING_IN_PROGRESS:I = 0x30

.field public static final ONE_TOUCH_RECORD_RECORDING_ALREADY_TERMINATED:I = 0x1b

.field public static final ONE_TOUCH_RECORD_RECORDING_ANALOGUE_SERVICE:I = 0x3

.field public static final ONE_TOUCH_RECORD_RECORDING_CURRENTLY_SELECTED_SOURCE:I = 0x1

.field public static final ONE_TOUCH_RECORD_RECORDING_DIGITAL_SERVICE:I = 0x2

.field public static final ONE_TOUCH_RECORD_RECORDING_EXTERNAL_INPUT:I = 0x4

.field public static final ONE_TOUCH_RECORD_RECORDING_TERMINATED_NORMALLY:I = 0x1a

.field public static final ONE_TOUCH_RECORD_UNABLE_ANALOGUE_SERVICE:I = 0x6

.field public static final ONE_TOUCH_RECORD_UNABLE_DIGITAL_SERVICE:I = 0x5

.field public static final ONE_TOUCH_RECORD_UNABLE_SELECTED_SERVICE:I = 0x7

.field public static final ONE_TOUCH_RECORD_UNSUPPORTED_CA:I = 0xb

.field public static final OSD_MESSAGE_ARC_CONNECTED_INVALID_PORT:I = 0x1

.field public static final OSD_MESSAGE_AVR_VOLUME_CHANGED:I = 0x2

.field public static final POWER_STATUS_ON:I = 0x0

.field public static final POWER_STATUS_STANDBY:I = 0x1

.field public static final POWER_STATUS_TRANSIENT_TO_ON:I = 0x2

.field public static final POWER_STATUS_TRANSIENT_TO_STANDBY:I = 0x3

.field public static final POWER_STATUS_UNKNOWN:I = -0x1

.field public static final RESULT_ALREADY_IN_PROGRESS:I = 0x4

.field public static final RESULT_COMMUNICATION_FAILED:I = 0x7

.field public static final RESULT_EXCEPTION:I = 0x5

.field public static final RESULT_INCORRECT_MODE:I = 0x6

.field public static final RESULT_SOURCE_NOT_AVAILABLE:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_TARGET_NOT_AVAILABLE:I = 0x3

.field public static final RESULT_TIMEOUT:I = 0x1

.field public static final TIMER_RECORDING_RESULT_EXTRA_CEC_DISABLED:I = 0x3

.field public static final TIMER_RECORDING_RESULT_EXTRA_CHECK_RECORDER_CONNECTION:I = 0x1

.field public static final TIMER_RECORDING_RESULT_EXTRA_FAIL_TO_RECORD_SELECTED_SOURCE:I = 0x2

.field public static final TIMER_RECORDING_RESULT_EXTRA_NO_ERROR:I = 0x0

.field public static final TIMER_RECORDING_TYPE_ANALOGUE:I = 0x2

.field public static final TIMER_RECORDING_TYPE_DIGITAL:I = 0x1

.field public static final TIMER_RECORDING_TYPE_EXTERNAL:I = 0x3

.field public static final TIMER_STATUS_MEDIA_INFO_NOT_PRESENT:I = 0x2

.field public static final TIMER_STATUS_MEDIA_INFO_PRESENT_NOT_PROTECTED:I = 0x0

.field public static final TIMER_STATUS_MEDIA_INFO_PRESENT_PROTECTED:I = 0x1

.field public static final TIMER_STATUS_NOT_PROGRAMMED_CA_NOT_SUPPORTED:I = 0x6

.field public static final TIMER_STATUS_NOT_PROGRAMMED_CLOCK_FAILURE:I = 0xa

.field public static final TIMER_STATUS_NOT_PROGRAMMED_DATE_OUT_OF_RANGE:I = 0x2

.field public static final TIMER_STATUS_NOT_PROGRAMMED_DUPLICATED:I = 0xe

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PHYSICAL_NUMBER:I = 0x5

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x4

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_SEQUENCE:I = 0x3

.field public static final TIMER_STATUS_NOT_PROGRAMMED_NO_CA_ENTITLEMENTS:I = 0x7

.field public static final TIMER_STATUS_NOT_PROGRAMMED_NO_FREE_TIME:I = 0x1

.field public static final TIMER_STATUS_NOT_PROGRAMMED_PARENTAL_LOCK_ON:I = 0x9

.field public static final TIMER_STATUS_NOT_PROGRAMMED_UNSUPPORTED_RESOLUTION:I = 0x8

.field public static final TIMER_STATUS_PROGRAMMED_INFO_ENOUGH_SPACE:I = 0x8

.field public static final TIMER_STATUS_PROGRAMMED_INFO_MIGHT_NOT_ENOUGH_SPACE:I = 0xb

.field public static final TIMER_STATUS_PROGRAMMED_INFO_NOT_ENOUGH_SPACE:I = 0x9

.field public static final TIMER_STATUS_PROGRAMMED_INFO_NO_MEDIA_INFO:I = 0xa


# instance fields
.field private final mHasPlaybackDevice:Z

.field private final mHasTvDevice:Z

.field private final mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 4
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "types":[I
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v1, :cond_10

    .line 255
    :try_start_a
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1}, Landroid/hardware/hdmi/IHdmiControlService;->getSupportedTypes()[I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_1f

    move-result-object v0

    .line 260
    :cond_10
    :goto_10
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    .line 261
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    .line 262
    return-void

    .line 256
    :catch_1f
    move-exception v1

    goto :goto_10
.end method

.method private getHotplugEventListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .prologue
    .line 387
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$1;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V

    return-object v0
.end method

.method private static hasDeviceType([II)Z
    .registers 7
    .param p0, "types"    # [I
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 265
    if-nez p0, :cond_4

    .line 273
    :cond_3
    :goto_3
    return v4

    .line 268
    :cond_4
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 269
    .local v3, "t":I
    if-ne v3, p1, :cond_f

    .line 270
    const/4 v4, 0x1

    goto :goto_3

    .line 268
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method


# virtual methods
.method public addHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .prologue
    .line 359
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-nez v0, :cond_5

    .line 367
    :goto_4
    return-void

    .line 363
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->getHotplugEventListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_4

    .line 364
    :catch_f
    move-exception v0

    goto :goto_4
.end method

.method public getClient(I)Landroid/hardware/hdmi/HdmiClient;
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-nez v1, :cond_6

    .line 295
    :cond_5
    :goto_5
    return-object v0

    .line 289
    :cond_6
    sparse-switch p1, :sswitch_data_22

    goto :goto_5

    .line 291
    :sswitch_a
    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    if-eqz v1, :cond_5

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    goto :goto_5

    .line 293
    :sswitch_16
    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    if-eqz v1, :cond_5

    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    goto :goto_5

    .line 289
    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_a
        0x4 -> :sswitch_16
    .end sparse-switch
.end method

.method public getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;
    .registers 2

    .prologue
    .line 310
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    return-object v0
.end method

.method public getTvClient()Landroid/hardware/hdmi/HdmiTvClient;
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method public removeHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .prologue
    .line 375
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-nez v0, :cond_5

    .line 383
    :goto_4
    return-void

    .line 379
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->getHotplugEventListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_4

    .line 380
    :catch_f
    move-exception v0

    goto :goto_4
.end method
