.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGING:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGING"

.field public static final ACTION_SEC_POWER_SAVE_MODE_ENABLED:Ljava/lang/String; = "com.android.server.PowerManagerService.action.SEC_POWER_SAVE_MODE_ENABLED"

.field public static final BRIGHTNESS_DEFAULT:I = -0x1

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff

.field public static final BUTTON_KEY_LIGHT:Ljava/lang/String; = "button_key_light"

.field public static final BUTTON_KEY_LIGHT_ALWAYS_ON:I = -0x1

.field public static final BUTTON_KEY_LIGHT_OFF:I = 0x0

.field public static final BUTTON_KEY_LIGHT_ON_1500:I = 0x5dc

.field public static final BUTTON_KEY_LIGHT_ON_3000:I = 0xbb8

.field public static final BUTTON_KEY_LIGHT_ON_6000:I = 0x1770

.field public static final BUTTON_KEY_LIGHT_ON_AT_NIGHT:I = -0x3

.field public static final BUTTON_KEY_LIGHT_ON_IF_DARK:I = -0x2

.field public static final DOZE_WAKE_LOCK:I = 0x40

.field public static final EXTRA_POWER_SAVE_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_POWER_SAVE_MODE:Ljava/lang/String; = "mode"

.field public static final FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final GO_TO_SLEEP_REASON_PROXIMITY:I = 0x6

.field public static final GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final USER_ACTIVITY_EVENT_BUTTON:I = 0x1

.field public static final USER_ACTIVITY_EVENT_BUTTON_TOUCH:I = 0x3

.field public static final USER_ACTIVITY_EVENT_OTHER:I = 0x0

.field public static final USER_ACTIVITY_EVENT_TOUCH:I = 0x2

.field public static final USER_ACTIVITY_FLAG_INDIRECT:I = 0x2

.field public static final USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1

.field public static final WAIT_FOR_DISTANT_PROXIMITY:I = 0x1

.field public static final WAKE_LOCK_LEVEL_MASK:I = 0xffff

.field public static final WAKE_UP_REASON_APPLICATION_WINDOW_MANAGER_TURN_ON_FLAG:I = 0xb

.field public static final WAKE_UP_REASON_CAMERA_LENS_COVER:I = 0x3

.field public static final WAKE_UP_REASON_COVER_OPEN:I = 0x6

.field public static final WAKE_UP_REASON_DOCK:I = 0x9

.field public static final WAKE_UP_REASON_DREAM:I = 0x8

.field public static final WAKE_UP_REASON_GESTURE:I = 0x7

.field public static final WAKE_UP_REASON_HDMI:I = 0xa

.field public static final WAKE_UP_REASON_KEY:I = 0x1

.field public static final WAKE_UP_REASON_LID_SWITCH:I = 0x5

.field public static final WAKE_UP_REASON_MOTION:I = 0x2

.field public static final WAKE_UP_REASON_SPEN:I = 0x4

.field public static final WAKE_UP_REASON_UNKNOWN:I


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mPattern:Ljava/util/regex/Pattern;

.field final mService:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPowerManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroid/os/PowerManager;->mPattern:Ljava/util/regex/Pattern;

    .line 467
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 468
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 469
    iput-object p3, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 470
    return-void
.end method

