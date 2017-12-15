.class public abstract Landroid/content/pm/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;,
        Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;,
        Landroid/content/pm/PackageManager$NameNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAN_EXTERNAL_STORAGE:Ljava/lang/String; = "android.content.pm.CLEAN_EXTERNAL_STORAGE"

.field public static final ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "android.content.pm.action.REQUEST_PERMISSION"

.field public static final COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED:I = 0x4

.field public static final COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static final COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final DELETE_ALL_USERS:I = 0x2

.field public static final DELETE_FAILED_ABORTED:I = -0x5

.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_FAILED_OWNER_BLOCKED:I = -0x4

.field public static final DELETE_FAILED_USER_RESTRICTED:I = -0x3

.field public static final DELETE_KEEP_DATA:I = 0x1

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final DELETE_SYSTEM_APP:I = 0x4

.field public static final DONT_KILL_APP:I = 0x1

.field public static final EXTRA_FAILURE_EXISTING_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

.field public static final EXTRA_FAILURE_EXISTING_PERMISSION:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

.field public static final EXTRA_REQUEST_PERMISSION_PERMISSION_LIST:Ljava/lang/String; = "android.content.pm.extra.PERMISSION_LIST"

.field public static final EXTRA_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_ID"

.field public static final EXTRA_VERIFICATION_INSTALLER_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

.field public static final EXTRA_VERIFICATION_INSTALLER_UID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

.field public static final EXTRA_VERIFICATION_INSTALL_FLAGS:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

.field public static final EXTRA_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

.field public static final EXTRA_VERIFICATION_RESULT:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_RESULT"

.field public static final EXTRA_VERIFICATION_URI:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_URI"

.field public static final EXTRA_VERIFICATION_VERSION_CODE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_VERSION_CODE"

.field public static final FEATURE_APP_WIDGETS:Ljava/lang/String; = "android.software.app_widgets"

.field public static final FEATURE_AUDIO_LOW_LATENCY:Ljava/lang/String; = "android.hardware.audio.low_latency"

.field public static final FEATURE_AUDIO_OUTPUT:Ljava/lang/String; = "android.hardware.audio.output"

.field public static final FEATURE_BACKUP:Ljava/lang/String; = "android.software.backup"

.field public static final FEATURE_BARCODE_EMULATOR:Ljava/lang/String; = "com.sec.feature.barcode_emulator"

.field public static final FEATURE_BLUETOOTH:Ljava/lang/String; = "android.hardware.bluetooth"

.field public static final FEATURE_BLUETOOTH_LE:Ljava/lang/String; = "android.hardware.bluetooth_le"

.field public static final FEATURE_CALL_VT_SUPPORT:Ljava/lang/String; = "com.sec.feature.call_vt_support"

.field public static final FEATURE_CAMERA:Ljava/lang/String; = "android.hardware.camera"

.field public static final FEATURE_CAMERA_ANY:Ljava/lang/String; = "android.hardware.camera.any"

.field public static final FEATURE_CAMERA_AUTOFOCUS:Ljava/lang/String; = "android.hardware.camera.autofocus"

.field public static final FEATURE_CAMERA_CAPABILITY_MANUAL_POST_PROCESSING:Ljava/lang/String; = "android.hardware.camera.capability.manual_post_processing"

.field public static final FEATURE_CAMERA_CAPABILITY_MANUAL_SENSOR:Ljava/lang/String; = "android.hardware.camera.capability.manual_sensor"

.field public static final FEATURE_CAMERA_CAPABILITY_RAW:Ljava/lang/String; = "android.hardware.camera.capability.raw"

.field public static final FEATURE_CAMERA_EXTERNAL:Ljava/lang/String; = "android.hardware.camera.external"

.field public static final FEATURE_CAMERA_FLASH:Ljava/lang/String; = "android.hardware.camera.flash"

.field public static final FEATURE_CAMERA_FRONT:Ljava/lang/String; = "android.hardware.camera.front"

.field public static final FEATURE_CAMERA_LEVEL_FULL:Ljava/lang/String; = "android.hardware.camera.level.full"

.field public static final FEATURE_CONNECTION_SERVICE:Ljava/lang/String; = "android.software.connectionservice"

.field public static final FEATURE_CONSUMER_IR:Ljava/lang/String; = "android.hardware.consumerir"

.field public static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field public static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field public static final FEATURE_DEVICE_ADMIN:Ljava/lang/String; = "android.software.device_admin"

.field public static final FEATURE_DUAL_LCD:Ljava/lang/String; = "com.sec.feature.dual_lcd"

.field public static final FEATURE_ETHERNET:Ljava/lang/String; = "android.hardware.ethernet"

