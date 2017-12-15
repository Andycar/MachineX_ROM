.class public Landroid/os/PersonaManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersonaManager$1;,
        Landroid/os/PersonaManager$StateManager;,
        Landroid/os/PersonaManager$KnoxContainerVersion;,
        Landroid/os/PersonaManager$AppType;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final ACCESS_TYPE_SDCARD:Ljava/lang/String; = "sdcard"

.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field public static final BRIDGE_COMPONENT1:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

.field public static final BRIDGE_COMPONENT2:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity2"

.field public static final BRIDGE_PKG:Ljava/lang/String; = "com.sec.knox.bridge"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final CONTAINER_COM_TYPE:I = 0x3

.field public static final CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final CONTAINER_LWC_TYPE:I = 0x2

.field public static DEFAULT_KNOX_NAME:Ljava/lang/String; = null

.field public static final DEFAULT_SDP_ACTIVATION_TIME:I = 0x0

.field public static final ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_CREATE_PERSONA_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field public static final FLAG_ADMIN_TYPE_APK:I = 0x10

.field public static final FLAG_ADMIN_TYPE_NONE:I = 0x40

.field public static final FLAG_ADMIN_TYPE_PACKAGENAME:I = 0x20

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_CREATOR_SELF_DESTROY:I = 0x8

.field public static final FLAG_ECRYPT_FILESYSTEM:I = 0x2

.field public static final FLAG_KIOSK_ENABLED:I = 0x400

.field public static final FLAG_LIGHT_WEIGHT_CONTAINER:I = 0x200

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_PURE_ENABLED:I = 0x800

.field public static final FLAG_TIMA_STORAGE:I = 0x4

.field public static final FLAG_USER_MANAGED_CONTAINER:I = 0x80

.field private static final GOOGLE_MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final INTENT_ACTION_LAUNCH_INFO:Ljava/lang/String; = "com.sec.knox.container.action.launchinfo"

.field public static final INTENT_ACTION_OBSERVER:Ljava/lang/String; = "com.sec.knox.container.action.observer"

.field public static final INTENT_ACTION_SDP_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

.field public static final INTENT_CATEGORY_OBSERVER_CONTAINERID:Ljava/lang/String; = "com.sec.knox.container.category.observer.containerid"

.field public static final INTENT_CATEGORY_OBSERVER_ONKEYGUARDSTATECHANGED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onkeyguardstatechanged"

.field public static final INTENT_CATEGORY_OBSERVER_ONPERSONASWITCH:Ljava/lang/String; = "com.sec.knox.container.category.observer.onpersonaswitch"

.field public static final INTENT_CATEGORY_OBSERVER_ONSESSIONEXPIRED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onsessionexpired"

.field public static final INTENT_CATEGORY_OBSERVER_ONSTATECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onstatechange"

.field public static final INTENT_CONTAINER_NEED_RESTART:Ljava/lang/String; = "com.sec.knox.container.need.restart"

.field public static final INTENT_EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final INTENT_EXTRA_OBSERVER_KEYGUARDSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.keyguardstate"

.field public static final INTENT_EXTRA_OBSERVER_NEWSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.newstate"

.field public static final INTENT_EXTRA_OBSERVER_PREVIOUSSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.previousstate"

.field public static final INTENT_EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final INTENT_EXTRA_SOURCE_SBA:I = 0x1

.field public static final INTENT_EXTRA_SOURCE_SBA_BLACKLIST:I = 0x2

.field public static final INTENT_EXTRA_SOURCE_WHITELIST:I = 0x0

.field public static final INTENT_PERMISSION_LAUNCH_INFO:Ljava/lang/String; = "com.samsung.container.LAUNCH_INFO"

.field public static final INTENT_PERMISSION_OBSERVER:Ljava/lang/String; = "com.samsung.container.OBSERVER"

.field private static final KNOX_SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent2"

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field public static final MAX_PERSONA_ID:I = 0xc8

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field public static final NOTIFICATION_LIST_FOR_KIOSK:Ljava/lang/String; = "Wifi;Location;SilentMode;AutoRotate;Bluetooth;SmartStay;PowerSaving;AirplaneMode;"

.field public static final PERMISSION_KEYGUARD_ACCESS:Ljava/lang/String; = "com.sec.knox.container.keyguard.ACCESS"

.field private static final PERSONAL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.switcher"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORDHINT_INDEX:I = 0x68

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static SECOND_KNOX_NAME:Ljava/lang/String; = null

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_VALIDATION_SUCCESS:I

.field private static mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

.field private static mKnoxInfo:Landroid/os/Bundle;

.field public static m_bIsKnoxInfoInitialized:Z

.field private static personaManager:Landroid/os/PersonaManager;

.field private static personaPolicyMgr:Landroid/os/PersonaPolicyManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 283
    const-string v0, "KNOX"

    sput-object v0, Landroid/os/PersonaManager;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    .line 289
    const-string v0, "KNOX II"

    sput-object v0, Landroid/os/PersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    .line 291
    sput-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 324
    const-string v0, "PersonaManager"

    sput-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    .line 328
    sput-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    .line 329
    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 330
    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 341
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.sec.knox.shortcutsms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.hearingadjust"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.knox.containeragent2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .line 354
    sput-boolean v3, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPersonaManager;

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    .line 359
    iput-object p1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    .line 360
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static containerExists(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1972
    const-string v4, "0"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1983
    :cond_9
    :goto_9
    return v3

    .line 1975
    :cond_a
    const-string v0, ":"

    .line 1976
    .local v0, "SEPARATOR":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1977
    .local v1, "arr":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_13
    array-length v4, v1

    if-ge v2, v4, :cond_9

    .line 1978
    aget-object v4, v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1979
    const/4 v3, 0x1

    goto :goto_9

    .line 1977
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1179
    if-nez p1, :cond_4

    .line 1180
    const/4 v3, 0x0

    .line 1211
    :cond_3
    :goto_3
    return-object v3

    .line 1183
    :cond_4
    const/4 v3, 0x0

    .line 1187
    .local v3, "ret":Landroid/os/Bundle;
    :try_start_5
    const-string v5, "RequestProxy"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1188
    const-string/jumbo v5, "rcp"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    .line 1190
    .local v2, "rcpm":Landroid/os/RCPManager;
    if-eqz v2, :cond_3

    .line 1191
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, p1}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_3

    .line 1194
    .end local v2    # "rcpm":Landroid/os/RCPManager;
    :cond_24
    const-string v5, "MoveTo"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1195
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_5a

    .line 1197
    .end local v3    # "ret":Landroid/os/Bundle;
    .local v4, "ret":Landroid/os/Bundle;
    :try_start_37
    new-instance v1, Landroid/content/Intent;

    const-string v5, "action.com.sec.knox.container.exchangeData"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1199
    const-string v5, "launchFromPersonaManager"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1200
    const-string v5, "com.sec.knox.bridge"

    const-string v6, "com.sec.knox.bridge.operations.ExchangeDataReceiver"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1204
    const-string/jumbo v5, "result"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_58} :catch_5f

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_3

    .line 1207
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_5a
    move-exception v0

    .line 1208
    .local v0, "e":Ljava/lang/Exception;
    :goto_5b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1207
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ret":Landroid/os/Bundle;
    .restart local v4    # "ret":Landroid/os/Bundle;
    :catch_5f
    move-exception v0

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_5b
.end method