.method static synthetic access$000(Landroid/os/PowerManager;)Ljava/util/regex/Pattern;
    .registers 2
    .param p0, "x0"    # Landroid/os/PowerManager;

    .prologue
    .line 108
    iget-object v0, p0, Landroid/os/PowerManager;->mPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static useScreenAutoBrightnessAdjustmentFeature()Z
    .registers 2

    .prologue
    .line 513
    const-string/jumbo v0, "persist.power.useautobrightadj"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useTwilightAdjustmentFeature()Z
    .registers 2

    .prologue
    .line 522
    const-string/jumbo v0, "persist.power.usetwilightadj"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static validateWakeLockParameters(ILjava/lang/String;)V
    .registers 4
    .param p0, "levelAndFlags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 602
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_1a

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :sswitch_f
    if-nez p1, :cond_19

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_19
    return-void

    .line 602
    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_f
        0x6 -> :sswitch_f
        0xa -> :sswitch_f
        0x1a -> :sswitch_f
        0x20 -> :sswitch_f
        0x40 -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public forceDisableWakeLock(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 539
    :goto_5
    return-void

    .line 537
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getCurrentBrightness(Z)F
    .registers 4
    .param p1, "ratio"    # Z

    .prologue
    .line 1083
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->getCurrentBrightness(Z)F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1085
    :goto_6
    return v1

    .line 1084
    :catch_7
    move-exception v0

    .line 1085
    .local v0, "e":Landroid/os/RemoteException;
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_6
.end method

.method public getDefaultScreenBrightnessSetting()I
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaximumScreenBrightnessSetting()I
    .registers 3

    .prologue
    .line 492
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumScreenBrightnessSetting()I
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public goToSleep(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 705
    return-void
.end method

.method public goToSleep(JII)V
    .registers 6
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 730
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 733
    :goto_5
    return-void

    .line 731
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public isInteractive()Z
    .registers 3

    .prologue
    .line 879
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 881
    :goto_6
    return v1

    .line 880
    :catch_7
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isPowerSaveMode()Z
    .registers 3

    .prologue
    .line 911
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isPowerSaveMode()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 913
    :goto_6
    return v1

    .line 912
    :catch_7
    move-exception v0

    .line 913
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isScreenOn()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public isWakeLockLevelSupported(I)Z
    .registers 4
    .param p1, "level"    # I

    .prologue
    .line 815
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 817
    :goto_6
    return v1

    .line 816
    :catch_7
    move-exception v0

    .line 817
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public nap(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 784
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 787
    :goto_5
    return-void

    .line 785
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 5
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 597
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public preventAutoPowerOff(IZ)V
    .registers 4
    .param p1, "who"    # I
    .param p2, "bPrevent"    # Z

    .prologue
    .line 1119
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->preventAutoPowerOff(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1122
    :goto_5
    return-void

    .line 1120
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 896
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 899
    :goto_7
    return-void

    .line 897
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public resetAutoPowerOffTimer()V
    .registers 2

    .prologue
    .line 1101
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->resetAutoPowerOffTimer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1104
    :goto_5
    return-void

    .line 1102
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setAutoBrightnessForEbookOnly(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1031
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAutoBrightnessForEbookOnly(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1034
    :goto_5
    return-void

    .line 1032
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setAutoBrightnessLimit(II)V
    .registers 4
    .param p1, "lowerLimit"    # I
    .param p2, "upperLimit"    # I

    .prologue
    .line 1049
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1053
    :goto_5
    return-void

    .line 1050
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setBacklightBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I

    .prologue
    .line 802
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 805
    :goto_5
    return-void

    .line 803
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setButtonBrightnessLimit(I)V
    .registers 3
    .param p1, "brightness"    # I

    .prologue
    .line 963
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setButtonBrightnessLimit(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 966
    :goto_5
    return-void

    .line 964
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setKeyboardVisibility(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 946
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setKeyboardVisibility(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 949
    :goto_5
    return-void

    .line 947
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMasterBrightnessLimit(II)V
    .registers 4
    .param p1, "reserved"    # I
    .param p2, "upperLimit"    # I

    .prologue
    .line 1066
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setMasterBrightnessLimit(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1069
    :goto_5
    return-void

    .line 1067
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPowerSaveMode(Z)Z
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    .line 928
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setPowerSaveMode(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 930
    :goto_6
    return v1

    .line 929
    :catch_7
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRatioOfAutoBrightness(I)V
    .registers 3
    .param p1, "ratioValue"    # I

    .prologue
    .line 1013
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setRatioOfAutoBrightness(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1016
    :goto_5
    return-void

    .line 1014
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setSystemPowerSaveMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1137
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setSystemPowerSaveMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1140
    :goto_5
    return-void

    .line 1138
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public switchForceLcdBacklightOffState()V
    .registers 2

    .prologue
    .line 1172
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->switchForceLcdBacklightOffState()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1175
    :goto_5
    return-void

    .line 1173
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public updateCoverState(Z)V
    .registers 3
    .param p1, "closed"    # Z

    .prologue
    .line 1154
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->updateCoverState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1157
    :goto_5
    return-void

    .line 1155
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public userActivity(JII)V
    .registers 6
    .param p1, "when"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 678
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->userActivity(JII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 681
    :goto_5
    return-void

    .line 679
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public userActivity(JZ)V
    .registers 7
    .param p1, "when"    # J
    .param p3, "noChangeLights"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 647
    if-eqz p3, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 649
    return-void

    :cond_8
    move v0, v1

    .line 647
    goto :goto_4
.end method

.method public wakeUp(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 759
    :goto_5
    return-void

    .line 757
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public wakeUp(JI)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "reason"    # I

    .prologue
    .line 1261
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->wakeUpWithReason(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1264
    :goto_5
    return-void

    .line 1262
    :catch_6
    move-exception v0

    goto :goto_5
.end method
