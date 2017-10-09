.class public Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# static fields
.field public static ACTION_BOOT_COMPLETED:Ljava/lang/String;

.field public static ACTION_SHARING_COMPLETE:Ljava/lang/String;

.field private static final ATT:Z

.field public static INTENT_NOTIFICATION_ACTION:Ljava/lang/String;

.field public static INTENT_NOTIFICATION_START_SREVICE_ACTION:Ljava/lang/String;

.field public static INTENT_NOTIFICATION_STOP_SREVICE_ACTION:Ljava/lang/String;

.field private static final SPR:Z

.field public static TIME_VALUE_DEFAULT:I

.field private static final TMO:Z

.field private static final USCC:Z

.field private static final VZW:Z

.field private static excludeAppArray:[Ljava/lang/String;

.field public static includeAppStrings:Ljava/lang/String;

.field private static final sProductName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->ACTION_BOOT_COMPLETED:Ljava/lang/String;

    .line 8
    const-string v0, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->ACTION_SHARING_COMPLETE:Ljava/lang/String;

    .line 9
    const-string v0, "accessibility_settings_notification_reminder_start"

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_START_SREVICE_ACTION:Ljava/lang/String;

    .line 10
    const-string v0, "accessibility_settings_notification_reminder_stop"

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_STOP_SREVICE_ACTION:Ljava/lang/String;

    .line 11
    const-string v0, "com.android.settings.notificationreminder.alaram_action"

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_ACTION:Ljava/lang/String;

    .line 13
    const/16 v0, 0x12c

    sput v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->TIME_VALUE_DEFAULT:I

    .line 15
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->VZW:Z

    .line 19
    sget-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "att"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "uc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->ATT:Z

    .line 20
    sget-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "spr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "sprsports"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "refreshspr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->SPR:Z

    .line 21
    sget-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "tmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->TMO:Z

    .line 22
    sget-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "usc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->USCC:Z

    .line 33
    const-string v0, "com.android.phone;"

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    .line 35
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.samsung.android.app.watchmanager"

    aput-object v3, v0, v1

    const-string v1, "com.samsung.android.hostmanager"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.app.watchmanager"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.wms"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.keystringscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.development"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.quickmemo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.popupcalculator"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.android.app.clockpackage"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.sec.android.app.shealth"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.samsung.android.snote"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.sec.android.app.translator"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.vlingo.midas"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "tv.peel.smartremote"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.sec.android.app.voicerecorder"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.sds.mobiledesk"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.sec.android.wallet"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.sec.android.widgetapp.ap.hero.accuweather"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.samsung.android.app.memo"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "jp.co.nttdocomo.carriermail"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.kddi.disasterapp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->excludeAppArray:[Ljava/lang/String;

    return-void

    :cond_2
    move v0, v1

    .line 19
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 20
    goto/16 :goto_1
.end method

.method public static Contain(Ljava/lang/String;)Z
    .locals 2
    .param p0, "package_name"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->excludeAppArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 101
    sget-object v1, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->excludeAppArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x1

    .line 105
    :goto_1
    return v1

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isPersistantAlert()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->SPR:Z

    return v0
.end method