.field public static final FEATURE_FAKETOUCH:Ljava/lang/String; = "android.hardware.faketouch"

.field public static final FEATURE_FAKETOUCH_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.faketouch.multitouch.distinct"

.field public static final FEATURE_FAKETOUCH_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.faketouch.multitouch.jazzhand"

.field public static final FEATURE_FINDO:Ljava/lang/String; = "com.sec.feature.findo"

.field public static final FEATURE_FINGERPRINT_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.feature.fingerprint_manager_service"

.field public static final FEATURE_FLASH_BAR:Ljava/lang/String; = "com.sec.feature.flashbar"

.field public static final FEATURE_FLOATING_SIDE_SOFTKEY:Ljava/lang/String; = "com.sec.feature.floating_side_softkey"

.field public static final FEATURE_FOLDER_TYPE:Ljava/lang/String; = "com.sec.feature.folder_type"

.field public static final FEATURE_GAMEPAD:Ljava/lang/String; = "android.hardware.gamepad"

.field public static final FEATURE_HDMI_CEC:Ljava/lang/String; = "android.hardware.hdmi.cec"

.field public static final FEATURE_HEALTHCOVER:Ljava/lang/String; = "com.sec.feature.healthcover"

.field public static final FEATURE_HOME_SCREEN:Ljava/lang/String; = "android.software.home_screen"

.field public static final FEATURE_HOVERING_UI:Ljava/lang/String; = "com.sec.feature.hovering_ui"

.field public static final FEATURE_INPUT_METHODS:Ljava/lang/String; = "android.software.input_methods"

.field public static final FEATURE_LEANBACK:Ljava/lang/String; = "android.software.leanback"

.field public static final FEATURE_LEANBACK_ONLY:Ljava/lang/String; = "android.software.leanback_only"

.field public static final FEATURE_LIVE_TV:Ljava/lang/String; = "android.software.live_tv"

.field public static final FEATURE_LIVE_WALLPAPER:Ljava/lang/String; = "android.software.live_wallpaper"

.field public static final FEATURE_LOCATION:Ljava/lang/String; = "android.hardware.location"

.field public static final FEATURE_LOCATION_GPS:Ljava/lang/String; = "android.hardware.location.gps"

.field public static final FEATURE_LOCATION_NETWORK:Ljava/lang/String; = "android.hardware.location.network"

.field public static final FEATURE_MAGAZINE_HOME:Ljava/lang/String; = "com.sec.feature.magazine.home"

.field public static final FEATURE_MANAGED_PROFILES:Ljava/lang/String; = "android.software.managed_users"

.field public static final FEATURE_MANAGED_USERS:Ljava/lang/String; = "android.software.managed_users"

.field public static final FEATURE_MICROPHONE:Ljava/lang/String; = "android.hardware.microphone"

.field public static final FEATURE_MINI_MODE:Ljava/lang/String; = "com.sec.feature.minimode"

.field public static final FEATURE_MINI_MODE_TRAY:Ljava/lang/String; = "com.sec.feature.minimode_tray"

.field public static final FEATURE_MIRRORLINK_FW:Ljava/lang/String; = "com.samsung.feature.mirrorlink_fw"

.field public static final FEATURE_MOTIONRECOGNITION_SERVICE:Ljava/lang/String; = "com.sec.feature.motionrecognition_service"

.field public static final FEATURE_MULTIWINDOW:Ljava/lang/String; = "com.sec.feature.multiwindow"

.field public static final FEATURE_MULTIWINDOW_COMMON_UI:Ljava/lang/String; = "com.sec.feature.multiwindow.commonui"

.field public static final FEATURE_MULTIWINDOW_DOWNLOADABLE:Ljava/lang/String; = "com.sec.feature.multiwindow.downloadable"

.field public static final FEATURE_MULTIWINDOW_FREESTYLE:Ljava/lang/String; = "com.sec.feature.multiwindow.freestyle"

.field public static final FEATURE_MULTIWINDOW_FREESTYLE_DOCKING:Ljava/lang/String; = "com.sec.feature.multiwindow.freestyledocking"

.field public static final FEATURE_MULTIWINDOW_FREESTYLE_LAUNCH:Ljava/lang/String; = "com.sec.feature.multiwindow.freestylelaunch"

.field public static final FEATURE_MULTIWINDOW_MINIMIZE:Ljava/lang/String; = "com.sec.feature.multiwindow.minimize"

.field public static final FEATURE_MULTIWINDOW_MINIMIZE_ANIMATION:Ljava/lang/String; = "com.sec.feature.multiwindow.minimizeanimation"

.field public static final FEATURE_MULTIWINDOW_MULTIINSTANCE:Ljava/lang/String; = "com.sec.feature.multiwindow.multiinstance"

