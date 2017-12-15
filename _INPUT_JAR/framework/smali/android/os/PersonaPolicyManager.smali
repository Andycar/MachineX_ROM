.class public Landroid/os/PersonaPolicyManager;
.super Ljava/lang/Object;
.source "PersonaPolicyManager.java"


# static fields
.field public static final AIRCOMMAND:Ljava/lang/String; = "airCommand"

.field public static final AIRCOMMAND_DEFAULT:Z = true

.field public static final ALLSHARE:Ljava/lang/String; = "allShare"

.field public static final ALLSHARE_DEFAULT:Z = false

.field public static final BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field public static final CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final CALL_LOG:Ljava/lang/String; = "CallLog"

.field public static final CAMERA_MODE:Ljava/lang/String; = "cameraMode"

.field public static final CAMERA_MODE_DEFAULT:Z = false

.field public static final CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field public static final CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final CONTACTS_IMPORT_EXPORT:Ljava/lang/String; = "contacts-import-export"

.field public static final CONTAINER_RESET:Ljava/lang/String; = "containerReset"

.field public static final CONTAINER_RESET_DEFAULT:Z = false

.field public static final CUSTOM_BADGEICON:Ljava/lang/String; = "customBadgeIcon"

.field public static final CUSTOM_BADGEICON_DEFAULT:Z = true

.field public static final CUSTOM_COLORIDENTIFICATION:Ljava/lang/String; = "customColorIdentification"

.field public static final CUSTOM_COLORIDENTIFICATION_DEFAULT:Z = true

.field public static final CUSTOM_PERSONAICON:Ljava/lang/String; = "customPersonaIcon"

.field public static final CUSTOM_PERSONAICON_DEFAULT:Z = true

.field public static final DEFAULT_APPS:Ljava/lang/String; = "DefaultApps"

.field public static final DISABLE_SWITCHWIDGET:Ljava/lang/String; = "disableSwitchWidget"

.field public static final DISABLE_SWITCHWIDGET_DEFAULT:Z = false

.field public static final DLNA_DATATRANSFER:Ljava/lang/String; = "dlnaDataTransfer"

.field public static final DLNA_DATATRANSFER_DEFAULT:Z = false

.field public static final ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final ENCRYPTION_DEFAULT:Z = true

.field private static final EXCLUDE_IN_COM:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPORT_AND_DELETE_FILES:Ljava/lang/String; = "exportAndDeleteFiles"

.field public static final EXPORT_AND_DELETE_FILES_DEFAULT:Z = false

.field public static final EXPORT_DATA:Ljava/lang/String; = "knox-export-data"

.field public static final EXPORT_FILES:Ljava/lang/String; = "exportFiles"

.field public static final EXPORT_FILES_DEFAULT:Z = false

.field public static final GEAR_SUPPORT:Ljava/lang/String; = "gearSupport"

.field public static final GEAR_SUPPORT_DEFAULT:Z = true

.field public static final IMPORT_DATA:Ljava/lang/String; = "knox-import-data"

.field public static final IMPORT_FILES:Ljava/lang/String; = "importFiles"

.field public static final IMPORT_FILES_DEFAULT:Z = true

.field public static final MODIFY_TIMEOUT:Ljava/lang/String; = "modifyTimeout"

.field public static final MODIFY_TIMEOUT_DEFAULT:Z = true

.field public static final NOTIFICATIONS:Ljava/lang/String; = "Notifications"

.field public static final PASSWORD_LOCK:Ljava/lang/String; = "passwordLock"

.field public static final PASSWORD_LOCK_DEFAULT:Z = true

.field public static final PENWINDOW:Ljava/lang/String; = "penWindow"

.field public static final PENWINDOW_DEFAULT:Z = true

.field public static final PRINT:Ljava/lang/String; = "print"

.field public static final PRINT_DEFAULT:Z = false

.field public static final SANITIZE_DATA:Ljava/lang/String; = "knox-sanitize-data"

.field public static final SCREEN_CAPTURE_DEFAULT:Z = false

.field public static final SECURE_KEYSTORE:Ljava/lang/String; = "secureKeystore"

