.class public Lcom/android/settings/SettingsCommonPreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SettingsCommonPreference.java"


# instance fields
.field private isNearbyReceiverRegistered:Z

.field private mCalendar:Landroid/preference/PreferenceScreen;

.field private mCall:Landroid/preference/PreferenceScreen;

.field private mContact:Landroid/preference/PreferenceScreen;

.field private mEmail:Landroid/preference/PreferenceScreen;

.field private mGallery:Landroid/preference/PreferenceScreen;

.field private mInternet:Landroid/preference/PreferenceScreen;

.field private mIsShowNfcMenu:Z

.field private mJPNContact:Landroid/preference/PreferenceScreen;

.field private mMms:Landroid/preference/PreferenceScreen;

.field private mNearbyReceiver:Landroid/content/BroadcastReceiver;

.field private mNearbySettings:Landroid/preference/PreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcSettings:Landroid/preference/PreferenceScreen;

.field private mSPlanner:Landroid/preference/PreferenceScreen;

.field private mShareContacts:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->mIsShowNfcMenu:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->isNearbyReceiverRegistered:Z

    .line 354
    new-instance v0, Lcom/android/settings/SettingsCommonPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsCommonPreference$1;-><init>(Lcom/android/settings/SettingsCommonPreference;)V

    iput-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v0, Lcom/android/settings/SettingsCommonPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsCommonPreference$2;-><init>(Lcom/android/settings/SettingsCommonPreference;)V

    iput-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsCommonPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsCommonPreference;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsCommonPreference;->updateNfcSummary()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsCommonPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsCommonPreference;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsCommonPreference;->updateNearbySummary()V

    return-void
.end method

.method private updateApplicationMenu()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "shopdemo"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 207
    .local v5, "shop":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 210
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.android.coreapps"

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    const-string v6, "share_with_contacts"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mShareContacts:Landroid/preference/PreferenceScreen;

    .line 216
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mShareContacts:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mShareContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mShareContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    const-string v6, "share_with_contacts"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 222
    :cond_0
    const-string v6, "calendar_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mCalendar:Landroid/preference/PreferenceScreen;

    .line 223
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "sSalesCode":Ljava/lang/String;
    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "XAR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "XAC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_splanner"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_14

    .line 230
    :cond_2
    const-string v6, "calendar_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 237
    :cond_3
    :goto_1
    const-string v6, "call_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mCall:Landroid/preference/PreferenceScreen;

    .line 238
    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v5, v10, :cond_15

    .line 239
    :cond_4
    const-string v6, "call_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 246
    :cond_5
    :goto_2
    const-string v6, "contact_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mContact:Landroid/preference/PreferenceScreen;

    .line 247
    const-string v6, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 248
    :cond_6
    const-string v6, "contact_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 255
    :cond_7
    :goto_3
    const-string v6, "contact_settings_jpn"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mJPNContact:Landroid/preference/PreferenceScreen;

    .line 256
    const-string v6, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 257
    const-string v6, "contact_settings_jpn"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 264
    :cond_8
    :goto_4
    const-string v6, "email_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mEmail:Landroid/preference/PreferenceScreen;

    .line 265
    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 266
    const-string v6, "email_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 273
    :cond_9
    :goto_5
    const-string v6, "gallery_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mGallery:Landroid/preference/PreferenceScreen;

    .line 274
    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 275
    const-string v6, "gallery_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 282
    :cond_a
    :goto_6
    const-string v6, "browser_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mInternet:Landroid/preference/PreferenceScreen;

    .line 283
    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 284
    const-string v6, "browser_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 291
    :cond_b
    :goto_7
    const-string v6, "message_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mMms:Landroid/preference/PreferenceScreen;

    .line 292
    const-string v6, "KDI"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 293
    :cond_c
    const-string v6, "message_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 300
    :cond_d
    :goto_8
    const-string v6, "splanner_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mSPlanner:Landroid/preference/PreferenceScreen;

    .line 301
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "XAR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "XAC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_splanner"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1c

    .line 307
    :cond_e
    const-string v6, "splanner_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 314
    :cond_f
    :goto_9
    const/4 v2, 0x0

    .line 315
    .local v2, "isDisabledSvoice":Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 317
    .local v3, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_11

    .line 318
    :try_start_1
    const-string v6, "com.vlingo.midas"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 319
    const-string v6, "com.vlingo.midas"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    const-string v6, "com.vlingo.midas"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_11

    .line 321
    :cond_10
    const/4 v2, 0x1

    .line 328
    :cond_11
    :goto_a
    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    if-nez v2, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.vlingo.midas"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 331
    :cond_12
    const-string v6, "svoice_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 333
    :cond_13
    return-void

    .line 212
    .end local v2    # "isDisabledSvoice":Z
    .end local v3    # "packMgr":Landroid/content/pm/PackageManager;
    .end local v4    # "sSalesCode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "share_with_contacts"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "sSalesCode":Ljava/lang/String;
    :cond_14
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mCalendar:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 233
    const-string v6, "calendar_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    :cond_15
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mCall:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 242
    const-string v6, "call_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 249
    :cond_16
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mContact:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 251
    const-string v6, "contact_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 258
    :cond_17
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mJPNContact:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mJPNContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mJPNContact:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 260
    const-string v6, "contact_settings_jpn"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 267
    :cond_18
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mEmail:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mEmail:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mEmail:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 269
    const-string v6, "email_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 276
    :cond_19
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mGallery:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mGallery:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mGallery:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 278
    const-string v6, "gallery_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 285
    :cond_1a
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mInternet:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mInternet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mInternet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 287
    const-string v6, "browser_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 294
    :cond_1b
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mMms:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mMms:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mMms:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 296
    const-string v6, "message_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 308
    :cond_1c
    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mSPlanner:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mSPlanner:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/SettingsCommonPreference;->mSPlanner:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 310
    const-string v6, "splanner_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 324
    .restart local v2    # "isDisabledSvoice":Z
    .restart local v3    # "packMgr":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v6

    goto/16 :goto_a