.field public static final FEATURE_MULTIWINDOW_PHONE:Ljava/lang/String; = "com.sec.feature.multiwindow.phone"

.field public static final FEATURE_MULTIWINDOW_QUADVIEW:Ljava/lang/String; = "com.sec.feature.multiwindow.quadview"

.field public static final FEATURE_MULTIWINDOW_RECENT_UI:Ljava/lang/String; = "com.sec.feature.multiwindow.recentui"

.field public static final FEATURE_MULTIWINDOW_SIMPLIFICATION_UI:Ljava/lang/String; = "com.sec.feature.multiwindow.simplificationui"

.field public static final FEATURE_MULTIWINDOW_STYLE_TRANSITION:Ljava/lang/String; = "com.sec.feature.multiwindow.styletransition"

.field public static final FEATURE_MULTIWINDOW_TABLET:Ljava/lang/String; = "com.sec.feature.multiwindow.tablet"

.field public static final FEATURE_MULTIWINDOW_TAB_PENWINDOW:Ljava/lang/String; = "com.sec.feature.multiwindow.tabpenwindow"

.field public static final FEATURE_MULTIWINDOW_TOOLKIT:Ljava/lang/String; = "com.sec.feature.multiwindow.toolkit"

.field public static final FEATURE_NFC:Ljava/lang/String; = "android.hardware.nfc"

.field public static final FEATURE_NFC_HCE:Ljava/lang/String; = "android.hardware.nfc.hce"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_NFC_HOST_CARD_EMULATION:Ljava/lang/String; = "android.hardware.nfc.hce"

.field public static final FEATURE_OPENGLES_EXTENSION_PACK:Ljava/lang/String; = "android.hardware.opengles.aep"

.field public static final FEATURE_PRINTING:Ljava/lang/String; = "android.software.print"

.field public static final FEATURE_SCONTEXT_LITE:Ljava/lang/String; = "com.sec.feature.scontext_lite"

.field public static final FEATURE_SCREEN_LANDSCAPE:Ljava/lang/String; = "android.hardware.screen.landscape"

.field public static final FEATURE_SCREEN_PORTRAIT:Ljava/lang/String; = "android.hardware.screen.portrait"

.field public static final FEATURE_SECURELY_REMOVES_USERS:Ljava/lang/String; = "android.software.securely_removes_users"

.field public static final FEATURE_SENSORHUB:Ljava/lang/String; = "com.sec.feature.sensorhub"

.field public static final FEATURE_SENSOR_ACCELEROMETER:Ljava/lang/String; = "android.hardware.sensor.accelerometer"

.field public static final FEATURE_SENSOR_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.hardware.sensor.ambient_temperature"

.field public static final FEATURE_SENSOR_BAROMETER:Ljava/lang/String; = "android.hardware.sensor.barometer"

.field public static final FEATURE_SENSOR_COMPASS:Ljava/lang/String; = "android.hardware.sensor.compass"

.field public static final FEATURE_SENSOR_GYROSCOPE:Ljava/lang/String; = "android.hardware.sensor.gyroscope"

.field public static final FEATURE_SENSOR_HEART_RATE:Ljava/lang/String; = "android.hardware.sensor.heartrate"

.field public static final FEATURE_SENSOR_HEART_RATE_ECG:Ljava/lang/String; = "android.hardware.sensor.heartrate.ecg"

.field public static final FEATURE_SENSOR_LIGHT:Ljava/lang/String; = "android.hardware.sensor.light"

.field public static final FEATURE_SENSOR_PROXIMITY:Ljava/lang/String; = "android.hardware.sensor.proximity"

.field public static final FEATURE_SENSOR_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.hardware.sensor.relative_humidity"

.field public static final FEATURE_SENSOR_STEP_COUNTER:Ljava/lang/String; = "android.hardware.sensor.stepcounter"

.field public static final FEATURE_SENSOR_STEP_DETECTOR:Ljava/lang/String; = "android.hardware.sensor.stepdetector"

.field public static final FEATURE_SIP:Ljava/lang/String; = "android.software.sip"

.field public static final FEATURE_SIP_VOIP:Ljava/lang/String; = "android.software.sip.voip"

.field public static final FEATURE_SLOCATION:Ljava/lang/String; = "com.sec.feature.slocation"

.field public static final FEATURE_SPEN_USP:Ljava/lang/String; = "com.sec.feature.spen_usp"

.field public static final FEATURE_TELEPHONY:Ljava/lang/String; = "android.hardware.telephony"

.field public static final FEATURE_TELEPHONY_CDMA:Ljava/lang/String; = "android.hardware.telephony.cdma"

.field public static final FEATURE_TELEPHONY_GSM:Ljava/lang/String; = "android.hardware.telephony.gsm"