.method public static getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;
    .registers 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 926
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 927
    .local v1, "mKnoxInfo":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 929
    .local v0, "containerVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    if-eqz v1, :cond_28

    .line 930
    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 931
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo returns 2.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_41

    .line 933
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 953
    :cond_28
    :goto_28
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxContainerVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-object v0

    .line 934
    :cond_41
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4d

    .line 935
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_28

    .line 936
    :cond_4d
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_59

    .line 937
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_28

    .line 938
    :cond_59
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_65

    .line 939
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_28

    .line 940
    :cond_65
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_71

    .line 941
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_28

    .line 942
    :cond_71
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_28

    .line 943
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_28

    .line 945
    :cond_7d
    const-string v2, "1.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 946
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo returns 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_28

    .line 949
    :cond_97
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_28
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .registers 6

    .prologue
    .line 857
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_3f

    .line 858
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 859
    :try_start_7
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_3e

    .line 860
    const/4 v1, 0x0

    .line 861
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_67

    .line 864
    :try_start_13
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 866
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 867
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 868
    const-string v1, "2.0"

    .line 873
    :cond_2d
    :goto_2d
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :goto_35
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportCallerInfo"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3e} :catch_58
    .catchall {:try_start_13 .. :try_end_3e} :catchall_67

    .line 884
    :cond_3e
    :goto_3e
    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_67

    .line 886
    :cond_3f
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 869
    :cond_42
    :try_start_42
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 870
    const-string v1, "1.0"

    goto :goto_2d

    .line 875
    :cond_4d
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_57} :catch_58
    .catchall {:try_start_42 .. :try_end_57} :catchall_67

    goto :goto_35

    .line 878
    :catch_58
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/Exception;
    :try_start_59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 881
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 884
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_67
    move-exception v2

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_67

    throw v2
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1098
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_7

    .line 1099
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 1103
    :cond_7
    :try_start_7
    const-string v1, "2.0"

    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1104
    const-string v1, "isSupportMoveTo"

    invoke-static {p0, v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_20

    .line 1110
    :cond_1d
    :goto_1d
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v1

    .line 1106
    :catch_20
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x64

    .line 1037
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 1038
    const/4 v1, 0x0

    .line 1040
    .local v1, "userid":I
    :try_start_6
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_d

    .line 1041
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 1044
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_bb

    move-result v1

    .line 1048
    :try_start_11
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    sget-boolean v2, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    if-nez v2, :cond_5a

    .line 1051
    if-lt v1, v6, :cond_47

    .line 1052
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxMode"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isBlockExternalSD"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isBlockBluetoothMenu"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSamsungAccountBlocked"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_47
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1059
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :goto_57
    const/4 v2, 0x1

    sput-boolean v2, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    .line 1068
    :cond_5a
    const-string/jumbo v2, "true"

    sget-object v4, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isKioskModeEnabled"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 1069
    const-string v2, "isSupportMoveTo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1070
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    invoke-static {p0, v2, v1}, Landroid/os/PersonaManager;->setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 1074
    :cond_78
    const-string v2, "isKnoxModeActive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1075
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-lt v2, v6, :cond_be

    .line 1076
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxModeActive"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_90
    :goto_90
    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1083
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 1084
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_a8} :catch_b6
    .catchall {:try_start_11 .. :try_end_a8} :catchall_bb

    .line 1092
    :cond_a8
    :goto_a8
    :try_start_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_bb

    .line 1093
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 1061
    :cond_ac
    :try_start_ac
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b5} :catch_b6
    .catchall {:try_start_ac .. :try_end_b5} :catchall_bb

    goto :goto_57

    .line 1089
    :catch_b6
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a8

    .line 1092
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_bb
    move-exception v2

    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_bb

    throw v2

    .line 1078
    :cond_be
    :try_start_be
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxModeActive"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 1086
    :cond_c8
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d1} :catch_b6
    .catchall {:try_start_be .. :try_end_d1} :catchall_bb

    goto :goto_a8
.end method