.end method

.method private updateNFCShareMenu()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 145
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "sSalesCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 148
    .local v1, "isKioskContainer":Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.nfc"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 151
    :cond_1
    const-string v7, "nfc_setting"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 152
    iput-boolean v9, p0, Lcom/android/settings/SettingsCommonPreference;->mIsShowNfcMenu:Z

    .line 162
    :cond_2
    const-string v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    .line 163
    :cond_4
    const-string v7, "nearby_setting"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 164
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbySettings:Landroid/preference/PreferenceScreen;

    .line 168
    :cond_5
    const-string v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    .line 169
    :cond_7
    const-string v7, "screen_mirroring_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 172
    :cond_8
    if-eqz v1, :cond_9

    .line 173
    const-string v7, "print_setting"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 176
    :cond_9
    const/4 v3, 0x0

    .line 177
    .local v3, "mTetheredData":I
    const-string v7, "SPRINT"

    const-string v8, "ALL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 179
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsCommonPreference;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 180
    .local v6, "wm":Landroid/net/wifi/WifiManager;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 181
    .local v4, "msg":Landroid/os/Message;
    const/16 v7, 0x15

    iput v7, v4, Landroid/os/Message;->what:I

    .line 182
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    .line 183
    const-string v7, "SettingsCommonPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTetheredData: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "wm":Landroid/net/wifi/WifiManager;
    :cond_a
    const/4 v2, 0x1

    .line 187
    .local v2, "isSupportMirrorLink":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.android.app.mirrorlink"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-eqz v2, :cond_d

    const-string v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "TMB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 200
    :cond_b
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 201
    const-string v7, "nfc_osaifukeitai_setting"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    .line 203
    :cond_c
    return-void

    .line 195
    :cond_d
    const-string v7, "mirror_link_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 191
    if-eqz v2, :cond_e

    const-string v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "TMB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 195
    :cond_e
    const-string v7, "mirror_link_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_f

    const-string v8, "VZW"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "TMB"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 195
    :goto_1
    throw v7

    :cond_f
    const-string v8, "mirror_link_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsCommonPreference;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateNearbySummary()V
    .locals 4

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbySettings:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 123
    const/4 v1, -0x1

    .line 126
    .local v1, "started":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.samsung.android.nearby.mediaserver.NEARBY_SERVER_STARTED"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbySettings:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0a03a1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 136
    .end local v1    # "started":I
    :cond_0
    :goto_1
    return-void

    .line 127
    .restart local v1    # "started":I
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbySettings:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0a03a2

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method

.method private updateNfcSummary()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->mIsShowNfcMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcSettings:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a03a2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcSettings:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a03a1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/settings/SettingsCommonPreference;->updateNfcSummary()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/SettingsCommonPreference;->updateNearbySummary()V

    .line 141
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "menu"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "s":Ljava/lang/String;
    const-string v1, "application_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsCommonPreference;->addPreferencesFromResource(I)V

    .line 68
    :cond_0
    :goto_0
    const-string v1, "nfc_setting"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcSettings:Landroid/preference/PreferenceScreen;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 71
    const-string v1, "nearby_setting"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsCommonPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbySettings:Landroid/preference/PreferenceScreen;

    .line 72
    return-void

    .line 62
    :cond_1
    const-string v1, "nfc_and_share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsCommonPreference;->addPreferencesFromResource(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsCommonPreference;->updateNFCShareMenu()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 101
    iget-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->mIsShowNfcMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->isNearbyReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->isNearbyReceiverRegistered:Z

    .line 109
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 338
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "s":Ljava/lang/String;
    const-string v3, "svoice_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    const-string v0, "com.vlingo.midas.gui.ConversationActivity"

    .line 341
    .local v0, "fragment":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 342
    const-string v0, "com.vlingo.midas.settings.SettingsScreen"

    .line 344
    :cond_0
    const-string v3, "SettingsCommonPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fragment of svoice : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.vlingo.midas"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v3, "from_settings"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsCommonPreference;->startActivity(Landroid/content/Intent;)V

    .line 350
    .end local v0    # "fragment":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 80
    const-string v0, "application_settings"

    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "menu"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsCommonPreference;->updateApplicationMenu()V

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->mIsShowNfcMenu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsCommonPreference;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbySettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->isNearbyReceiverRegistered:Z

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/SettingsCommonPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsCommonPreference;->mNearbyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.SERVER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsCommonPreference;->isNearbyReceiverRegistered:Z

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/SettingsCommonPreference;->updateSummary()V

    .line 95
    return-void
.end method