.field public static final FEATURE_TELEVISION:Ljava/lang/String; = "android.hardware.type.television"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_TOUCHSCREEN:Ljava/lang/String; = "android.hardware.touchscreen"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH:Ljava/lang/String; = "android.hardware.touchscreen.multitouch"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.distinct"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.jazzhand"

.field public static final FEATURE_USB_ACCESSORY:Ljava/lang/String; = "android.hardware.usb.accessory"

.field public static final FEATURE_USB_HOST:Ljava/lang/String; = "android.hardware.usb.host"

.field public static final FEATURE_VERIFIED_BOOT:Ljava/lang/String; = "android.software.verified_boot"

.field public static final FEATURE_VOICE_RECOGNIZERS:Ljava/lang/String; = "android.software.voice_recognizers"

.field public static final FEATURE_WATCH:Ljava/lang/String; = "android.hardware.type.watch"

.field public static final FEATURE_WEBVIEW:Ljava/lang/String; = "android.software.webview"

.field public static final FEATURE_WFD_SUPPORT:Ljava/lang/String; = "com.sec.feature.wfd_support"

.field public static final FEATURE_WIFI:Ljava/lang/String; = "android.hardware.wifi"

.field public static final FEATURE_WIFI_DIRECT:Ljava/lang/String; = "android.hardware.wifi.direct"

.field public static final GET_ACTIVITIES:I = 0x1

.field public static final GET_CONFIGURATIONS:I = 0x4000

.field public static final GET_DISABLED_COMPONENTS:I = 0x200

.field public static final GET_DISABLED_UNTIL_USED_COMPONENTS:I = 0x8000

.field public static final GET_GIDS:I = 0x100

.field public static final GET_INSTRUMENTATION:I = 0x10

.field public static final GET_INTENT_FILTERS:I = 0x20

.field public static final GET_META_DATA:I = 0x80

.field public static final GET_PERMISSIONS:I = 0x1000

.field public static final GET_PROVIDERS:I = 0x8

.field public static final GET_RECEIVERS:I = 0x2

.field public static final GET_RESOLVED_FILTER:I = 0x40

.field public static final GET_SECRET_PACKAGES:I = 0x10000000

.field public static final GET_SERVICES:I = 0x4

.field public static final GET_SHARED_LIBRARY_FILES:I = 0x400

.field public static final GET_SIGNATURES:I = 0x40

.field public static final GET_UNINSTALLED_PACKAGES:I = 0x2000

.field public static final GET_URI_PERMISSION_PATTERNS:I = 0x800

.field public static final HANDLE_MANY_APPS_BURST:I = 0x4

.field public static final INSTALL_ALLOW_DOWNGRADE:I = 0x80

.field public static final INSTALL_ALLOW_TEST:I = 0x4

.field public static final INSTALL_ALL_USERS:I = 0x40

.field public static final INSTALL_EXTERNAL:I = 0x8

.field public static final INSTALL_FAILED_ABORTED:I = -0x73

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_DUPLICATE_PERMISSION:I = -0x70

.field public static final INSTALL_FAILED_EAS_POLICY_REJECTED_PERMISSION:I = -0x74

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_MATCHING_ABIS:I = -0x71

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_SIGNATURE_NOT_APPROVED:I = -0x1b

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UNKNOWN_SOURCES:I = -0x1a

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FAILED_USER_RESTRICTED:I = -0x6f

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final INSTALL_FORWARD_LOCK:I = 0x1

.field public static final INSTALL_FROM_ADB:I = 0x20

.field public static final INSTALL_INTERNAL:I = 0x10

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final INSTALL_SUCCEEDED_MESSAGE:Ljava/lang/String; = "Wow, Package scanning has been succeded"

.field public static final INSTALL_UNKNOWN:I = 0x0

.field public static final INSTALL_UNKNOWN_MESSAGE:Ljava/lang/String; = "Oops, What happended during package scanning??"

.field public static final MATCH_DEFAULT_ONLY:I = 0x10000

.field public static final MAXIMUM_VERIFICATION_TIMEOUT:J = 0x36ee80L

.field public static final MOVE_EXTERNAL_MEDIA:I = 0x2

.field public static final MOVE_FAILED_DOESNT_EXIST:I = -0x2

.field public static final MOVE_FAILED_FORWARD_LOCKED:I = -0x4

.field public static final MOVE_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final MOVE_FAILED_INTERNAL_ERROR:I = -0x6

.field public static final MOVE_FAILED_INVALID_LOCATION:I = -0x5

.field public static final MOVE_FAILED_OPERATION_PENDING:I = -0x7

.field public static final MOVE_FAILED_SYSTEM_PACKAGE:I = -0x3

.field public static final MOVE_INTERNAL:I = 0x1