.field public static final SECURE_KEYSTORE_DEFAULT:Z = true

.field private static final SHARE_WITH_KNOX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORTCUTS:Ljava/lang/String; = "Shortcuts"

.field public static final SHORTCUT_CREATION:Ljava/lang/String; = "shortcutCreation"

.field public static final SHORTCUT_CREATION_DEFAULT:Z = true

.field public static final SMS:Ljava/lang/String; = "Sms"

.field public static final SWITCH_NOTIF:Ljava/lang/String; = "switchNotif"

.field public static final SWITCH_NOTIF_DEFAULT:Z = true

.field public static final SYNC_ALL_CONTACTS:Ljava/lang/String; = "all_contacts"

.field public static final SYNC_FAVOURITE_CONTACTS:Ljava/lang/String; = "fav_contacts"

.field private static TAG:Ljava/lang/String; = null

.field public static final UNIVERSAL_CALLER_ID:Ljava/lang/String; = "universalCallerId"

.field public static final UNIVERSAL_CALLER_ID_DEFAULT:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/pm/IPersonaPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    const-string v0, "PersonaPolicyManager"

    sput-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    .line 114
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "intelligent_screen_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "intelligent_sleep_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "intelligent_rotation_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "all_sound_off"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "callsettings_answer_memo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "mono_audio_db"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_chaton_call_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_gridui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_music_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_ring_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_notification_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_system_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_mode_automatic_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_mode_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "flip_font_style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_low_battery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_bonding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hdmi_audio_output"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dock_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "cradle_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "automatic_unlock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "power_sharing_cable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_off_timeout_rollback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_sound_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_switch_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_disable_incoming_calls"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_disable_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_disable_alarm_and_timer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_disable_led_indicator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_always"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_start_hour"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_start_min"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_end_hour"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_end_min"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_allow_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_off_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_brightness_detail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_ring"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_alarm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_bluetooth_sco"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_system_enforced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_DTMF"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_tts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_enforced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_master"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_master_mute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "volume_waiting_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "vibrate_in_silent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_replace"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_caps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_punctuate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "high_contrast"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "font_size"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "power_key_hold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "talkback_power_key_hold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "flash_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "easy_interaction"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_reminder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "time_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_negative"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_access_control"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_auto_haptic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hover_zoom_value"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hover_zoom_magnifier_size"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_test"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "lcd_curtain"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "ultrasonic_cane"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "rapid_key_input"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "rapid_key_input_menu_checked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_rotation_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "date_format"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "user_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "haptic_feedback_extra"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "power_saving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "blackgrey_powersaving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "data_powersaving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_adjust_touch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "button_key_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_light_pulse"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pointer_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "show_touches"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "display_battery_level"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pointer_speed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_shake"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_zooming_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_tilt_to_list_scrolling"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_tilt_to_scroll_list_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_panning"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_panning_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pan_to_browse_image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pan_to_browse_image_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_double_tap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pick_up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_peek_view_albums_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_peek_chapter_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_shake_scan_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_shake_refresh_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_zooming_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_palm_touch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "surface_tap_and_twist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_unlock_camera_short_cut"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_glance_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_web_navigate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_note_swap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_item_move"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_call_accept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_wake_up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_side_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "side_motion_one_hand_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "side_motion_peek"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "master_arc_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_browse"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_ripple_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_quick_glance"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_call_accept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_search"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_always"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_music_playback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_messaging"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "camera_quick_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_all_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_web_page"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_contact_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_email_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_album_and_photo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_email_body"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_single_photo_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_internet_window"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_now_playing_on_music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_bgm_on_lock_screen"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_note_page_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_call_accept_auto_start_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_view_master_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_view_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_button_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_highlight"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_show_up_indicator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_information_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_full_text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_pointer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_pregress_bar_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_speed_dial_tip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_sound_and_haptic_feedback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "multi_window_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "open_multi_window_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "multi_window_position"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_panel_brightness_adjustment"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_charing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_missed_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_voice_recording"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_incoming_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "any_screen_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "any_screen_running"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hand_adaptable_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "onehand_dialer_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "onehand_samsungkeypad_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "onehand_calculator_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "onehand_pattern_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "longlife_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "grip_rotation_lock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_unit"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_acceleration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_visual_feedback_icon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_adv_web"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_adv_email_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_adv_email_body"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_adv_readers_hub"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_adv_chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_scroll_adv_gmail_body"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "face_smart_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "smart_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "display_battery_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "edit_after_screen_capture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "open_camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation_second"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "key_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "key_backlight_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_pointer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_information_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_progress_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_speed_dial_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_webpage_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_icon_label"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_list_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_ripple_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_ink_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_hovering_air_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detachment_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detachment_alert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detach_application"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detachment_state"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detect_mode_disabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_gesture_guide"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_applications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_buddy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_buddy_text_suggestion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_incoming_call_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_message_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_air_call_accept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_email_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_voice_mail_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_alarm_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_schedule_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_unlock_screen_contents"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_message_contents"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "speak_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_script_injection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_script_injection_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_web_content_key_bindings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_auto_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_preset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_background_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_typeface"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_sec_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdseverity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_user_parameter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_rate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_pitch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_synth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_enabled_plugins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spell_checker_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "incall_power_button_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "ui_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_hotspot20_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_icon_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_icon_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_name_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "select_name_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hearing_aid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "torch_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound_air_command"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_sound_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_air_command"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_writing_haptic_feedback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string/jumbo v1, "spen_feedback_haptic_pen_gesture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "speak_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_script_injection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_script_injection_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_web_content_key_bindings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_auto_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_preset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_background_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_typeface"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_sec_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdseverity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "color_blind_user_parameter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_rate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_pitch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_synth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_default_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_enabled_plugins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "spell_checker_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "incall_power_button_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "ui_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_hotspot20_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    const-string v1, "air_button_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    const-string/jumbo v1, "pen_detach_application"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IPersonaPolicyManager;

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p2, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    .line 498
    iput-object p1, p0, Landroid/os/PersonaPolicyManager;->mContext:Landroid/content/Context;

    .line 499
    return-void