.method public static getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "personaId"    # I

    .prologue
    .line 2348
    const/16 v2, 0x64

    if-lt p1, v2, :cond_2e

    .line 2349
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 2350
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2351
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_16

    .line 2352
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2358
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :goto_15
    return-object v2

    .line 2354
    .restart local v0    # "ui":Landroid/content/pm/UserInfo;
    .restart local v1    # "um":Landroid/os/UserManager;
    :cond_16
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User doesn\'t exist. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_2e
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaID is invalid or persona doesn\'t exists. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isCACEnabled(I)Z
    .registers 8
    .param p0, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1746
    const/4 v3, 0x0

    .line 1747
    .local v3, "secure_mode":Z
    const/4 v2, 0x0

    .line 1751
    .local v2, "secure_access":Z
    sget-object v6, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v6, :cond_e

    .line 1752
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v6

    sput-object v6, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 1755
    :cond_e
    :try_start_e
    sget-object v6, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z

    move-result v3

    .line 1757
    const/16 v6, 0x64

    if-lt p0, v6, :cond_2d

    const/16 v6, 0xc8

    if-gt p0, v6, :cond_2d

    .line 1758
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 1759
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_26

    .line 1760
    invoke-interface {v0, p0}, Landroid/sec/enterprise/IEDMProxy;->isBTSecureAccessAllowedAsUser(I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_25} :catch_2f

    move-result v2

    .line 1763
    :cond_26
    if-ne v3, v4, :cond_2b

    if-ne v2, v4, :cond_2b

    .line 1771
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_2a
    return v4

    .restart local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_2b
    move v4, v5

    .line 1763
    goto :goto_2a

    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_2d
    move v4, v3

    .line 1766
    goto :goto_2a

    .line 1768
    :catch_2f
    move-exception v1

    .line 1769
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "failed to isCACEnabled"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 1771
    goto :goto_2a
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1016
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19

    .line 1019
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1033
    :cond_18
    :goto_18
    return v3

    .line 1020
    :cond_19
    if-eqz p0, :cond_18

    .line 1021
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1022
    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_18

    iget-object v4, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_18

    .line 1026
    :try_start_2a
    iget-object v4, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_31

    move-result v3

    goto :goto_18

    .line 1027
    :catch_31
    move-exception v1

    .line 1028
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public static isKnoxId(I)Z
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 2608
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1215
    if-eqz p0, :cond_14

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "null"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1223
    :cond_14
    :goto_14
    return v4

    .line 1218
    :cond_15
    sget-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_19
    if-ge v1, v2, :cond_26

    aget-object v3, v0, v1

    .line 1219
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1218
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1223
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_26
    const/4 v4, 0x1

    goto :goto_14
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 958
    if-eqz p2, :cond_e

    const-string/jumbo v1, "sec_container_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    .line 1011
    :goto_d
    return v1

    .line 962
    :cond_e
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 963
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 964
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_38

    .line 965
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 966
    :try_start_28
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_37

    .line 967
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 969
    :cond_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_5f

    .line 972
    :cond_38
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_51

    .line 973
    const-class v3, Landroid/os/PersonaPolicyManager;

    monitor-enter v3

    .line 974
    :try_start_3f
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_50

    .line 975
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 977
    :cond_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_62

    .line 980
    :cond_51
    const/16 v1, 0x64

    if-lt p3, v1, :cond_121

    .line 981
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v2

    .line 982
    goto :goto_d

    .line 969
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    .line 977
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1

    .line 983
    :cond_65
    const-string v1, "cameraMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 984
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getCameraModeChangeEnabled(I)Z

    move-result v1

    goto :goto_d

    .line 985
    :cond_74
    const-string v1, "dlnaDataTransfer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 986
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowDLNADataTransfer(I)Z

    move-result v1

    goto :goto_d

    .line 987
    :cond_83
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 988
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_d

    .line 989
    :cond_94
    const-string v1, "allShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 990
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowAllShare(I)Z

    move-result v1

    goto/16 :goto_d

    .line 991
    :cond_a4
    const-string v1, "gearSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 992
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getGearSupportEnabled(I)Z

    move-result v1

    goto/16 :goto_d

    .line 993
    :cond_b4
    const-string/jumbo v1, "penWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 994
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getPenWindowEnabled(I)Z

    move-result v1

    goto/16 :goto_d

    .line 995
    :cond_c5
    const-string v1, "airCommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 996
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAirCommandEnabled(I)Z

    move-result v1

    goto/16 :goto_d

    .line 997
    :cond_d5
    const-string v1, "importFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 998
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowImportFiles(I)Z

    move-result v1

    goto/16 :goto_d

    .line 999
    :cond_e5
    const-string v1, "exportFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 1000
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportFiles(I)Z

    move-result v1

    goto/16 :goto_d

    .line 1001
    :cond_f5
    const-string v1, "exportAndDeleteFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 1002
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z

    move-result v1

    goto/16 :goto_d

    .line 1003
    :cond_105
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 1004
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_d

    .line 1005
    :cond_116
    const-string v1, "contacts-import-export"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    move v1, v2

    .line 1006
    goto/16 :goto_d

    .line 1011
    :cond_121
    const/4 v1, 0x1

    goto/16 :goto_d
.end method

.method private static setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V
    .registers 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "userid"    # I

    .prologue
    .line 1115
    const-string v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    if-nez p2, :cond_a4

    .line 1118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1119
    .local v1, "bd1":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1120
    .local v8, "resp":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1121
    .local v4, "personaIds":[I
    const/4 v6, 0x0

    .line 1122
    .local v6, "personaTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1124
    .local v5, "personaNames":[Ljava/lang/String;
    const-string v9, "action"

    const-string v10, "RequestProxy"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v9, "cmd"

    const-string/jumbo v10, "queryPersonaInfos"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-static {p0, v1}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1129
    if-eqz v8, :cond_54

    .line 1130
    const-string/jumbo v9, "personaIds"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1131
    const-string/jumbo v9, "personaTypes"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1132
    const-string/jumbo v9, "personaNames"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1134
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaIds"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1135
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaTypes"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1136
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaNames"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1140
    :cond_54
    :try_start_54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1142
    .local v0, "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_99

    array-length v9, v4

    if-lez v9, :cond_99

    .line 1145
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5f
    array-length v9, v4

    if-ge v3, v9, :cond_70

    .line 1146
    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v0, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1149
    :cond_70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1150
    .local v7, "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8c

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8c

    .line 1152
    const-string v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :cond_8c
    invoke-static {}, Lcom/samsung/android/secretmode/SecretModeManager;->isPersonalPageMode()Z

    move-result v9

    if-eqz v9, :cond_99

    .line 1155
    const-string v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    .end local v3    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_99
    const-string v9, "KnoxIdNamePair"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_9e} :catch_9f

    .line 1175
    .end local v0    # "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_9e
    :goto_9e
    return-void

    .line 1160
    .restart local v1    # "bd1":Landroid/os/Bundle;
    .restart local v4    # "personaIds":[I
    .restart local v5    # "personaNames":[Ljava/lang/String;
    .restart local v6    # "personaTypes":[Ljava/lang/String;
    .restart local v8    # "resp":Landroid/os/Bundle;
    :catch_9f
    move-exception v2

    .line 1161
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9e

    .line 1164
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_a4
    const/16 v9, 0x64

    if-lt p2, v9, :cond_9e

    .line 1166
    :try_start_a8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1167
    .restart local v7    # "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9e

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9e

    .line 1169
    const-string v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c4} :catch_c5

    goto :goto_9e

    .line 1171
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_c5
    move-exception v2

    .line 1172
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9e
.end method