.field public static final MOVE_SUCCEEDED:I = 0x1

.field public static final NO_NATIVE_LIBRARIES:I = -0x72

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_GRANTED:I = 0x0

.field public static final SIGNATURE_FIRST_NOT_SIGNED:I = -0x1

.field public static final SIGNATURE_MATCH:I = 0x0

.field public static final SIGNATURE_NEITHER_SIGNED:I = 0x1

.field public static final SIGNATURE_NO_MATCH:I = -0x3

.field public static final SIGNATURE_SECOND_NOT_SIGNED:I = -0x2

.field public static final SIGNATURE_UNKNOWN_PACKAGE:I = -0x4

.field public static final SKIP_CURRENT_PROFILE:I = 0x2

.field public static final VERIFICATION_ALLOW:I = 0x1

.field public static final VERIFICATION_ALLOW_WITHOUT_SUFFICIENT:I = 0x2

.field public static final VERIFICATION_REJECT:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4484
    return-void
.end method

.method public static deleteStatusToPublicStatus(I)I
    .registers 3
    .param p0, "status"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 4453
    packed-switch p0, :pswitch_data_10

    .line 4460
    :goto_5
    :pswitch_5
    return v0

    .line 4454
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    :pswitch_8
    move v0, v1

    .line 4456
    goto :goto_5

    :pswitch_a
    move v0, v1

    .line 4457
    goto :goto_5

    :pswitch_c
    move v0, v1

    .line 4458
    goto :goto_5

    .line 4459
    :pswitch_e
    const/4 v0, 0x3

    goto :goto_5

    .line 4453
    :pswitch_data_10
    .packed-switch -0x5
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static deleteStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "status"    # I

    .prologue
    .line 4440
    packed-switch p0, :pswitch_data_1a

    .line 4447
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 4441
    :pswitch_8
    const-string v0, "DELETE_SUCCEEDED"

    goto :goto_7

    .line 4442
    :pswitch_b
    const-string v0, "DELETE_FAILED_INTERNAL_ERROR"

    goto :goto_7

    .line 4443
    :pswitch_e
    const-string v0, "DELETE_FAILED_DEVICE_POLICY_MANAGER"

    goto :goto_7

    .line 4444
    :pswitch_11
    const-string v0, "DELETE_FAILED_USER_RESTRICTED"

    goto :goto_7

    .line 4445
    :pswitch_14
    const-string v0, "DELETE_FAILED_OWNER_BLOCKED"

    goto :goto_7

    .line 4446
    :pswitch_17
    const-string v0, "DELETE_FAILED_ABORTED"

    goto :goto_7

    .line 4440
    :pswitch_data_1a
    .packed-switch -0x5
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public static deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "status"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4430
    invoke-static {p0}, Landroid/content/pm/PackageManager;->deleteStatusToString(I)Ljava/lang/String;

    move-result-object v0

    .line 4431
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_1d

    .line 4432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4434
    .end local v0    # "str":Ljava/lang/String;
    :cond_1d
    return-object v0
.end method

