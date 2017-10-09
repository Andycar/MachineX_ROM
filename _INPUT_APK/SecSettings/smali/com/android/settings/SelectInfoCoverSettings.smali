.class public Lcom/android/settings/SelectInfoCoverSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SelectInfoCoverSettings.java"


# instance fields
.field private mAirMessage:Landroid/preference/CheckBoxPreference;

.field private mPedometerDBKey:Ljava/lang/String;

.field private mSHealthItentExtra_type:Ljava/lang/String;

.field private mShortcutCamera:Landroid/preference/CheckBoxPreference;

.field private mShortcutCameraDBKey:Ljava/lang/String;

.field private mWalkingMate:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/CheckBoxPreference;

.field private mWeatherAgreed:Z

.field private mWeatherDBKey:Ljava/lang/String;

.field private mWeatherTMR:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    .line 73
    iput-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SelectInfoCoverSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SelectInfoCoverSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SelectInfoCoverSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/SelectInfoCoverSettings;->saveSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SelectInfoCoverSettings;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private checkGuidePopupAvailable(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 475
    const/4 v0, 0x0

    .line 478
    .local v0, "doNotShow":Z
    iget-object v5, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_1

    .line 479
    const-string v2, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    .line 485
    .local v2, "spName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 487
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 488
    const-string v5, "DoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 489
    :cond_0
    if-nez v0, :cond_3

    :goto_1
    return v3

    .line 480
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_2

    .line 481
    const-string v2, "com.android.settings.SViewCoverPopup.Weather"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .line 483
    .end local v2    # "spName":Ljava/lang/String;
    :cond_2
    const-string v2, "com.android.settings.SViewCoverPopup.Pedometer"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    move v3, v4

    .line 489
    goto :goto_1
.end method

.method private clickItem(Landroid/preference/Preference;)V
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 226
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_2

    .line 227
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick, Camera shortcut :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    :cond_0
    :goto_1
    return-void

    .line 229
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 231
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_9

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "shealth_pedometer_status_running"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 234
    .local v7, "pedometerstatus":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick shealth_pedometer_status_running-1 walk_mate-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": sendBroadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v6, "mIntent":Landroid/content/Intent;
    const-string v9, "visibility"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 235
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 245
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "com.sec.android.app.shealth"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 246
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v4, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0a1016

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a1017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a1018

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "mDialogMsg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/SelectInfoCoverSettings$1;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectInfoCoverSettings$1;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/SelectInfoCoverSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectInfoCoverSettings$2;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    new-instance v9, Lcom/android/settings/SelectInfoCoverSettings$3;

    invoke-direct {v9, p0}, Lcom/android/settings/SelectInfoCoverSettings$3;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 274
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 282
    .end local v4    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v5    # "mDialogMsg":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "shealth_profile_initialized"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 284
    .local v8, "sHealthProfileState":I
    const-string v9, "SelectInfoCoverSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick - shealth_profile_initialized:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez v8, :cond_6

    .line 287
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0a0fdd

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 289
    const v9, 0x7f0a0fe1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 290
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 291
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/SelectInfoCoverSettings$4;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectInfoCoverSettings$4;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/SelectInfoCoverSettings$5;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectInfoCoverSettings$5;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    new-instance v9, Lcom/android/settings/SelectInfoCoverSettings$6;

    invoke-direct {v9, p0}, Lcom/android/settings/SelectInfoCoverSettings$6;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 318
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    const-string v9, "SelectItemDisplay"

    const-string v10, "onPreferenceTreeClick walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v6    # "mIntent":Landroid/content/Intent;
    const-string v9, "visibility"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 329
    .end local v6    # "mIntent":Landroid/content/Intent;
    .end local v8    # "sHealthProfileState":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_3
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick walk_mate-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": sendBroadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v6    # "mIntent":Landroid/content/Intent;
    const-string v9, "visibility"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 329
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 338
    .end local v7    # "pedometerstatus":I
    :cond_9
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_f

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->hasSViewCoverWeather2014(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 341
    :cond_a
    const-string v9, "SelectInfoCoverSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick, CurrentLocation : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / Weather checked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-boolean v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 344
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 345
    .restart local v6    # "mIntent":Landroid/content/Intent;
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$WeatherSettingsFragmentActivity"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 348
    const-string v9, "sview"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 350
    :cond_b
    const-string v9, "sview"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 355
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_c
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->checkNetwork()Z

    move-result v9

    if-nez v9, :cond_d

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a0fd2

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 360
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    :goto_5
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->sendSViewCoverWeatherIntent(Landroid/content/Context;Z)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_show_info"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 367
    .local v0, "LockScreenShowAdditionalInfo":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->sendLockScreenWeatherIntent(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 360
    .end local v0    # "LockScreenShowAdditionalInfo":I
    :cond_e
    const/4 v9, 0x0

    goto :goto_5

    .line 372
    :cond_f
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherTMR:Landroid/preference/Preference;

    if-ne p1, v9, :cond_11

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->checkWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 374
    const-string v9, "SelectInfoCoverSettings"

    const-string v10, "onPreferenceTreeClick, call the WeatherWidget"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "PACKAGE"

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 380
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a0fd8

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 386
    :cond_11
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_0

    .line 392
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_message"

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    :goto_6
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 393
    :catch_0
    move-exception v2

    .line 394
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 392
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    const/4 v9, 0x0

    goto :goto_6
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 449
    const/4 v8, 0x0

    .line 451
    .local v8, "result":I
    if-nez p0, :cond_0

    move v9, v8

    .line 471
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 454
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 456
    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 460
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 468
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v9, v8

    .line 471
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 464
    .end local v9    # "result":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 465
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSharedPreferences(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 495
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 496
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    return-void
.end method

.method private showGuidePopup(Landroid/preference/Preference;)V
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v11, 0x7f0a0fdc

    const v8, 0x7f0a0fdb

    const v10, 0x104000a

    const/high16 v9, 0x1040000

    .line 503
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_1

    .line 504
    const v7, 0x7f0a1617

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 506
    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, "popupMessage":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 525
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 527
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040085

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 528
    .local v3, "layout":Landroid/view/View;
    const v7, 0x7f100169

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 529
    .local v4, "message":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    const v7, 0x7f10016a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 531
    .local v1, "check":Landroid/widget/CheckBox;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 532
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 533
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 535
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_5

    .line 536
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$7;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$8;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 547
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$9;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$9;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 596
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 597
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 598
    return-void

    .line 508
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "check":Landroid/widget/CheckBox;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/view/View;
    .end local v4    # "message":Landroid/widget/TextView;
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v5    # "popupMessage":Ljava/lang/String;
    .end local v6    # "popupTitle":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_3

    .line 510
    const v7, 0x7f0a0fd5

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 511
    .restart local v6    # "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 512
    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 514
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 516
    .end local v5    # "popupMessage":Ljava/lang/String;
    .end local v6    # "popupTitle":Ljava/lang/String;
    :cond_3
    const v7, 0x7f0a0fdd

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 517
    .restart local v6    # "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 518
    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 520
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 555
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "check":Landroid/widget/CheckBox;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "layout":Landroid/view/View;
    .restart local v4    # "message":Landroid/widget/TextView;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_6

    .line 556
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$10;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$10;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$11;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$11;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$12;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$12;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 576
    :cond_6
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$13;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$13;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$14;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$14;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 587
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$15;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$15;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 433
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 434
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v4

    .line 438
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 439
    .local v2, "isWifiAvail":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 440
    if-nez v3, :cond_2

    move v4, v2

    .line 442
    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 446
    .local v1, "isMobileAvail":Z
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v6, 0x7f0700c7

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 94
    .local v2, "ps":Landroid/preference/PreferenceScreen;
    const-string v6, "shortcut_camera"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v6, "weather_tmr"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherTMR:Landroid/preference/Preference;

    .line 98
    const-string v6, "scover_airmessage"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    .line 100
    const-string v6, "walking_mate"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 105
    const-string v6, "set_shortcuts_mode"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    .line 106
    const-string v6, "lock_additional_weather"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    .line 107
    const-string v6, "lock_additional_steps"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    .line 108
    const-string v6, "WALKMATE_TMR"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getSviewCoverAppLevel(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 111
    :cond_0
    const-string v6, "shortcut_camera"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isPedometerSupported(Landroid/content/Context;)Z

    move-result v1

    .line 120
    .local v1, "mPedometerSupported":Z
    const/4 v3, 0x0

    .line 121
    .local v3, "styleClockEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSViewStyleClockEnabled(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v3

    .line 123
    :cond_2
    if-eqz v3, :cond_3

    .line 124
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 125
    const-string v6, "weather_tmr"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_4

    if-eqz v3, :cond_5

    .line 129
    :cond_4
    const-string v6, "walking_mate"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 132
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 133
    const-string v6, "scover_airmessage"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 137
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 138
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 139
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 146
    :cond_7
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_8

    .line 147
    sget v6, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "targetKey":Ljava/lang/String;
    sget v6, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-ne v6, v5, :cond_b

    .line 151
    .local v5, "value":Z
    :goto_2
    const-string v6, "weather"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 152
    iget-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 153
    iget-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v4    # "targetKey":Ljava/lang/String;
    .end local v5    # "value":Z
    :cond_8
    return-void

    .line 113
    .end local v1    # "mPedometerSupported":Z
    .end local v3    # "styleClockEnabled":Z
    :cond_9
    const-string v6, "shortcut_camera"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 114
    const-string v6, "weather_cover"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    .line 115
    const-string v6, "walk_mate"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    .line 116
    const-string v6, "WALKMATE"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    .restart local v1    # "mPedometerSupported":Z
    .restart local v3    # "styleClockEnabled":Z
    :cond_a
    const-string v6, "weather_tmr"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 142
    const-string v6, "weather_tmr"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v4    # "targetKey":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-boolean v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mOpenDetailMenu:Z

    if-eqz v2, :cond_0

    .line 186
    sget v2, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 187
    sget v2, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-ne v2, v1, :cond_1

    .local v1, "value":Z
    :goto_0
    move-object v0, p2

    .line 188
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 189
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "value":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 198
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    .line 199
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 222
    :goto_1
    return v2

    .line 187
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherTMR:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    .line 205
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 210
    iget-boolean v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    .line 212
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    .line 215
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->checkGuidePopupAvailable(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->showGuidePopup(Landroid/preference/Preference;)V

    .line 217
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    .line 221
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    .line 222
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->updateState()V

    .line 165
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_message"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isH_Device()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SelectInfoCoverSettings;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_4
    iput-boolean v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    .line 180
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 168
    goto :goto_0

    :cond_4
    move v0, v2

    .line 169
    goto :goto_1

    :cond_5
    move v0, v2

    .line 170
    goto :goto_2

    :cond_6
    move v0, v2

    .line 174
    goto :goto_3

    :cond_7
    move v1, v2

    .line 179
    goto :goto_4
.end method