.end method

.method public static getKnoxKeys(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 485
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 486
    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 488
    :cond_11
    return-void
.end method

.method public static getKnoxKeysToSecure(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 493
    return-void
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_b

    .line 946
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 953
    :goto_a
    return-object v1

    .line 948
    :cond_b
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, addLockOnImage() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 953
    :goto_12
    const/4 v1, 0x0

    goto :goto_a

    .line 950
    :catch_14
    move-exception v0

    .line 951
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get addLockOnImage , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public getAirCommandEnabled(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 817
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAirCommandEnabled(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 821
    :goto_6
    return v1

    .line 818
    :catch_7
    move-exception v0

    .line 819
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getAllowAllShare(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 760
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowAllShare(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 764
    :goto_6
    return v1

    .line 761
    :catch_7
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllowContainerReset(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 665
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowContainerReset(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 669
    :goto_6
    return v1

    .line 666
    :catch_7
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllowCustomBadgeIcon(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 589
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomBadgeIcon(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 593
    :goto_6
    return v1

    .line 590
    :catch_7
    move-exception v0

    .line 591
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getAllowCustomColorIdentification(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomColorIdentification(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 650
    :goto_6
    return v1

    .line 647
    :catch_7
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getAllowCustomPersonaIcon(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 627
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomPersonaIcon(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 631
    :goto_6
    return v1

    .line 628
    :catch_7
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getAllowDLNADataTransfer(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 703
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowDLNADataTransfer(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 707
    :goto_6
    return v1

    .line 704
    :catch_7
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllowExportAndDeleteFiles(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 893
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 897
    :goto_6
    return v1

    .line 894
    :catch_7
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllowExportFiles(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 874
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowExportFiles(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 878
    :goto_6
    return v1

    .line 875
    :catch_7
    move-exception v0

    .line 876
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllowImportFiles(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowImportFiles(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 859
    :goto_6
    return v1

    .line 856
    :catch_7
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getAllowPrint(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 722
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowPrint(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 726
    :goto_6
    return v1

    .line 723
    :catch_7
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllowShortCutCreation(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 684
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowShortCutCreation(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 688
    :goto_6
    return v1

    .line 685
    :catch_7
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getAllowUniversalCallerId(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 836
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowUniversalCallerId(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 840
    :goto_6
    return v1

    .line 837
    :catch_7
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getCameraModeChangeEnabled(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getCameraModeChangeEnabled(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 574
    :goto_6
    return v1

    .line 571
    :catch_7
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDisableSwitchWidgetOnLockScreen(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 608
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getDisableSwitchWidgetOnLockScreen(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 612
    :goto_6
    return v1

    .line 609
    :catch_7
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getEncryptionStatus(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 532
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getEncryptionStatus(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 536
    :goto_6
    return v1

    .line 533
    :catch_7
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getGearSupportEnabled(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 779
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getGearSupportEnabled(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 783
    :goto_6
    return v1

    .line 780
    :catch_7
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getModifyLockScreenTimeout(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 741
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getModifyLockScreenTimeout(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 745
    :goto_6
    return v1

    .line 742
    :catch_7
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getPasswordLockPolicy(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getPasswordLockPolicy(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 517
    :goto_6
    return v1

    .line 514
    :catch_7
    move-exception v0

    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getPenWindowEnabled(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 798
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getPenWindowEnabled(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 802
    :goto_6
    return v1

    .line 799
    :catch_7
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 959
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_b

    .line 960
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 967
    :goto_a
    return-object v1

    .line 962
    :cond_b
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, getRCPDataPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 967
    :goto_12
    const/4 v1, 0x0

    goto :goto_a

    .line 964
    :catch_14
    move-exception v0

    .line 965
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 974
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_b

    .line 975
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 982
    :goto_a
    return-object v1

    .line 977
    :cond_b
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, getRCPDataPolicyForUser() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 982
    :goto_12
    const/4 v1, 0x0

    goto :goto_a

    .line 979
    :catch_14
    move-exception v0

    .line 980
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPDataPolicyForUser, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 989
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_b

    .line 990
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 997
    :goto_a
    return-object v1

    .line 992
    :cond_b
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, getRCPNotificationPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 997
    :goto_12
    const/4 v1, 0x0

    goto :goto_a

    .line 994
    :catch_14
    move-exception v0

    .line 995
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPNotificationPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public getSecureKeystoreEnabled(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 551
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getSecureKeystoreEnabled(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 555
    :goto_6
    return v1

    .line 552
    :catch_7
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getSwitchNotifEnabled(I)Z
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getSwitchNotifEnabled(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1055
    :goto_6
    return v1

    .line 1052
    :catch_7
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 1036
    const-string v0, "all_contacts"

    return-object v0
.end method

.method public isBadgeRequired()Z
    .registers 4

    .prologue
    .line 903
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_b

    .line 904
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1}, Landroid/content/pm/IPersonaPolicyManager;->isBadgeRequired()Z

    move-result v1

    .line 911
    :goto_a
    return v1

    .line 906
    :cond_b
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, isBadgeRequired() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 911
    :goto_12
    const/4 v1, 0x0

    goto :goto_a

    .line 908
    :catch_14
    move-exception v0

    .line 909
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isBadgeRequired , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public isBadgeRequiredFromOwner(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 917
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_b

    .line 918
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isBadgeRequiredFromOwner(Ljava/lang/String;)Z

    move-result v1

    .line 925
    :goto_a
    return v1

    .line 920
    :cond_b
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, isBadgeRequiredFromOwner(packageName) is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 925
    :goto_12
    const/4 v1, 0x0

    goto :goto_a

    .line 922
    :catch_14
    move-exception v0

    .line 923
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isBadgeRequiredFromOwner(packageName) , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public registerReceivers()V
    .registers 4

    .prologue
    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_a

    .line 932
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1}, Landroid/content/pm/IPersonaPolicyManager;->registerReceivers()V

    .line 940
    :goto_9
    return-void

    .line 934
    :cond_a
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, registerReceiversis not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_9

    .line 936
    :catch_12
    move-exception v0

    .line 937
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get registerReceivers, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAirCommandEnabled(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 808
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAirCommandEnabled(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 812
    :goto_5
    return-void

    .line 809
    :catch_6
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowAllShare(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 751
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowAllShare(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 755
    :goto_5
    return-void

    .line 752
    :catch_6
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowContainerReset(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 656
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowContainerReset(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 660
    :goto_5
    return-void

    .line 657
    :catch_6
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowCustomBadgeIcon(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 580
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomBadgeIcon(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 584
    :goto_5
    return-void

    .line 581
    :catch_6
    move-exception v0

    .line 582
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowCustomColorIdentification(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 637
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomColorIdentification(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 641
    :goto_5
    return-void

    .line 638
    :catch_6
    move-exception v0

    .line 639
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowCustomPersonaIcon(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 618
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomPersonaIcon(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 622
    :goto_5
    return-void

    .line 619
    :catch_6
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowDLNADataTransfer(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 694
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowDLNADataTransfer(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 698
    :goto_5
    return-void

    .line 695
    :catch_6
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowExportAndDeleteFiles(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 884
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowExportAndDeleteFiles(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 888
    :goto_5
    return-void

    .line 885
    :catch_6
    move-exception v0

    .line 886
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowExportFiles(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowExportFiles(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 869
    :goto_5
    return-void

    .line 866
    :catch_6
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowImportFiles(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 846
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowImportFiles(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 850
    :goto_5
    return-void

    .line 847
    :catch_6
    move-exception v0

    .line 848
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowPrint(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 713
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowPrint(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 717
    :goto_5
    return-void

    .line 714
    :catch_6
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowShortCutCreation(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 675
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowShortCutCreation(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 679
    :goto_5
    return-void

    .line 676
    :catch_6
    move-exception v0

    .line 677
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setAllowUniversalCallerId(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 827
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowUniversalCallerId(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 831
    :goto_5
    return-void

    .line 828
    :catch_6
    move-exception v0

    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setCameraModeChangeEnabled(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 561
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setCameraModeChangeEnabled(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 565
    :goto_5
    return-void

    .line 562
    :catch_6
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setDisableSwitchWidgetOnLockScreen(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setDisableSwitchWidgetOnLockScreen(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 603
    :goto_5
    return-void

    .line 600
    :catch_6
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setEncryptionStatus(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setEncryptionStatus(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 527
    :goto_5
    return-void

    .line 524
    :catch_6
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setGearSupportEnabled(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 770
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setGearSupportEnabled(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 774
    :goto_5
    return-void

    .line 771
    :catch_6
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setModifyLockScreenTimeout(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 732
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setModifyLockScreenTimeout(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 736
    :goto_5
    return-void

    .line 733
    :catch_6
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setPasswordLockPolicy(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setPasswordLockPolicy(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 508
    :goto_5
    return-void

    .line 505
    :catch_6
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setPenWindowEnabled(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 789
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setPenWindowEnabled(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 793
    :goto_5
    return-void

    .line 790
    :catch_6
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1003
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_b

    .line 1004
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1011
    :goto_a
    return v1

    .line 1006
    :cond_b
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, setRCPDataPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 1011
    :goto_12
    const/4 v1, 0x0

    goto :goto_a

    .line 1008
    :catch_14
    move-exception v0

    .line 1009
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1017
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_b

    .line 1018
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1025
    :goto_a
    return v1

    .line 1020
    :cond_b
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, setRCPNotificationPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 1025
    :goto_12
    const/4 v1, 0x0

    goto :goto_a

    .line 1022
    :catch_14
    move-exception v0

    .line 1023
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPNotificationPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public setSecureKeystoreEnabled(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setSecureKeystoreEnabled(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 546
    :goto_5
    return-void

    .line 543
    :catch_6
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setSwitchNotifEnabled(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1042
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setSwitchNotifEnabled(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1046
    :goto_5
    return-void

    .line 1043
    :catch_6
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setSyncPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1031
    return-void
.end method