.method public static getDataDirForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static installStatusToPublicStatus(I)I
    .registers 6
    .param p0, "status"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 4382
    sparse-switch p0, :sswitch_data_4c

    .line 4424
    const/4 v0, 0x1

    :goto_9
    :sswitch_9
    return v0

    .line 4383
    :sswitch_a
    const/4 v0, 0x0

    goto :goto_9

    :sswitch_c
    move v0, v1

    .line 4385
    goto :goto_9

    :sswitch_e
    move v0, v1

    .line 4386
    goto :goto_9

    :sswitch_10
    move v0, v2

    .line 4387
    goto :goto_9

    :sswitch_12
    move v0, v3

    .line 4392
    goto :goto_9

    :sswitch_14
    move v0, v1

    .line 4394
    goto :goto_9

    :sswitch_16
    move v0, v3

    .line 4395
    goto :goto_9

    :sswitch_18
    move v0, v3

    .line 4397
    goto :goto_9

    :sswitch_1a
    move v0, v1

    .line 4398
    goto :goto_9

    :sswitch_1c
    move v0, v3

    .line 4399
    goto :goto_9

    :sswitch_1e
    move v0, v3

    .line 4400
    goto :goto_9

    :sswitch_20
    move v0, v2

    .line 4401
    goto :goto_9

    :sswitch_22
    move v0, v2

    .line 4402
    goto :goto_9

    :sswitch_24
    move v0, v2

    .line 4403
    goto :goto_9

    :sswitch_26
    move v0, v4

    .line 4404
    goto :goto_9

    :sswitch_28
    move v0, v4

    .line 4405
    goto :goto_9

    :sswitch_2a
    move v0, v1

    .line 4406
    goto :goto_9

    :sswitch_2c
    move v0, v1

    .line 4407
    goto :goto_9

    :sswitch_2e
    move v0, v1

    .line 4408
    goto :goto_9

    :sswitch_30
    move v0, v1

    .line 4409
    goto :goto_9

    :sswitch_32
    move v0, v1

    .line 4410
    goto :goto_9

    :sswitch_34
    move v0, v1

    .line 4411
    goto :goto_9

    :sswitch_36
    move v0, v1

    .line 4412
    goto :goto_9

    :sswitch_38
    move v0, v1

    .line 4413
    goto :goto_9

    :sswitch_3a
    move v0, v1

    .line 4414
    goto :goto_9

    :sswitch_3c
    move v0, v1

    .line 4415
    goto :goto_9

    :sswitch_3e
    move v0, v1

    .line 4416
    goto :goto_9

    :sswitch_40
    move v0, v1

    .line 4417
    goto :goto_9

    :sswitch_42
    move v0, v1

    .line 4418
    goto :goto_9

    .line 4419
    :sswitch_44
    const/4 v0, 0x1

    goto :goto_9

    :sswitch_46
    move v0, v3

    .line 4420
    goto :goto_9

    :sswitch_48
    move v0, v3

    .line 4422
    goto :goto_9

    :sswitch_4a
    move v0, v4

    .line 4423
    goto :goto_9

    .line 4382
    :sswitch_data_4c
    .sparse-switch
        -0x73 -> :sswitch_4a
        -0x71 -> :sswitch_48
        -0x70 -> :sswitch_9
        -0x6f -> :sswitch_46
        -0x6e -> :sswitch_44
        -0x6d -> :sswitch_42
        -0x6c -> :sswitch_40
        -0x6b -> :sswitch_3e
        -0x6a -> :sswitch_3c
        -0x69 -> :sswitch_3a
        -0x68 -> :sswitch_38
        -0x67 -> :sswitch_36
        -0x66 -> :sswitch_34
        -0x65 -> :sswitch_32
        -0x64 -> :sswitch_30
        -0x19 -> :sswitch_2e
        -0x18 -> :sswitch_2c
        -0x17 -> :sswitch_2a
        -0x16 -> :sswitch_28
        -0x15 -> :sswitch_26
        -0x14 -> :sswitch_24
        -0x13 -> :sswitch_22
        -0x12 -> :sswitch_20
        -0x11 -> :sswitch_1e
        -0x10 -> :sswitch_1c
        -0xf -> :sswitch_1a
        -0xe -> :sswitch_18
        -0xd -> :sswitch_9
        -0xc -> :sswitch_16
        -0xb -> :sswitch_14
        -0xa -> :sswitch_9
        -0x9 -> :sswitch_12
        -0x8 -> :sswitch_9
        -0x7 -> :sswitch_9
        -0x6 -> :sswitch_9
        -0x5 -> :sswitch_9
        -0x4 -> :sswitch_10
        -0x3 -> :sswitch_e
        -0x2 -> :sswitch_c
        -0x1 -> :sswitch_9
        0x1 -> :sswitch_a
    .end sparse-switch
.end method

