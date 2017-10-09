.class public Lcom/android/settings/powersavingmode/PowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isKioskContainer:Z

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFromHelp:Z

.field private mPowerSaving:Landroid/preference/PreferenceScreen;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

.field private mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

.field private mSleepingMode:Landroid/preference/PreferenceScreen;

.field private mUltraPowerSaving:Landroid/preference/PreferenceScreen;

.field private mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->isKioskContainer:Z

    .line 82
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    .line 96
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Lcom/android/settings/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Lcom/android/settings/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    return v0
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 396
    if-nez p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v1

    .line 400
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 402
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showPowerSavingHelpDialog()V
    .locals 4

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 342
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 343
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 345
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 346
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 348
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 251
    .local v0, "basic_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 252
    .local v2, "data_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blackgrey_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 254
    .local v1, "black_grey_powersaving":I
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    .line 255
    .local v3, "retVal":Z
    :cond_0
    return v3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    const-string v0, "PowerSavingModeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$3;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 330
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 331
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 368
    const-string v0, "PowerSavingModeSettings"

    const-string v1, "onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->showPowerSavingHelpDialog()V

    .line 376
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v6, 0x7f0700a0

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 119
    const-string v6, "fromHelp"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 123
    :cond_0
    const-string v6, "PowerSavingModeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isFromHelp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "psm_switch"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->setHasOptionsMenu(Z)V

    .line 131
    :cond_2
    const-string v6, "powersaving"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;

    .line 132
    const-string v6, "ultra_powersaving"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    .line 133
    const-string v6, "powersaving_tablet"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    .line 134
    const-string v6, "ultra_powersaving_tablet"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    .line 135
    const-string v6, "sleepingmode"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSleepingMode:Landroid/preference/PreferenceScreen;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 138
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v6, :cond_3

    .line 139
    new-instance v6, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-direct {v6, v0, v8}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    .line 140
    :cond_3
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Lcom/android/settings/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSleepingMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSleepingMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_5
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 153
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportUltraPowerSavingMode()Z

    move-result v6

    if-nez v6, :cond_7

    .line 154
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :cond_7
    iget-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_8

    .line 160
    sget v6, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_8

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 162
    .local v1, "extra_bundle":Landroid/os/Bundle;
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "targetKey":Ljava/lang/String;
    sget v6, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSettingValue:I

    if-ne v6, v5, :cond_b

    .line 164
    .local v5, "value":Z
    :goto_1
    const-string v6, "powersaving_tablet"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 165
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v6, :cond_8

    .line 166
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6}, Lcom/android/settings/SwitchPreferenceScreen;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 167
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 168
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 183
    .end local v1    # "extra_bundle":Landroid/os/Bundle;
    .end local v3    # "targetKey":Ljava/lang/String;
    .end local v5    # "value":Z
    :cond_8
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->isKioskContainer:Z

    .line 184
    iget-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->isKioskContainer:Z

    if-eqz v6, :cond_9

    .line 185
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 186
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_9
    :goto_3
    return-void

    .line 145
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .restart local v1    # "extra_bundle":Landroid/os/Bundle;
    .restart local v3    # "targetKey":Ljava/lang/String;
    .restart local v4    # "um":Landroid/os/UserManager;
    :cond_b
    move v5, v7

    .line 163
    goto :goto_1

    .line 172
    .restart local v5    # "value":Z
    :cond_c
    const-string v6, "ultra_powersaving_tablet"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 173
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6}, Lcom/android/settings/SwitchPreferenceScreen;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 174
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 175
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    .end local v1    # "extra_bundle":Landroid/os/Bundle;
    .end local v3    # "targetKey":Ljava/lang/String;
    .end local v5    # "value":Z
    :cond_d
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 262
    const/4 v0, 0x1

    const v1, 0x7f0a0e97

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020112

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 265
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 293
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 271
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "helphub:appid"

    const-string v3, "power_saving_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 279
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "power_saving_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 284
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 285
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v2, "PowerSavingModeSettings"

    const-string v3, "There is no help app."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "PowerSavingModeSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->pause()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 300
    const-string v2, "PowerSavingModeSettings"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 303
    .local v1, "value":Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const-string v2, "flag"

    const/16 v3, 0x200

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 307
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 391
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f0a0a91

    const v2, 0x7f0a0a90

    const/4 v5, 0x0

    .line 196
    const-string v1, "PowerSavingModeSettings"

    const-string v6, "onResume() "

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "powersaving_switch"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 204
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 205
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "powersaving_switch"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 208
    invoke-static {}, Lcom/android/settings/Utils;->isSupportUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "ultra_powersaving_mode"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 223
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSleepingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mSleepingMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sleepingmode_switch_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->showPowerSavingHelpDialog()V

    .line 234
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 205
    goto :goto_0

    :cond_5
    move v1, v3

    .line 209
    goto :goto_1

    .line 215
    :cond_6
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->resume()V

    .line 216
    invoke-static {}, Lcom/android/settings/Utils;->isSupportUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "ultra_powersaving_mode"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    :goto_4
    invoke-virtual {v6, v1}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    move v1, v5

    .line 217
    goto :goto_4

    :cond_8
    move v2, v3

    .line 224
    goto :goto_3
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 385
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 386
    return-void
.end method
