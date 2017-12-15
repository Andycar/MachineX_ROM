.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$Bookmarks;,
        Landroid/provider/Settings$Global;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$LogMsg;,
        Landroid/provider/Settings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS"

.field public static final ACTION_ADD_ACCOUNT:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final ACTION_APPLICATION_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final ACTION_APP_NOTIFICATION_REDACTION:Ljava/lang/String; = "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

.field public static final ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field public static final ACTION_APP_OPS_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPS_SETTINGS"

.field public static final ACTION_BATTERY_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.BATTERY_SAVER_SETTINGS"

.field public static final ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final ACTION_CAPTIONING_SETTINGS:Ljava/lang/String; = "android.settings.CAPTIONING_SETTINGS"

.field public static final ACTION_CAST_SETTINGS:Ljava/lang/String; = "android.settings.CAST_SETTINGS"

.field public static final ACTION_CONDITION_PROVIDER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

.field public static final ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final ACTION_DEVICE_INFO_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_INFO_SETTINGS"

.field public static final ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"

.field public static final ACTION_HOME_SETTINGS:Ljava/lang/String; = "android.settings.HOME_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field public static final ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

.field public static final ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final ACTION_MONITORING_CERT_INFO:Ljava/lang/String; = "com.android.settings.MONITORING_CERT_INFO"

.field public static final ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final ACTION_NFCSHARING_SETTINGS:Ljava/lang/String; = "android.settings.NFCSHARING_SETTINGS"

.field public static final ACTION_NFC_PAYMENT_SETTINGS:Ljava/lang/String; = "android.settings.NFC_PAYMENT_SETTINGS"

.field public static final ACTION_NFC_SETTINGS:Ljava/lang/String; = "android.settings.NFC_SETTINGS"

.field public static final ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_LISTENER_SETTINGS"

.field public static final ACTION_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_SETTINGS"

.field public static final ACTION_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.PAIRING_SETTINGS"

.field public static final ACTION_PRINT_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_PRINT_SETTINGS"

.field public static final ACTION_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.PRIVACY_SETTINGS"

.field public static final ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "android.settings.SHOW_INPUT_METHOD_PICKER"

.field public static final ACTION_SHOW_REGULATORY_INFO:Ljava/lang/String; = "android.settings.SHOW_REGULATORY_INFO"

.field public static final ACTION_SIM_MGT_ACTIVATED_CHANGED:Ljava/lang/String; = "android.settings.SIMCARD_MGT_ACTIVATED"

.field public static final ACTION_SIM_MGT_CHANGED:Ljava/lang/String; = "android.settings.SIMCARD_MGT"

.field public static final ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final ACTION_TRUSTED_CREDENTIALS_USER:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"

.field public static final ACTION_USAGE_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.USAGE_ACCESS_SETTINGS"

.field public static final ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field public static final ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final ACTION_VOICE_CONTROL_AIRPLANE_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_AIRPLANE_MODE"

.field public static final ACTION_VOICE_INPUT_SETTINGS:Ljava/lang/String; = "android.settings.VOICE_INPUT_SETTINGS"

.field public static final ACTION_WIFI_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_DISPLAY_SETTINGS"

.field public static final ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final ACTION_ZEN_MODE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field public static final DEVICE_NAME_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_NAME"

.field public static final EXTRA_ACCOUNT_TYPES:Ljava/lang/String; = "account_types"

.field public static final EXTRA_AIRPLANE_MODE_ENABLED:Ljava/lang/String; = "airplane_mode_enabled"

.field public static final EXTRA_APP_PACKAGE:Ljava/lang/String; = "app_package"

.field public static final EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field public static final EXTRA_AUTHORITIES:Ljava/lang/String; = "authorities"

.field public static final EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"

.field public static final EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field public static final EXTRA_SIM_ACTIVATE:Ljava/lang/String; = "simcard_sim_activate"

.field public static final EXTRA_SIM_ICON:Ljava/lang/String; = "simcard_sim_icon"

.field public static final EXTRA_SIM_ID:Ljava/lang/String; = "simcard_sim_id"

.field public static final EXTRA_SIM_NAME:Ljava/lang/String; = "simcard_sim_name"

.field private static final JID_RESOURCE_PREFIX:Ljava/lang/String; = "android"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static final mLocationSettingsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/Settings;->mLocationSettingsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11826
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Landroid/provider/Settings;->mLocationSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getGTalkDeviceId(J)Ljava/lang/String;
    .registers 4
    .param p0, "androidId"    # J

    .prologue
    .line 12031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