.method public static installStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "status"    # I

    .prologue
    .line 4334
    sparse-switch p0, :sswitch_data_84

    .line 4376
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 4335
    :sswitch_8
    const-string v0, "INSTALL_SUCCEEDED"

    goto :goto_7

    .line 4336
    :sswitch_b
    const-string v0, "INSTALL_FAILED_ALREADY_EXISTS"

    goto :goto_7

    .line 4337
    :sswitch_e
    const-string v0, "INSTALL_FAILED_INVALID_APK"

    goto :goto_7

    .line 4338
    :sswitch_11
    const-string v0, "INSTALL_FAILED_INVALID_URI"

    goto :goto_7

    .line 4339
    :sswitch_14
    const-string v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    goto :goto_7

    .line 4340
    :sswitch_17
    const-string v0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    goto :goto_7

    .line 4341
    :sswitch_1a
    const-string v0, "INSTALL_FAILED_NO_SHARED_USER"

    goto :goto_7

    .line 4342
    :sswitch_1d
    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    goto :goto_7

    .line 4343
    :sswitch_20
    const-string v0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    goto :goto_7

    .line 4344
    :sswitch_23
    const-string v0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    goto :goto_7

    .line 4345
    :sswitch_26
    const-string v0, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    goto :goto_7

    .line 4346
    :sswitch_29
    const-string v0, "INSTALL_FAILED_DEXOPT"

    goto :goto_7

    .line 4347
    :sswitch_2c
    const-string v0, "INSTALL_FAILED_OLDER_SDK"

    goto :goto_7

    .line 4348
    :sswitch_2f
    const-string v0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    goto :goto_7

    .line 4349
    :sswitch_32
    const-string v0, "INSTALL_FAILED_NEWER_SDK"

    goto :goto_7

    .line 4350
    :sswitch_35
    const-string v0, "INSTALL_FAILED_TEST_ONLY"

    goto :goto_7

    .line 4351
    :sswitch_38
    const-string v0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    goto :goto_7

    .line 4352
    :sswitch_3b
    const-string v0, "INSTALL_FAILED_MISSING_FEATURE"

    goto :goto_7

    .line 4353
    :sswitch_3e
    const-string v0, "INSTALL_FAILED_CONTAINER_ERROR"

    goto :goto_7

    .line 4354
    :sswitch_41
    const-string v0, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    goto :goto_7

    .line 4355
    :sswitch_44
    const-string v0, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    goto :goto_7

    .line 4356
    :sswitch_47
    const-string v0, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    goto :goto_7

    .line 4357
    :sswitch_4a
    const-string v0, "INSTALL_FAILED_VERIFICATION_FAILURE"

    goto :goto_7

    .line 4358
    :sswitch_4d
    const-string v0, "INSTALL_FAILED_PACKAGE_CHANGED"

    goto :goto_7

    .line 4359
    :sswitch_50
    const-string v0, "INSTALL_FAILED_UID_CHANGED"

    goto :goto_7

    .line 4360
    :sswitch_53
    const-string v0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    goto :goto_7

    .line 4361
    :sswitch_56
    const-string v0, "INSTALL_PARSE_FAILED_NOT_APK"

    goto :goto_7

    .line 4362
    :sswitch_59
    const-string v0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    goto :goto_7

    .line 4363
    :sswitch_5c
    const-string v0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    goto :goto_7

    .line 4364
    :sswitch_5f
    const-string v0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    goto :goto_7

    .line 4365
    :sswitch_62
    const-string v0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    goto :goto_7

    .line 4366
    :sswitch_65
    const-string v0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    goto :goto_7

    .line 4367
    :sswitch_68
    const-string v0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    goto :goto_7

    .line 4368
    :sswitch_6b
    const-string v0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    goto :goto_7

    .line 4369
    :sswitch_6e
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    goto :goto_7

    .line 4370
    :sswitch_71
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    goto :goto_7

    .line 4371
    :sswitch_74
    const-string v0, "INSTALL_FAILED_INTERNAL_ERROR"

    goto :goto_7

    .line 4372
    :sswitch_77
    const-string v0, "INSTALL_FAILED_USER_RESTRICTED"

    goto :goto_7

    .line 4373
    :sswitch_7a
    const-string v0, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    goto :goto_7

    .line 4374
    :sswitch_7d
    const-string v0, "INSTALL_FAILED_NO_MATCHING_ABIS"

    goto :goto_7

    .line 4375
    :sswitch_80
    const-string v0, "INSTALL_FAILED_ABORTED"

    goto :goto_7

    .line 4334
    nop

    :sswitch_data_84
    .sparse-switch
        -0x73 -> :sswitch_80
        -0x71 -> :sswitch_7d
        -0x70 -> :sswitch_7a
        -0x6f -> :sswitch_77
        -0x6e -> :sswitch_74
        -0x6d -> :sswitch_71
        -0x6c -> :sswitch_6e
        -0x6b -> :sswitch_6b
        -0x6a -> :sswitch_68
        -0x69 -> :sswitch_65
        -0x68 -> :sswitch_62
        -0x67 -> :sswitch_5f
        -0x66 -> :sswitch_5c
        -0x65 -> :sswitch_59
        -0x64 -> :sswitch_56
        -0x19 -> :sswitch_53
        -0x18 -> :sswitch_50
        -0x17 -> :sswitch_4d
        -0x16 -> :sswitch_4a
        -0x15 -> :sswitch_47
        -0x14 -> :sswitch_44
        -0x13 -> :sswitch_41
        -0x12 -> :sswitch_3e
        -0x11 -> :sswitch_3b
        -0x10 -> :sswitch_38
        -0xf -> :sswitch_35
        -0xe -> :sswitch_32
        -0xd -> :sswitch_2f
        -0xc -> :sswitch_2c
        -0xb -> :sswitch_29
        -0xa -> :sswitch_26
        -0x9 -> :sswitch_23
        -0x8 -> :sswitch_20
        -0x7 -> :sswitch_1d
        -0x6 -> :sswitch_1a
        -0x5 -> :sswitch_17
        -0x4 -> :sswitch_14
        -0x3 -> :sswitch_11
        -0x2 -> :sswitch_e
        -0x1 -> :sswitch_b
        0x1 -> :sswitch_8
    .end sparse-switch
