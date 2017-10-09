.class public Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSearchFilterMenu"
.end annotation


# static fields
.field private static final KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

.field private static final RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

.field private static final SUB_USER_REMOVED_MENU:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemovekeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f100682

    .line 9749
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f10065a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f10065e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f10065f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f100667

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f1006be

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f1006bf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f1006c0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f1006c2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f1006c3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f100697

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006ab

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f1006a8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f100679

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f100642

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f1006cf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f1006b0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f10067d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f10064d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f10064e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f10064f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f100650

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10064b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f100652

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f100653

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "pick_up"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    .line 9815
    const/16 v0, 0x43

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f10065a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f10065e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f10065f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f100667

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f1006be

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f1006bf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f1006c0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f1006c2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f1006c3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f100697

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006ab

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f1006a8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f100679

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f100642

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f1006cf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f1006b0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f10067d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f10064d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f10064e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f10064f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f100650

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10064b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f100652

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f100653

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f10065b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f1006ae

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f100698

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f1006a4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f10063e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f100641

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f1006ec

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x7f10063f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "pick_up"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "samsung_captioning_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "unlock_set_fingerprint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

    .line 9895
    const/16 v0, 0x6a

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f10065f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f10066b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f1006bc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f10066c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f10066e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f10066f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f1006a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f100686

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f1006a2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "key_multi_window"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006a3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f1006c8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f100697

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f1006ab

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f1006a8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f100679

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f100698

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x7f100641

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f100642

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f1006b0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f10064a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10064d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f10064e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f10064f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f100650

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f10064b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f100652

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f100651

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f100653

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f100690

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f1006d1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x7f1006a4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x7f1006d7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x7f1006c4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x7f100648

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x7f1006d7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x7f100685

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x7f100645

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x7f10063e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x7f1006ec

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x7f10063f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "help"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "lock_sounds"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "onehand_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "onehand_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "lockscreen_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "both_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "unlock_set_fingerprint"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "recommended_apps_phone"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "turn_over"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "palm_swipe"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "bgm_on_lock_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "palm_swipe_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "security_policy_updates"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "security_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "SIMAlert"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "LockMyMobile"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "encryption"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "sdEncpref"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "RemoteControls"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "SIMAlert"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "ruim_lock_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "LockMyMobile"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "nfc_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "open_multi_window_view"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "popup_view_shortcut"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "app_ops"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "new_security_update_service"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "new_security_update_service"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "credentials_management"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "advanced_security"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "share_acc_setting_menu"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "samsung_captioning_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Recognition_preference_key"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "app_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "othersound_samsungapplications"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    .line 9250
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    .line 9251
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9252
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9242
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9242
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9242
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 9731
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9733
    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 9743
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9744
    const/4 v0, 0x0

    .line 9746
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 9256
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 9257
    .local v6, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 9258
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_13

    .line 9259
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 9260
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9261
    const-string v11, "lock_screen_clock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9262
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9263
    const-string v11, "lock_screen_myprofile_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9264
    const-string v11, "owner_info_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9265
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9266
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9267
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9268
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9269
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9270
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9271
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9272
    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9273
    const-string v11, "quick_note"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9274
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9275
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9276
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9277
    const-string v11, "lock_screen_magazine_card"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9278
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9279
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9280
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9281
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9282
    const-string v11, "dualclock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9283
    const-string v11, "homecity_timezone"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9284
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9285
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9286
    const-string v11, "clock_size"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9287
    const-string v11, "clock_size_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9288
    const-string v11, "show_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9289
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9290
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9291
    const-string v11, "health_info_panel"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9292
    const-string v11, "auto_swipe"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9551
    :goto_0
    :sswitch_0
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 9552
    const v11, 0x7f1006a8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9556
    :cond_0
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "easy_mode_switch"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_1

    .line 9557
    const v11, 0x7f1006a9

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9558
    const v11, 0x7f100652

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9562
    :cond_1
    const/4 v2, 0x0

    .line 9563
    .local v2, "isDisabledSvoice":Z
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 9565
    .local v7, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_3

    .line 9566
    :try_start_0
    const-string v11, "com.vlingo.midas"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9567
    const-string v11, "com.vlingo.midas"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2

    const-string v11, "com.vlingo.midas"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 9569
    :cond_2
    const/4 v2, 0x1

    .line 9574
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 9576
    .local v3, "isSVoiceInstalled":Z
    :try_start_1
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.vlingo.midas"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 9577
    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "SVoice is installed."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9582
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    .line 9583
    :cond_4
    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "svoice_settings is disabled"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 9584
    const v11, 0x7f100653

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9588
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v11

    if-nez v11, :cond_6

    .line 9590
    :try_start_2
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.cloudagent"

    const/4 v13, 0x5

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 9597
    :cond_6
    :goto_3
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wmanager_connected"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 9598
    .local v8, "state":I
    if-ne v8, v9, :cond_1c

    .line 9607
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-eq v11, v9, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-nez v11, :cond_8

    .line 9609
    :cond_7
    const-string v11, "sim_lock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9610
    const-string v11, "sim_toggle"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9611
    const-string v11, "sim_pin"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9623
    :cond_8
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "default_input_method"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9624
    .local v1, "inputMethodId":Ljava/lang/String;
    const-string v11, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 9625
    const-string v11, "sip_feedback_sound"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9626
    const-string v11, "sip_feedback_vibration"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9630
    :cond_9
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "access_control_use"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_a

    .line 9632
    const-string v11, "direct_accesscontrol"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9638
    :cond_a
    const-string v11, "captioning_typeface"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9639
    const-string v11, "captioning_foreground_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9640
    const-string v11, "captioning_edge_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9641
    const-string v11, "captioning_edge_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9642
    const-string v11, "captioning_background_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9643
    const-string v11, "captioning_background_opacity"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9644
    const-string v11, "captioning_foreground_opacity"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9646
    const-string v11, "captioning_window_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9647
    const-string v11, "captioning_window_opacity"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9651
    const/4 v5, 0x0

    .line 9679
    .local v5, "mIsEmerMode":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_1d

    move v4, v9

    .line 9681
    .local v4, "isSecondaryUser":Z
    :goto_5
    if-nez v4, :cond_b

    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 9682
    :cond_b
    const-string v9, "roaming_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9689
    :cond_c
    :goto_6
    if-eqz v4, :cond_d

    .line 9690
    const-string v9, "lockscreen_wallpaper"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9691
    const-string v9, "both_wallpaper"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9695
    :cond_d
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->access$400(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 9696
    const-string v9, "pref_add_samsung_account"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9700
    :cond_e
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 9701
    const-string v9, "sview_color"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9702
    const-string v9, "sview_color_2014"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9703
    const-string v9, "sview_mini_wallpaper"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9704
    const-string v9, "sview_style_clock"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9705
    const-string v9, "sview_edge_cover_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9706
    const-string v9, "select_info"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9707
    const-string v9, "weather"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9708
    const-string v9, "weather_tmr"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9709
    const-string v9, "walking_mate"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9710
    const-string v9, "scover_airmessage"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9711
    const-string v9, "automatic_unlock"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9712
    const-string v9, "show_in_call_screen"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9722
    :goto_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-eqz v9, :cond_f

    .line 9723
    const-string v9, "share_acc_setting_menu"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9724
    const-string v9, "shared_accessibility_export_import"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9725
    const-string v9, "shared_accessibility_share"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9727
    :cond_f
    return-void

    .line 9294
    .end local v1    # "inputMethodId":Ljava/lang/String;
    .end local v2    # "isDisabledSvoice":Z
    .end local v3    # "isSVoiceInstalled":Z
    .end local v4    # "isSecondaryUser":Z
    .end local v5    # "mIsEmerMode":Z
    .end local v7    # "packMgr":Landroid/content/pm/PackageManager;
    .end local v8    # "state":I
    :cond_10
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9295
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9296
    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9297
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9298
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9299
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9300
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_11

    .line 9301
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9302
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9303
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9305
    :cond_11
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 9306
    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9307
    :cond_12
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9308
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9309
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9310
    const-string v11, "auto_swipe"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9312
    :cond_13
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 9314
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9315
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9316
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9317
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9318
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9319
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9320
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9321
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9322
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9323
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9324
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9325
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9326
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9327
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9328
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9332
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9333
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9355
    :cond_14
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    .line 9357
    :sswitch_1
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9358
    const-string v11, "NONE"

    const-string v12, "WATERCOLOUR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_16

    .line 9359
    :cond_15
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9360
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9362
    :cond_16
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9363
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9364
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9365
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9366
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9367
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9368
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9369
    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9370
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9371
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9372
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9373
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9379
    :sswitch_2
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9380
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9381
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9382
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9383
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9384
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9385
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9386
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9387
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9388
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9389
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9390
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9391
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9392
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9393
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9394
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9398
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9399
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9402
    :sswitch_3
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9403
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9404
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9405
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9406
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9407
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9408
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9409
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9410
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9411
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9412
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9413
    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9414
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9418
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9419
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9444
    :sswitch_4
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9445
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9446
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9447
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9448
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9449
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9450
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9451
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9452
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9453
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9454
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9455
    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9456
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9460
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9461
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9466
    :cond_17
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_19

    .line 9467
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 9468
    const-string v11, "lock_screen_widget_options"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9469
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9470
    const-string v11, "safetyzone_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9471
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9472
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9473
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9474
    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9475
    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9476
    const-string v11, "multiple_lock_screen"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9477
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9478
    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9479
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9480
    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9481
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9482
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9483
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9484
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9485
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9486
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9487
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9488
    const-string v11, "clock_size"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9489
    const-string v11, "clock_size_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9490
    const-string v11, "show_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9491
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9492
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9494
    :cond_18
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9495
    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9496
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9497
    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9498
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9499
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9500
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9501
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9502
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9504
    :cond_19
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 9506
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9507
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9508
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9509
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9510
    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9511
    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9512
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9513
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    const/high16 v12, 0x20000

    if-ne v11, v12, :cond_1a

    .line 9514
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9516
    :cond_1a
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9517
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9518
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9520
    :cond_1b
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9521
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9522
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9523
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9524
    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9525
    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9526
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9527
    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9528
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9529
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9530
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9531
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9532
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9533
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9534
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9535
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9536
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_0

    .line 9540
    :sswitch_5
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9545
    :sswitch_6
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9578
    .restart local v2    # "isDisabledSvoice":Z
    .restart local v3    # "isSVoiceInstalled":Z
    .restart local v7    # "packMgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 9579
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "SVoice is not installed."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9580
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 9591
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 9592
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "Cloud package not found"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9593
    const v11, 0x7f100641

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 9603
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "state":I
    :cond_1c
    const-string v11, "unlock_set_smart"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v1    # "inputMethodId":Ljava/lang/String;
    .restart local v5    # "mIsEmerMode":Z
    :cond_1d
    move v4, v10

    .line 9679
    goto/16 :goto_5

    .line 9683
    .restart local v4    # "isSecondaryUser":Z
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_UseChameleon"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 9684
    const-string v11, "persist.sys.roaming_menu"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v9, :cond_c

    .line 9685
    const-string v9, "roaming_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 9714
    :cond_1f
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 9715
    const-string v9, "weather"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9717
    :cond_20
    const-string v9, "weather_tmr"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9572
    .end local v1    # "inputMethodId":Ljava/lang/String;
    .end local v3    # "isSVoiceInstalled":Z
    .end local v4    # "isSecondaryUser":Z
    .end local v5    # "mIsEmerMode":Z
    .end local v8    # "state":I
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .line 9355
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x61000 -> :sswitch_2
    .end sparse-switch

    .line 9536
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_5
        0x40000 -> :sswitch_6
        0x50000 -> :sswitch_6
        0x60000 -> :sswitch_6
    .end sparse-switch
.end method