# virtual methods
.method public addAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .registers 7
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 1498
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_d

    .line 1500
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1505
    :cond_d
    :goto_d
    return-void

    .line 1501
    :catch_e
    move-exception v0

    .line 1502
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 800
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 802
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 807
    :goto_a
    return-object v1

    .line 803
    :catch_b
    move-exception v0

    .line 804
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get addLockOnImage , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1548
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1550
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1555
    :cond_9
    :goto_9
    return-void

    .line 1551
    :catch_a
    move-exception v0

    .line 1552
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addPackageToInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1441
    const/4 v1, 0x0

    .line 1442
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1444
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1449
    :cond_b
    :goto_b
    return v1

    .line 1445
    :catch_c
    move-exception v0

    .line 1446
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public adminUnLockPersona(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1454
    const/4 v1, 0x0

    .line 1455
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1457
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->adminUnLockPersona(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1462
    :cond_b
    :goto_b
    return v1

    .line 1458
    :catch_c
    move-exception v0

    .line 1459
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminUnLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public canAccess(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2013
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_35

    .line 2015
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAccess for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " personaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->canAccess(Ljava/lang/String;I)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2d

    move-result v1

    .line 2021
    :goto_2c
    return v1

    .line 2017
    :catch_2d
    move-exception v0

    .line 2018
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get access permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2021
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_35
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method public clearAppListForPersona(Landroid/os/PersonaManager$AppType;I)V
    .registers 6
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I

    .prologue
    .line 1687
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_d

    .line 1689
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->clearAppListForPersona(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1694
    :cond_d
    :goto_d
    return-void

    .line 1690
    :catch_e
    move-exception v0

    .line 1691
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to clearAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public convertContainerType(II)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I

    .prologue
    .line 2038
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 2040
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertContainerType for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->convertContainerType(II)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2c

    .line 2046
    :cond_2b
    :goto_2b
    return-void

    .line 2042
    :catch_2c
    move-exception v0

    .line 2043
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to convertContainerType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public copyFileBNR(ILjava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 1262
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.copyFileBNR() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 1264
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/RCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_44} :catch_46

    move-result v2

    .line 1268
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_45
    return v2

    .line 1265
    :catch_46
    move-exception v1

    .line 1266
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.copyFileBNR(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1268
    const/4 v2, -0x1

    goto :goto_45
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    .registers 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "setupWizardApkUri"    # Landroid/net/Uri;
    .param p8, "mdmSecretKey"    # Ljava/lang/String;
    .param p9, "lockType"    # I

    .prologue
    .line 397
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_20

    .line 399
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/os/IPersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_18

    move-result v1

    .line 404
    :goto_17
    return v1

    .line 400
    :catch_18
    move-exception v0

    .line 401
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_20
    const/4 v1, -0x1

    goto :goto_17
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 1275
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.deleteFile() ContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; FilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 1277
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_32

    move-result v2

    .line 1281
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_31
    return v2

    .line 1278
    :catch_32
    move-exception v1

    .line 1279
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.deleteFile(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    const/4 v2, 0x0

    goto :goto_31
.end method

.method public disablePersonaKeyGuard(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1381
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1383
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->disablePersonaKeyGuard(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result v1

    .line 1389
    :goto_22
    return v1

    .line 1385
    :catch_23
    move-exception v0

    .line 1386
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to disablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1389
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public enablePersonaKeyGuard(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1397
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1399
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->enablePersonaKeyGuard(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result v1

    .line 1405
    :goto_22
    return v1

    .line 1401
    :catch_23
    move-exception v0

    .line 1402
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to enablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1405
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public exists(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 678
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_29

    .line 680
    :try_start_4
    const-string/jumbo v2, "sys.knox.exists"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 683
    invoke-static {v1, p1}, Landroid/os/PersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v2

    .line 690
    .end local v1    # "value":Ljava/lang/String;
    :goto_19
    return v2

    .line 685
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1a
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->exists(I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21

    move-result v2

    goto :goto_19

    .line 686
    .end local v1    # "value":Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 687
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not get user info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_29
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public forceRollup(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 728
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "about to force switch to owner!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 1286
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 1288
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, getAdminUidForPersona()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getAdminUidForPersona(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v1

    .line 1294
    :goto_11
    return v1

    .line 1290
    :catch_12
    move-exception v0

    .line 1291
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getAdminUidForPersona id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;
    .registers 6
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersonaManager$AppType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1531
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_17

    .line 1533
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v1

    .line 1538
    :goto_e
    return-object v1

    .line 1534
    :catch_f
    move-exception v0

    .line 1535
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1538
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 10
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "mRCPGlobalContactsDir":Landroid/content/IRCPGlobalContactsDir;
    const/4 v3, 0x0

    .line 817
    .local v3, "result":Landroid/content/CustomCursor;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "PM.getCallerInfo()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v5, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "rcp"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 820
    .local v1, "rcpm":Landroid/os/RCPManager;
    if-nez v1, :cond_1f

    .line 821
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received mRCPGlobalContactsDir as null from bridge manager: rcpm == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :goto_1e
    return-object v4

    .line 825
    :cond_1f
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v0

    .line 826
    if-nez v0, :cond_2d

    .line 827
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received result as null from bridge manager for getCallerInfo: mRCPGlobalContactsDir == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 832
    :cond_2d
    :try_start_2d
    invoke-interface {v0, p1}, Landroid/content/IRCPGlobalContactsDir;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v3

    .line 833
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PM.getCallerInfo(): Received result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_49} :catch_4b

    move-object v4, v3

    .line 834
    goto :goto_1e

    .line 835
    :catch_4b
    move-exception v2

    .line 836
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Couldn\'t complete call to getCallerInfo , inside PersonaManager with exception:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1671
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1673
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getDisabledHomeLaunchers(IZ)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1678
    :goto_a
    return-object v1

    .line 1674
    :catch_b
    move-exception v0

    .line 1675
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getDisabledHomeLaunchers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1678
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getFingerCount()I
    .registers 4

    .prologue
    .line 2280
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2282
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFingerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getFingerCount(I)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result v1

    .line 2288
    :goto_15
    return v1

    .line 2284
    :catch_16
    move-exception v0

    .line 2285
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getFingerCount from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2288
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getForegroundUser()I
    .registers 4

    .prologue
    .line 2311
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 2313
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getForegroundUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getForegroundUser()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v1

    .line 2319
    :goto_11
    return v1

    .line 2315
    :catch_12
    move-exception v0

    .line 2316
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getForegroundUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2319
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getIsAdminLockedJustBefore()Z
    .registers 4

    .prologue
    .line 2215
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2217
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsAdminLockedJustBefore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsAdminLockedJustBefore(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result v1

    .line 2223
    :goto_15
    return v1

    .line 2219
    :catch_16
    move-exception v0

    .line 2220
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsAdminLockedJustBefore from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2223
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getIsFingerAsSupplement()Z
    .registers 4

    .prologue
    .line 2055
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2057
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerAsSupplement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerAsSupplement(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result v1

    .line 2063
    :goto_15
    return v1

    .line 2059
    :catch_16
    move-exception v0

    .line 2060
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerAsSupplement from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2063
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getIsFingerIdentifyFailed()Z
    .registers 4

    .prologue
    .line 2248
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2250
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerIdentifyFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerIdentifyFailed(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result v1

    .line 2256
    :goto_15
    return v1

    .line 2252
    :catch_16
    move-exception v0

    .line 2253
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerIdentifyFailed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2256
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getIsFingerReset()Z
    .registers 4

    .prologue
    .line 2183
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2185
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerReset(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result v1

    .line 2191
    :goto_15
    return v1

    .line 2187
    :catch_16
    move-exception v0

    .line 2188
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2191
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getIsFingerTimeout()Z
    .registers 4

    .prologue
    .line 2151
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2153
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerTimeout(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result v1

    .line 2159
    :goto_15
    return v1

    .line 2155
    :catch_16
    move-exception v0

    .line 2156
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2159
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .registers 4

    .prologue
    .line 2119
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2121
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsUnlockedAfterTurnOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsUnlockedAfterTurnOn(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result v1

    .line 2127
    :goto_15
    return v1

    .line 2123
    :catch_16
    move-exception v0

    .line 2124
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsUnlockedAfterTurnOn from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2127
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getKeyguardShowState()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1947
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v2

    .line 1948
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    .line 1956
    :cond_d
    :goto_d
    return v3

    .line 1951
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 1952
    .local v0, "i":Landroid/content/pm/PersonaInfo;
    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1953
    const/4 v3, 0x1

    goto :goto_d
.end method

.method public getKeyguardShowState(I)Z
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 1935
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1937
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getKeyguardShowState(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1942
    :goto_a
    return v1

    .line 1938
    :catch_b
    move-exception v0

    .line 1939
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKeyguardShowState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1942
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2621
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 2623
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxIconChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result-object v1

    .line 2629
    :goto_11
    return-object v1

    .line 2625
    :catch_12
    move-exception v0

    .line 2626
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKnoxIconChanged from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2629
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2595
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 2597
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxNameChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result-object v1

    .line 2603
    :goto_11
    return-object v1

    .line 2599
    :catch_12
    move-exception v0

    .line 2600
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKnoxNameChanged from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2603
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const-string v1, ""

    goto :goto_11
.end method

.method public getKnoxSecurityTimeout()I
    .registers 4

    .prologue
    .line 2464
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2466
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxSecurityTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getKnoxSecurityTimeout(I)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result v1

    .line 2472
    :goto_15
    return v1

    .line 2468
    :catch_16
    move-exception v0

    .line 2469
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getKnoxSecurityTimeout from PMS. return default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2472
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const v1, 0x927c0

    goto :goto_15
.end method

.method public getLastKeyguardUnlockTime()J
    .registers 5

    .prologue
    .line 2087
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1e

    .line 2089
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getLastKeyguadUnlockTime"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getLastKeyguardUnlockTime(I)J
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    move-result-wide v2

    .line 2095
    :goto_15
    return-wide v2

    .line 2091
    :catch_16
    move-exception v0

    .line 2092
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getLastKeyguardUnlockTime from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2095
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1e
    const-wide/16 v2, -0x1

    goto :goto_15
.end method

.method public getMoveToKnoxStatus()Z
    .registers 4

    .prologue
    .line 552
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 554
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getMoveToKnoxStatus()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 559
    :goto_a
    return v1

    .line 555
    :catch_b
    move-exception v0

    .line 556
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get move to knox status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getNormalizedState(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 738
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 740
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getNormalizedState(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 745
    :goto_a
    return v1

    .line 741
    :catch_b
    move-exception v0

    .line 742
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .registers 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1719
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1721
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1726
    :goto_a
    return-object v1

    .line 1722
    :catch_b
    move-exception v0

    .line 1723
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPackagesFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1726
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getParentId(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 539
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 541
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getParentId(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 546
    :goto_a
    return v1

    .line 542
    :catch_b
    move-exception v0

    .line 543
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getParentUserForCurrentPersona()I
    .registers 4

    .prologue
    .line 497
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 499
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getParentUserForCurrentPersona()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 504
    :goto_a
    return v1

    .line 500
    :catch_b
    move-exception v0

    .line 501
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent of persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getPasswordHint()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1731
    const/4 v1, 0x0

    .line 1732
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_12

    .line 1734
    :try_start_5
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getPasswordHint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2}, Landroid/os/IPersonaManager;->getPasswordHint()Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    move-result-object v1

    .line 1740
    :cond_12
    :goto_12
    return-object v1

    .line 1736
    :catch_13
    move-exception v0

    .line 1737
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to getPasswordHint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public getPersonaBackgroundTime(I)J
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1228
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1230
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaBackgroundTime(I)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v2

    .line 1235
    :goto_a
    return-wide v2

    .line 1231
    :catch_b
    move-exception v0

    .line 1232
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getPersonaBackgroundTime , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v2, -0x1

    goto :goto_a
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "personaHandle"    # I

    .prologue
    .line 649
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 651
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIcon(I)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 656
    :goto_a
    return-object v1

    .line 652
    :catch_b
    move-exception v0

    .line 653
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 1247
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 1249
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, getPersonaIdentification()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIdentification(I)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result-object v1

    .line 1255
    :goto_11
    return-object v1

    .line 1251
    :catch_12
    move-exception v0

    .line 1252
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getPersonaIdentification id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getPersonaIds()[I
    .registers 4

    .prologue
    .line 1467
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1469
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getPersonaIds()[I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1474
    :goto_a
    return-object v1

    .line 1470
    :catch_b
    move-exception v0

    .line 1471
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPersonaIds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1474
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 527
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 529
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 534
    :goto_a
    return-object v1

    .line 530
    :catch_b
    move-exception v0

    .line 531
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 610
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaSamsungAccount(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 613
    :goto_6
    return-object v1

    .line 611
    :catch_7
    move-exception v0

    .line 612
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    const-string v1, ""

    goto :goto_6
.end method

.method public getPersonaService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 788
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersonaService() name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_38

    .line 791
    const-string/jumbo v0, "persona_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 792
    new-instance v0, Landroid/os/PersonaPolicyManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    .line 795
    :goto_37
    return-object v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 586
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 588
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaType(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 593
    :goto_a
    return-object v1

    .line 589
    :catch_b
    move-exception v0

    .line 590
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const-string v1, ""

    goto :goto_a
.end method

.method public getPersonas()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_14

    .line 473
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    move-result-object v1

    .line 478
    :goto_b
    return-object v1

    .line 474
    :catch_c
    move-exception v0

    .line 475
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getPersonas(Z)Ljava/util/List;
    .registers 5
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 514
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 519
    :goto_a
    return-object v1

    .line 515
    :catch_b
    move-exception v0

    .line 516
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .registers 6
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 668
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getPersonasForCreator(IZ)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 673
    :goto_a
    return-object v1

    .line 669
    :catch_b
    move-exception v0

    .line 670
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the personas for a creator uid "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getPersonasForUser(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_14

    .line 487
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->getPersonasForUser(IZ)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    move-result-object v1

    .line 492
    :goto_b
    return-object v1

    .line 488
    :catch_c
    move-exception v0

    .line 489
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 6

    .prologue
    .line 844
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "in getRCPInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 846
    .local v1, "rcpm":Landroid/os/RCPManager;
    const/4 v0, 0x0

    .line 847
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v1, :cond_33

    .line 848
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 849
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 853
    :goto_32
    return-object v2

    .line 852
    :cond_33
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v2, 0x0

    goto :goto_32
.end method

.method public getScreenOffTime(I)J
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 1620
    const-wide/16 v2, 0x1388

    .line 1621
    .local v2, "screenOffTime":J
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_b

    .line 1623
    :try_start_6
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getScreenOffTime(I)J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1628
    :cond_b
    :goto_b
    return-wide v2

    .line 1624
    :catch_c
    move-exception v0

    .line 1625
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to screenOffTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getShortcutMode(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1428
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_3b

    .line 1430
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, getShortcutMode() for persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p1}, Landroid/os/IPersonaManager;->getShortcutMode(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getShortcutMode(I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_31} :catch_33

    move-result v1

    .line 1436
    :goto_32
    return v1

    .line 1432
    :catch_33
    move-exception v0

    .line 1433
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getShortcutMode "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1436
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_3b
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public getStateManager(I)Landroid/os/PersonaManager$StateManager;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2364
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "getStateManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    new-instance v0, Landroid/os/PersonaManager$StateManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/PersonaManager$StateManager;-><init>(Landroid/content/Context;Landroid/os/IPersonaManager;ILandroid/os/PersonaManager$1;)V

    return-object v0
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .registers 6
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1327
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserManagedPersonas() excludeDying is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getUserManagedPersonas(Z)Ljava/util/List;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result-object v1

    .line 1333
    :goto_22
    return-object v1

    .line 1329
    :catch_23
    move-exception v0

    .line 1330
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed getUserManagedPersonas()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public handleHomeShow()Z
    .registers 4

    .prologue
    .line 1368
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, handleHomeShow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->handleHomeShow()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    move-result v1

    .line 1373
    :goto_d
    return v1

    .line 1370
    :catch_e
    move-exception v0

    .line 1371
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get handleHomeShow "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1373
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public hideScrim()V
    .registers 4

    .prologue
    .line 1961
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1963
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->hideScrim()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1968
    :cond_9
    :goto_9
    return-void

    .line 1964
    :catch_a
    move-exception v0

    .line 1965
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to hideScrim()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public installApplications(ILjava/util/List;)Z
    .registers 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 762
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 764
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, installDefaultApplications(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->installApplications(ILjava/util/List;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v1

    .line 770
    :goto_11
    return v1

    .line 766
    :catch_12
    move-exception v0

    .line 767
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not install default apps into persona with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isFingerSupplementActivated()Z
    .registers 5

    .prologue
    .line 2328
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_33

    .line 2330
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFingerSupplementActivated, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->isFingerSupplementActivated(I)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2b

    move-result v1

    .line 2336
    :goto_2a
    return v1

    .line 2332
    :catch_2b
    move-exception v0

    .line 2333
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read finger activated value from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2336
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_33
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public isKioskContainerExistOnDevice()Z
    .registers 7

    .prologue
    .line 1799
    const/4 v2, 0x0

    .line 1800
    .local v2, "result":Z
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_25

    .line 1802
    :try_start_5
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1803
    .local v3, "value":Ljava/lang/String;
    const-string v0, "5"

    .line 1805
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "isKioskContainerExistOnDevice"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_26

    .line 1807
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1814
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_25
    :goto_25
    return v2

    .line 1809
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_26
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_2d

    move-result v2

    goto :goto_25

    .line 1810
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_2d
    move-exception v1

    .line 1811
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method public isKioskModeEnabled(I)Z
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 1779
    const/4 v2, 0x0

    .line 1780
    .local v2, "result":Z
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_2e

    .line 1782
    :try_start_5
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1783
    .local v3, "value":Ljava/lang/String;
    const-string v0, "5"

    .line 1784
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "isKioskModeEnabled  persona "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_31

    .line 1786
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {v3, p1}, Landroid/os/PersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v2, 0x1

    .line 1793
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return v2

    .line 1786
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_2e

    .line 1788
    :cond_31
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4, p1}, Landroid/os/IPersonaManager;->isKioskModeEnabled(I)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_36} :catch_38

    move-result v2

    goto :goto_2e

    .line 1789
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_38
    move-exception v1

    .line 1790
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskModeEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1703
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1705
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1710
    :goto_a
    return v1

    .line 1706
    :catch_b
    move-exception v0

    .line 1707
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isPackageInInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1710
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isPersonaActivated()Z
    .registers 9

    .prologue
    .line 695
    const/4 v2, 0x0

    .line 697
    .local v2, "isKnoxActive":Z
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 699
    .local v5, "personaIds":[I
    if-eqz v5, :cond_33

    .line 700
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v3, :cond_33

    aget v4, v0, v1

    .line 702
    .local v4, "personaId":I
    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_32

    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_32

    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 705
    :cond_32
    const/4 v2, 0x1

    .line 711
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "personaId":I
    :cond_33
    return v2

    .line 700
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "personaId":I
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public isResetPersonaOnRebootEnabled(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1899
    const/4 v1, 0x0

    .line 1900
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_12

    .line 1902
    :try_start_5
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "isResetPersonaOnRebootEnabled  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->isResetPersonaOnRebootEnabled(I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    move-result v1

    .line 1908
    :cond_12
    :goto_12
    return v1

    .line 1904
    :catch_13
    move-exception v0

    .line 1905
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to isResetPersonaOnRebootEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public isSessionExpired(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1350
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1352
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSessionExpired() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isSessionExpired(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_23

    move-result v1

    .line 1358
    :goto_22
    return v1

    .line 1354
    :catch_23
    move-exception v0

    .line 1355
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x1

    goto :goto_22
.end method

.method public launchPersonaHome(I)Z
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 448
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 450
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->launchPersonaHome(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 455
    :goto_a
    return v1

    .line 451
    :catch_b
    move-exception v0

    .line 452
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to profile user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public lockPersona(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1338
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_21

    .line 1340
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->lockPersona(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 1346
    :cond_21
    :goto_21
    return-void

    .line 1342
    :catch_22
    move-exception v0

    .line 1343
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 1299
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_22

    .line 1301
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->markForRemoval(ILandroid/content/ComponentName;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_23

    .line 1308
    :cond_22
    :goto_22
    return-void

    .line 1303
    :catch_23
    move-exception v0

    .line 1304
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "markForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "srcPath"    # Ljava/lang/String;
    .param p3, "dstPath"    # Ljava/lang/String;
    .param p4, "excludeMediaTypes"    # I
    .param p5, "containerId"    # I

    .prologue
    .line 2523
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_35

    .line 2525
    :try_start_4
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mountOldContainer, pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IPersonaManager;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2d

    move-result v0

    .line 2531
    :goto_2c
    return v0

    .line 2527
    :catch_2d
    move-exception v6

    .line 2528
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "can\'t mount Knox 1.0 partition from PMS"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2531
    .end local v6    # "re":Landroid/os/RemoteException;
    :cond_35
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public notifyKeyguardShow(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 1919
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2c

    .line 1921
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyKeyguardShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is shown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->notifyKeyguardShow(IZ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2d

    .line 1927
    :cond_2c
    :goto_2c
    return-void

    .line 1923
    :catch_2d
    move-exception v0

    .line 1924
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to notifyKeyguardShow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public onKeyguardBackPressed(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 2507
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_22

    .line 2509
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyguardBackPressed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->onKeyguardBackPressed(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_23

    .line 2515
    :cond_22
    :goto_22
    return-void

    .line 2511
    :catch_23
    move-exception v0

    .line 2512
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to onKeyguardBackPressed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public onSentinelActivityResumed()Z
    .registers 4

    .prologue
    .line 1839
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 1841
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->onSentinelActivityResumed()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1846
    :goto_a
    return v1

    .line 1842
    :catch_b
    move-exception v0

    .line 1843
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not handle sentinel activity resuming"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1846
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .registers 13
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1655
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_e

    .line 1657
    :try_start_4
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IPersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1662
    :cond_e
    :goto_e
    return-void

    .line 1658
    :catch_f
    move-exception v6

    .line 1659
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to onWakeLockChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public refreshTimer(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1633
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1635
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->refreshTimer(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1640
    :cond_9
    :goto_9
    return-void

    .line 1636
    :catch_a
    move-exception v0

    .line 1637
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to refreshTimer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 5
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 410
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 412
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 417
    :goto_a
    return v1

    .line 413
    :catch_b
    move-exception v0

    .line 414
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .registers 5
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 370
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1a

    .line 372
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerUser(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerUser(Landroid/content/pm/IPersonaCallback;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v1

    .line 378
    :goto_11
    return v1

    .line 374
    :catch_12
    move-exception v0

    .line 375
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public removeAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .registers 7
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 1515
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_d

    .line 1517
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1522
    :cond_d
    :goto_d
    return-void

    .line 1518
    :catch_e
    move-exception v0

    .line 1519
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removeAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1564
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1566
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1571
    :cond_9
    :goto_9
    return-void

    .line 1567
    :catch_a
    move-exception v0

    .line 1568
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removePackageFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public removePersona(I)I
    .registers 5
    .param p1, "personaHandle"    # I

    .prologue
    .line 460
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 462
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->removePersona(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 467
    :goto_a
    return v1

    .line 463
    :catch_b
    move-exception v0

    .line 464
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove Persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/16 v1, -0x4b1

    goto :goto_a
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .registers 6
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1578
    const/4 v1, 0x0

    .line 1579
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1581
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->resetPassword(Ljava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1586
    :cond_b
    :goto_b
    return v1

    .line 1582
    :catch_c
    move-exception v0

    .line 1583
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public resetPersona(I)I
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 750
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 752
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->resetPersona(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 757
    :goto_a
    return v1

    .line 753
    :catch_b
    move-exception v0

    .line 754
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not reset the persona "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public resetPersonaOnReboot(IZ)Z
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1855
    const/4 v1, 0x0

    .line 1856
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_13

    .line 1858
    :try_start_5
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetPersonaOnReboot  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    move-result v1

    .line 1864
    :cond_13
    :goto_13
    return v1

    .line 1860
    :catch_14
    move-exception v0

    .line 1861
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPersonaOnReboot"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1596
    const/4 v1, 0x0

    .line 1597
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1599
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->savePasswordInTima(ILjava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1604
    :cond_b
    :goto_b
    return v1

    .line 1600
    :catch_c
    move-exception v0

    .line 1601
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to savePasswordInTima"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public setAccessPermission(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "canAccess"    # Z

    .prologue
    .line 1995
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_36

    .line 1997
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAccessPermission for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " personaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " canAccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setAccessPermission(Ljava/lang/String;IZ)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_36} :catch_37

    .line 2003
    :cond_36
    :goto_36
    return-void

    .line 1999
    :catch_37
    move-exception v0

    .line 2000
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setAccessPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public setBackPressed(IZ)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "isBackPressed"    # Z

    .prologue
    .line 1825
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1827
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setBackPressed(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1832
    :cond_9
    :goto_9
    return-void

    .line 1828
    :catch_a
    move-exception v0

    .line 1829
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set back pressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setFingerCount(I)V
    .registers 5
    .param p1, "setFingerCount"    # I

    .prologue
    .line 2296
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_15

    .line 2298
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFingerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/os/IPersonaManager;->setFingerCount(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 2304
    :cond_15
    :goto_15
    return-void

    .line 2300
    :catch_16
    move-exception v0

    .line 2301
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setFingerCount from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public setFsMountState(IZ)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 716
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 718
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setFsMountState(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 723
    :cond_9
    :goto_9
    return-void

    .line 719
    :catch_a
    move-exception v0

    .line 720
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not setFsMountState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setIsAdminLockedJustBefore(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "isAdminLockedJustBefore"    # Z

    .prologue
    .line 2231
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_11

    .line 2233
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsAdminLockedJustBefore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsAdminLockedJustBefore(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 2239
    :cond_11
    :goto_11
    return-void

    .line 2235
    :catch_12
    move-exception v0

    .line 2236
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsAdminLockedJustBefore from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setIsFingerAsSupplement(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "isFingerprintAsSupplement"    # Z

    .prologue
    .line 2071
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_11

    .line 2073
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerAsSupplement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsFingerAsSupplement(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 2079
    :cond_11
    :goto_11
    return-void

    .line 2075
    :catch_12
    move-exception v0

    .line 2076
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerAsSupplement from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .registers 5
    .param p1, "isFingerIdentifyFailed"    # Z

    .prologue
    .line 2264
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_15

    .line 2266
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerIdentifyFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/os/IPersonaManager;->setIsFingerIdentifyFailed(IZ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 2272
    :cond_15
    :goto_15
    return-void

    .line 2268
    :catch_16
    move-exception v0

    .line 2269
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerIdentifyFailed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public setIsFingerReset(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "isFingerReset"    # Z

    .prologue
    .line 2199
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_11

    .line 2201
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsFingerReset(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 2207
    :cond_11
    :goto_11
    return-void

    .line 2203
    :catch_12
    move-exception v0

    .line 2204
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setIsFingerTimeout(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "isFingerTimeout"    # Z

    .prologue
    .line 2167
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_11

    .line 2169
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsFingerTimeout(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 2175
    :cond_11
    :goto_11
    return-void

    .line 2171
    :catch_12
    move-exception v0

    .line 2172
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setIsUnlockedAfterTurnOn(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "isUnlockBefore"    # Z

    .prologue
    .line 2135
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_11

    .line 2137
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsUnlockedAfterTurnOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsUnlockedAfterTurnOn(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 2143
    :cond_11
    :goto_11
    return-void

    .line 2139
    :catch_12
    move-exception v0

    .line 2140
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsUnlockedAfterTurnOn from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setKnoxBackupPin(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 2576
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_11

    .line 2578
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setKnoxBackupPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setKnoxBackupPin(ILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 2584
    :cond_11
    :goto_11
    return-void

    .line 2580
    :catch_12
    move-exception v0

    .line 2581
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to verifyKnoxBackupPin from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setKnoxSecurityTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .prologue
    .line 2481
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/os/PersonaManager;->setKnoxSecurityTimeout(II)V

    .line 2482
    return-void
.end method

.method public setKnoxSecurityTimeout(II)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 2491
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_11

    .line 2493
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setKnoxSecurityTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setKnoxSecurityTimeout(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 2499
    :cond_11
    :goto_11
    return-void

    .line 2495
    :catch_12
    move-exception v0

    .line 2496
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setKnoxSecurityTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setLastKeyguardUnlockTime(IJ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "lastKeyguardUnlockTime"    # J

    .prologue
    .line 2103
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_11

    .line 2105
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLastKeyguardUnlockTime"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setLastKeyguardUnlockTime(IJ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 2111
    :cond_11
    :goto_11
    return-void

    .line 2107
    :catch_12
    move-exception v0

    .line 2108
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setLastKeyguardUnlockTime from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .registers 9
    .param p1, "timeMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 1609
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1611
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1616
    :cond_9
    :goto_9
    return-void

    .line 1612
    :catch_a
    move-exception v0

    .line 1613
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setMaximumScreenOffTimeoutFromDeviceAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setMoveToKnoxStatus(Z)V
    .registers 5
    .param p1, "isProgressing"    # Z

    .prologue
    .line 564
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 566
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->setMoveToKnoxStatus(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 571
    :cond_9
    :goto_9
    return-void

    .line 567
    :catch_a
    move-exception v0

    .line 568
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set move to knox status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "personaHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 633
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 635
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 640
    :cond_9
    :goto_9
    return-void

    .line 636
    :catch_a
    move-exception v0

    .line 637
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 577
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaName(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 582
    :cond_9
    :goto_9
    return-void

    .line 578
    :catch_a
    move-exception v0

    .line 579
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 620
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaSamsungAccount(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 624
    :goto_5
    return-void

    .line 621
    :catch_6
    move-exception v0

    .line 622
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "personaType"    # Ljava/lang/String;

    .prologue
    .line 598
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 600
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaType(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 605
    :cond_9
    :goto_9
    return-void

    .line 601
    :catch_a
    move-exception v0

    .line 602
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setShortcutMode(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "isShortcutMode"    # Z

    .prologue
    .line 1416
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_2b

    .line 1418
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, setShortcutMode() for persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shortcut mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setShortcutMode(IZ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2c

    .line 1424
    :cond_2b
    :goto_2b
    return-void

    .line 1420
    :catch_2c
    move-exception v0

    .line 1421
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get setShortcutMode "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public setShownHelp(IIZ)V
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I
    .param p3, "value"    # Z

    .prologue
    .line 2026
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_36

    .line 2028
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShownHelp for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setShownHelp(IIZ)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_36} :catch_37

    .line 2034
    :cond_36
    :goto_36
    return-void

    .line 2030
    :catch_37
    move-exception v0

    .line 2031
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setShownHelp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public settingSyncAllowed(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1479
    const/4 v1, 0x0

    .line 1480
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1482
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->settingSyncAllowed(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1487
    :cond_b
    :goto_b
    return v1

    .line 1483
    :catch_c
    move-exception v0

    .line 1484
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute settingSyncAllowed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 436
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 438
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 443
    :goto_a
    return v1

    .line 439
    :catch_b
    move-exception v0

    .line 440
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to persona and launch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .registers 7
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 774
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 775
    .local v1, "result":I
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_12

    .line 777
    :try_start_5
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "in PersonaManager, unInstallSystemApplications(), calling service API"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->unInstallSystemApplications(ILjava/util/List;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_13

    move-result v1

    .line 783
    :cond_12
    :goto_12
    return v1

    .line 779
    :catch_13
    move-exception v0

    .line 780
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not uninstall system package into persona with exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public unmarkForRemoval(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1312
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_22

    .line 1314
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmarkForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unmarkForRemoval(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_23

    .line 1320
    :cond_22
    :goto_22
    return-void

    .line 1316
    :catch_23
    move-exception v0

    .line 1317
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed unmarkForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public unmountOldContainer(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 2540
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_30

    .line 2542
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmountOldContainer, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unmountOldContainer(Ljava/lang/String;)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_26} :catch_28

    move-result v1

    .line 2548
    :goto_27
    return v1

    .line 2544
    :catch_28
    move-exception v0

    .line 2545
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t unmount Knox 1.0 partition from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2548
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_30
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public updatePersonaInfo(ILjava/lang/String;II)Z
    .registers 10
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .param p4, "creatorUid"    # I

    .prologue
    .line 1881
    const/4 v1, 0x0

    .line 1882
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_b

    .line 1884
    :try_start_5
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IPersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_25

    move-result v1

    .line 1890
    :cond_b
    :goto_b
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePersonaInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    return v1

    .line 1886
    :catch_25
    move-exception v0

    .line 1887
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to updatePersonaInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public userActivity(I)V
    .registers 6
    .param p1, "event"    # I

    .prologue
    .line 1644
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_9

    .line 1646
    :try_start_4
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->userActivity(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1651
    :cond_9
    :goto_9
    return-void

    .line 1647
    :catch_a
    move-exception v0

    .line 1648
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to userActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public verifyKnoxBackupPin(ILjava/lang/String;)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 2559
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1b

    .line 2561
    :try_start_4
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verifyKnoxBackupPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->verifyKnoxBackupPin(ILjava/lang/String;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_13

    move-result v1

    .line 2567
    :goto_12
    return v1

    .line 2563
    :catch_13
    move-exception v0

    .line 2564
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t verify Knox Backup Pin from PMS. return default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2567
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_12
.end method