.end method

.method public static installStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "status"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4324
    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToString(I)Ljava/lang/String;

    move-result-object v0

    .line 4325
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_1d

    .line 4326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4328
    .end local v0    # "str":Ljava/lang/String;
    :cond_1d
    return-object v0
.end method


# virtual methods
.method public abstract addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
.end method

.method public abstract addPackageToPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addPermission(Landroid/content/pm/PermissionInfo;)Z
.end method

.method public abstract addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
.end method

.method public abstract addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    .prologue
    .line 4035
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs buildPermissionRequestIntent([Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 2553
    if-nez p1, :cond_b

    .line 2554
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "permissions cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2556
    :cond_b
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v3, :cond_20

    aget-object v4, v0, v2

    .line 2557
    .local v4, "permission":Ljava/lang/String;
    if-nez v4, :cond_1d

    .line 2558
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "permissions cannot contain null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2556
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2562
    .end local v4    # "permission":Ljava/lang/String;
    :cond_20
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.content.pm.action.REQUEST_PERMISSION"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2563
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.PERMISSION_LIST"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2564
    const-string v5, "com.android.packageinstaller"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2565
    return-object v1
.end method

.method public abstract canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract checkPermission(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract checkSignatures(II)I
.end method

.method public abstract checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract clearCrossProfileIntentFilters(I)V
.end method

.method public abstract clearPackagePreferredActivities(Ljava/lang/String;)V
.end method

.method public abstract currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
.end method

.method public abstract extendVerificationTimeout(IIJ)V
.end method

.method public abstract freeStorage(JLandroid/content/IntentSender;)V
.end method

.method public abstract freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAllPermissionGroups(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationEnabledSetting(Ljava/lang/String;)I
.end method

.method public abstract getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAutoRunPackgeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "packageItemName"    # Ljava/lang/String;

    .prologue
    .line 3190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "packageItemName"    # Ljava/lang/String;

    .prologue
    .line 3178
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getComponentEnabledSetting(Landroid/content/ComponentName;)I
.end method

.method public abstract getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getInstalledApplications(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackages(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 16
    .param p1, "archiveFilePath"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v12, 0x0

    .line 3527
    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    .line 3528
    .local v11, "parser":Landroid/content/pm/PackageParser;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3530
    .local v0, "apkFile":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v11, v0, v2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 3531
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_1b

    .line 3532
    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V

    .line 3533
    invoke-virtual {v11, v1}, Landroid/content/pm/PackageParser;->collectManifestDigest(Landroid/content/pm/PackageParser$Package;)V

    .line 3535
    :cond_1b
    new-instance v9, Landroid/content/pm/PackageUserState;

    invoke-direct {v9}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 3536
    .local v9, "state":Landroid/content/pm/PackageUserState;
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v3, p2

    invoke-static/range {v1 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/HashSet;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    :try_end_2a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_c .. :try_end_2a} :catch_2c

    move-result-object v2

    .line 3538
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "state":Landroid/content/pm/PackageUserState;
    :goto_2b
    return-object v2

    .line 3537
    :catch_2c
    move-exception v10

    .local v10, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object v2, v12

    .line 3538
    goto :goto_2b
.end method

.method public abstract getPackageGids(Ljava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInstaller()Landroid/content/pm/PackageInstaller;
.end method

.method public abstract getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .prologue
    .line 3954
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 3955
    return-void
.end method

.method public abstract getPackageUid(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public abstract getPreferredPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
.end method

.method public getSystemFeatureLevel(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2737
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSystemSharedLibraryNames()[Ljava/lang/String;
.end method

.method public abstract getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getUidForSharedUser(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
.end method

.method public abstract getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
.end method

.method public abstract getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract grantPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract hasSystemFeature(Ljava/lang/String;)Z
.end method

.method public abstract installExistingPackage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V
.end method

.method public abstract installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
.end method

.method public abstract installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V
.end method

.method public abstract installPackageWithVerification(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
.end method

.method public abstract installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
.end method

.method public abstract installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
.end method

.method public abstract installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isPackageAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isSafeMode()Z
.end method

.method public abstract isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
.end method

.method public abstract queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract removePackageFromPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePermission(Ljava/lang/String;)V
.end method

.method public abstract replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4069
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract revokePermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setApplicationEnabledSetting(Ljava/lang/String;II)V
.end method

.method public abstract setApplicationEnabledSettingWithList(Ljava/util/List;IIZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIZZ)V"
        }
    .end annotation
.end method

.method public abstract setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
.end method

.method public abstract setComponentEnabledSetting(Landroid/content/ComponentName;II)V
.end method

.method public abstract setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract verifyPendingInstall(II)V
.end method
