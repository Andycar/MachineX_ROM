.class public Lcom/android/settings/motion2014/MotionSettings2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirTurnAndScroll:Landroid/preference/Preference;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mMergedMutePause:Landroid/preference/Preference;

.field private mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mPalmSwipe:Landroid/preference/Preference;

.field private mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private mPickUp:Landroid/preference/Preference;

.field private mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/Preference;

.field private mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mQuickAppicationAccess:Landroid/preference/Preference;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 95
    new-instance v0, Lcom/android/settings/motion2014/MotionSettings2014$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014$1;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionSettings2014;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionSettings2014;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionSettings2014;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionSettings2014;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionSettings2014;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionSettings2014;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 419
    :cond_0
    return-void
.end method

.method private isAllMutePauseOptionDisabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    .line 357
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 359
    .local v2, "turnOver":I
    :goto_0
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 361
    .local v0, "palmTouch":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_pause"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 363
    .local v1, "smartPause":I
    or-int v5, v2, v0

    or-int/2addr v5, v1

    if-ge v5, v4, :cond_0

    move v3, v4

    :cond_0
    return v3

    .end local v0    # "palmTouch":I
    .end local v1    # "smartPause":I
    .end local v2    # "turnOver":I
    :cond_1
    move v2, v3

    .line 357
    goto :goto_0

    .restart local v2    # "turnOver":I
    :cond_2
    move v0, v3

    .line 359
    goto :goto_1
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->dismissAllDialog()V

    .line 386
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1255

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1254

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/MotionSettings2014$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/MotionSettings2014$3;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 398
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2014/MotionSettings2014$4;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/MotionSettings2014$4;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 406
    return-void
.end method

.method private showAllOptionDisabledDialog(Landroid/preference/SwitchPreferenceScreen;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/SwitchPreferenceScreen;

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->dismissAllDialog()V

    .line 368
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a11ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/MotionSettings2014$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/motion2014/MotionSettings2014$2;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Landroid/preference/SwitchPreferenceScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 381
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 382
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x64

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->setHasOptionsMenu(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    .line 110
    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->addPreferencesFromResource(I)V

    .line 112
    const-string v1, "air_turn_and_scroll"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    .line 113
    const-string v1, "pick_up"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    .line 114
    const-string v1, "pick_up_to_call_out"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    .line 115
    const-string v1, "merged_mute_or_pause"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    .line 116
    const-string v1, "palm_swipe"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    .line 118
    const-string v1, "quick_application_access"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mQuickAppicationAccess:Landroid/preference/Preference;

    .line 120
    const-string v1, "pick_up_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 121
    const-string v1, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    const-string v1, "merged_mute_or_pause_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 123
    const-string v1, "palm_swipe_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 125
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mQuickAppicationAccess:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    const-string v1, "grande"

    const-string v2, "ro.build.scafe.size"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_5

    .line 154
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    :cond_5
    :goto_0
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 166
    :cond_6
    const-string v1, "air_turn_and_scroll"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    .line 168
    :cond_7
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 169
    const-string v1, "pick_up_to_call_out"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    .line 170
    const-string v1, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    .line 172
    :cond_8
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 173
    const-string v1, "pick_up"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    .line 174
    const-string v1, "pick_up_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    .line 176
    :cond_9
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 177
    const-string v1, "palm_swipe"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    .line 178
    const-string v1, "palm_swipe_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    .line 186
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-lt v1, v3, :cond_b

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "device":Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 192
    const-string v1, "afyon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    .end local v0    # "device":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_d
    return-void

    .line 156
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_BLACKSCREEN_UI_QUICK_ACCESS"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-lt v1, v3, :cond_5

    .line 162
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mQuickAppicationAccess:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 283
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x1

    const v1, 0x7f0a16b9

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 288
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 304
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 294
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 301
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :cond_0
    const-string v1, "helphub:section"

    const-string v2, "air_gesture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 275
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 277
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 313
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 315
    .local v0, "value":Z
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    if-eqz v0, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_pick_up"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    :cond_0
    :goto_0
    return v3

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_pick_up"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    if-eqz v0, :cond_3

    .line 324
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_pick_up_to_call_out"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_pick_up_to_call_out"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 330
    if-eqz v0, :cond_6

    .line 331
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->isAllMutePauseOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 332
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->showAllOptionDisabledDialog(Landroid/preference/SwitchPreferenceScreen;)V

    goto :goto_0

    .line 334
    :cond_5
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 338
    :cond_6
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 340
    :cond_7
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    if-eqz v0, :cond_9

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 343
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->makeTalkBackDisablePopup()V

    goto :goto_0

    .line 345
    :cond_8
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "surface_palm_swipe"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 349
    :cond_9
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "surface_palm_swipe"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 411
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v4, 0x7f0a0a90

    const v5, 0x7f0a0a91

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 218
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 220
    .local v1, "isScreenCaptureEnabled":Ljava/lang/Boolean;
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v2, v7

    .line 221
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isScreenCaptureEnabled"

    invoke-static {v3, v8, v9, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "isScreenCapture":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v6, :cond_0

    .line 223
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    .line 228
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 229
    iget-object v8, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v3, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 230
    iget-object v8, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_pick_up"

    invoke-static {v3, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 231
    iget-object v8, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_pick_up_to_call_out"

    invoke-static {v3, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 232
    iget-object v8, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_merged_mute_pause"

    invoke-static {v3, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 234
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 235
    const-string v3, "MotionSettings2014"

    const-string v8, "MDM: Screen Capture Disabled"

    invoke-static {v3, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 238
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "surface_palm_swipe"

    invoke-static {v3, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    :goto_4
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mQuickAppicationAccess:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "quick_application_access"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_5
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 266
    :goto_6
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_palm_swipe"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 229
    goto :goto_0

    :cond_3
    move v3, v5

    .line 230
    goto :goto_1

    :cond_4
    move v3, v5

    .line 231
    goto :goto_2

    :cond_5
    move v3, v5

    .line 232
    goto :goto_3

    .line 240
    :cond_6
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 241
    iget-object v8, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "surface_palm_swipe"

    invoke-static {v3, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_7
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_7

    :cond_8
    move v4, v5

    .line 246
    goto :goto_5

    .line 251
    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 252
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 253
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_merged_mute_pause"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v6

    :goto_a
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 255
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 256
    const-string v3, "MotionSettings2014"

    const-string v4, "MDM: Screen Capture Disabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 258
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_swipe"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_a
    move v3, v7

    .line 251
    goto :goto_8

    :cond_b
    move v3, v7

    .line 252
    goto :goto_9

    :cond_c
    move v3, v7

    .line 253
    goto :goto_a

    .line 261
    :cond_d
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 262
    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_swipe"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    move v7, v6

    :cond_e
    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_6
.end method
