.class public Lcom/android/settings/FingerAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerAirViewSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mMagnifier:Landroid/preference/SwitchPreferenceScreen;

.field private mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    .line 113
    new-instance v0, Lcom/android/settings/FingerAirViewSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewSettingsMenu$1;-><init>(Lcom/android/settings/FingerAirViewSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettingsMenu;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettingsMenu;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewSettingsMenu;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettingsMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewSettingsMenu;->broadcastFingerAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettingsMenu;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettingsMenu;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewSettingsMenu;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 343
    const/4 v1, 0x0

    .line 345
    .local v1, "isAllDisabled":I
    const-string v8, "finger_air_view_magnifier"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 346
    .local v2, "magnifier":I
    const-string v8, "finger_air_view_information_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 347
    .local v0, "informationPreview":I
    const-string v8, "finger_air_view_pregress_bar_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 348
    .local v3, "progressBarPreview":I
    const-string v8, "finger_air_view_speed_dial_tip"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 349
    .local v5, "speedDialTip":I
    const-string v8, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 351
    .local v4, "soundAndHapticFeedback":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 352
    move v1, v0

    .line 356
    :goto_0
    if-ge v1, v6, :cond_1

    :goto_1
    return v6

    .line 354
    :cond_0
    or-int v8, v2, v0

    or-int/2addr v8, v3

    or-int/2addr v8, v5

    or-int v1, v8, v4

    goto :goto_0

    :cond_1
    move v6, v7

    .line 356
    goto :goto_1
.end method

.method private makeTalkBackDisablePopup()V
    .locals 6

    .prologue
    const v5, 0x7f0a13c5

    const v4, 0x7f0a0a3c

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a13c6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1186

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FingerAirViewSettingsMenu$3;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettingsMenu$3;-><init>(Lcom/android/settings/FingerAirViewSettingsMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/FingerAirViewSettingsMenu$2;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettingsMenu$2;-><init>(Lcom/android/settings/FingerAirViewSettingsMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 455
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 387
    if-eqz p2, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->makeTalkBackDisablePopup()V

    .line 410
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettingsMenu;->broadcastFingerAirViewChanged(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettingsMenu;->broadcastFingerAirViewChanged(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v8, 0x7f07005a

    invoke-virtual {p0, v8}, Lcom/android/settings/FingerAirViewSettingsMenu;->addPreferencesFromResource(I)V

    .line 130
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-nez v8, :cond_0

    .line 131
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/settings/FingerAirViewSettingsMenu;->setHasOptionsMenu(Z)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Landroid/widget/Switch;

    invoke-direct {v8, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    .line 138
    instance-of v8, v0, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 139
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 140
    .local v5, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-nez v8, :cond_2

    .line 141
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 142
    .local v4, "padding":I
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v4, v11}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 144
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const v13, 0x800015

    invoke-direct {v10, v11, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 147
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    .line 151
    .end local v4    # "padding":I
    .end local v5    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 155
    const-string v8, "magnifier"

    invoke-virtual {p0, v8}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    .line 156
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    const-string v8, "information_preview"

    invoke-virtual {p0, v8}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 158
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string v8, "information_preview_2014"

    invoke-virtual {p0, v8}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    .line 160
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    const-string v8, "sound_and_haptic_feedback"

    invoke-virtual {p0, v8}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 162
    const-string v8, "progress_bar_preview"

    invoke-virtual {p0, v8}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 163
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string v8, "speed_dial_tip"

    invoke-virtual {p0, v8}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    .line 165
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 168
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_magnifier"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_b

    const v8, 0x7f0a0a90

    :goto_0
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 171
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_information_preview"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_c

    const v8, 0x7f0a0a90

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "category_additional_feedback"

    invoke-virtual {p0, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 194
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_e

    const/4 v2, 0x1

    .line 196
    .local v2, "fingerAirViewState":Z
    :goto_3
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v8, :cond_6

    .line 197
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 201
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    :cond_7
    const-string v8, "ro.product.name"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "mProductName":Ljava/lang/String;
    const-string v8, "tblte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "tr3g"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "trlte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "trhlte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "trelte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "trhplte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "tbhplte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "jalte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "ks01lte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 209
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    :cond_9
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    iget-boolean v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mOpenDetailMenu:Z

    if-eqz v8, :cond_a

    sget v8, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_view_master_onoff"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 217
    .local v1, "extra_bundle":Landroid/os/Bundle;
    const-string v8, "extra_parent_preference_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "targetKey":Ljava/lang/String;
    sget v8, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    const/4 v7, 0x1

    .line 220
    .local v7, "value":Z
    :goto_4
    const-string v8, "magnifier"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 221
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 222
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 239
    .end local v1    # "extra_bundle":Landroid/os/Bundle;
    .end local v6    # "targetKey":Ljava/lang/String;
    .end local v7    # "value":Z
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 241
    return-void

    .line 168
    .end local v2    # "fingerAirViewState":Z
    .end local v3    # "mProductName":Ljava/lang/String;
    :cond_b
    const v8, 0x7f0a0a91

    goto/16 :goto_0

    .line 171
    :cond_c
    const v8, 0x7f0a0a91

    goto/16 :goto_1

    .line 185
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 194
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 218
    .restart local v1    # "extra_bundle":Landroid/os/Bundle;
    .restart local v2    # "fingerAirViewState":Z
    .restart local v3    # "mProductName":Ljava/lang/String;
    .restart local v6    # "targetKey":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    goto :goto_4

    .line 223
    .restart local v7    # "value":Z
    :cond_10
    const-string v8, "information_preview"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 224
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 225
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_5

    .line 226
    :cond_11
    const-string v8, "progress_bar_preview"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 227
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 228
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_5

    .line 229
    :cond_12
    const-string v8, "speed_dial_tip"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 230
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 231
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    const v1, 0x7f0a13a9

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 318
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 312
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 315
    const/4 v1, 0x1

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a1346

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v4, 0x7f0a0a91

    const v3, 0x7f0a0a90

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 363
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 365
    .local v0, "value":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v5, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view_magnifier"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_magnifier"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 381
    :cond_0
    :goto_2
    return v1

    .end local v0    # "value":I
    :cond_1
    move v0, v2

    .line 363
    goto :goto_0

    .restart local v0    # "value":I
    :cond_2
    move v2, v4

    .line 367
    goto :goto_1

    .line 370
    :cond_3
    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v5, :cond_5

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view_information_preview"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view_full_text"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_information_preview"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    .line 376
    :cond_5
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_6

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_pregress_bar_preview"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 378
    :cond_6
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_speed_dial_tip"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 325
    iget-boolean v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 326
    sget v4, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 327
    sget v4, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .local v1, "value":Z
    :goto_0
    move-object v0, p2

    .line 328
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 329
    .local v0, "checkboxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    .end local v0    # "checkboxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "value":Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_sound_and_haptic_feedback"

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    move v1, v3

    .line 327
    goto :goto_0

    :cond_3
    move v2, v3

    .line 336
    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const v5, 0x7f0a0a91

    const v4, 0x7f0a0a90

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 245
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 249
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_magnifier"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 250
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_information_preview"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 251
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_information_preview"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    :goto_2
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 254
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v0

    .line 257
    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 262
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_7

    .line 263
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_pregress_bar_preview"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 264
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_speed_dial_tip"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 279
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 283
    :cond_0
    return-void

    .end local v0    # "allowed":Z
    :cond_1
    move v1, v3

    .line 249
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 250
    goto/16 :goto_1

    :cond_3
    move v1, v5

    .line 251
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 254
    goto :goto_3

    .restart local v0    # "allowed":Z
    :cond_5
    move v1, v3

    .line 263
    goto :goto_4

    :cond_6
    move v1, v3

    .line 264
    goto :goto_5

    .line 271
    :cond_7
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_magnifier"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    :goto_8
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 274
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_information_preview"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    :goto_9
    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_6

    :cond_8
    move v1, v5

    .line 271
    goto :goto_8

    :cond_9
    move v4, v5

    .line 274
    goto :goto_9

    :cond_a
    move v2, v3

    .line 280
    goto :goto_7
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 297
    return-void
.end method
