.class public Lcom/android/settings/PenAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mActionBarLayout:Landroid/view/View;

.field private static mActionBarSwitch:Landroid/widget/Switch;

.field private static mActivity:Landroid/app/Activity;

.field private static mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;


# instance fields
.field private mAirViewDialog:Landroid/app/AlertDialog;

.field private mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private final mPenAirViewObserver:Landroid/database/ContentObserver;

.field private mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

.field private mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

.field private mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

.field private mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

.field private mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 143
    new-instance v0, Lcom/android/settings/PenAirViewSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PenAirViewSettingsMenu$1;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewSettingsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenAirViewSettingsMenu;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updatePenAirViewSettingsMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/PenAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenAirViewSettingsMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/PenAirViewSettingsMenu;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenAirViewSettingsMenu;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewSettingsMenu;->showAirViewDialog(Landroid/preference/Preference;)V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 3

    .prologue
    .line 330
    const-string v0, "key_pen_pointer"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    .line 331
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    const-string v0, "key_pen_information_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 335
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    const-string v0, "key_pen_progress_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    .line 338
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    const-string v0, "key_pen_speed_dial_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 341
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    const-string v0, "key_pen_icon_label"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    .line 347
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 349
    const-string v0, "key_pen_list_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 350
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 352
    const-string v0, "key_pen_link_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 353
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 355
    const-string v0, "key_pen_air_menu"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 356
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    const-string v0, "key_pen_sound_and_haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 360
    const-string v0, "key_pen_information_preview_2014"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    .line 362
    const-string v0, "key_pen_icon_label_2014"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    .line 364
    const-string v0, "key_pen_list_scroll_2014"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    .line 366
    const-string v0, "key_pen_link_preview_2014"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    .line 368
    const-string v0, "key_pen_air_menu_2014"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    .line 370
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_category_pen_additional_feedback"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.app.SmartClipService"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "manual"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_LinkifyType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 402
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v0

    if-nez v0, :cond_6

    .line 405
    const-string v0, "pen_air_view_guide"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a1384

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 407
    :cond_6
    return-void

    .line 389
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 411
    const-string v10, "pen_hovering_information_preview"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 412
    .local v2, "inforPreview":I
    const-string v10, "pen_hovering_progress_preview"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 413
    .local v5, "progressPreview":I
    const-string v10, "pen_hovering_speed_dial_preview"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 414
    .local v7, "speedDialPreview":I
    const-string v10, "pen_hovering_icon_label"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 415
    .local v1, "iconLabel":I
    const-string v10, "pen_hovering_list_scroll"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 416
    .local v4, "listScroll":I
    const-string v10, "pen_hovering_sound"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 417
    .local v6, "soundHaptic":I
    const-string v10, "pen_hovering_link_preview"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 418
    .local v3, "linkPreview":I
    const-string v10, "pen_hovering_air_menu"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, "airMenu":I
    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v10}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 421
    const/4 v6, 0x0

    .line 424
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 425
    const/4 v3, 0x0

    .line 426
    const/4 v0, 0x0

    .line 437
    :goto_0
    or-int v10, v2, v5

    or-int/2addr v10, v7

    or-int/2addr v10, v1

    or-int/2addr v10, v4

    or-int/2addr v10, v6

    or-int/2addr v10, v3

    or-int/2addr v10, v0

    if-ge v10, v8, :cond_2

    :goto_1
    return v8

    .line 428
    :cond_1
    const/4 v5, 0x0

    .line 429
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    move v8, v9

    .line 437
    goto :goto_1
.end method

.method private showAirViewDialog(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 446
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a138f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewSettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettingsMenu$3;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/PenAirViewSettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettingsMenu$2;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 459
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 461
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewSettingsMenu$4;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewSettingsMenu$4;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 468
    return-void
.end method

.method private updatePenAirViewSettingsMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 558
    .local v0, "state":I
    if-nez v0, :cond_1

    .line 559
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 561
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 562
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 563
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 567
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 569
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 570
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 571
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 572
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 573
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 574
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 594
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v1

    if-nez v1, :cond_2

    .line 578
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 579
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 580
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 581
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 582
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 585
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 586
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 587
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 588
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 589
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 590
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 591
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 592
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 294
    const-string v0, "PenAirViewSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 152
    const-string v3, "PenAirViewSettings"

    const-string v4, "onCreate() "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sput-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    .line 155
    sget-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    .line 156
    new-instance v3, Landroid/widget/Switch;

    sget-object v4, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    .line 157
    new-instance v3, Lcom/android/settings/PenAirViewEnabler;

    sget-object v4, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/PenAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    sput-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    .line 158
    const v3, 0x7f07008f

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->addPreferencesFromResource(I)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->initializeAllPreferences()V

    .line 162
    iget-boolean v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    .line 163
    sget v3, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 165
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "targetKey":Ljava/lang/String;
    sget v3, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    if-ne v3, v2, :cond_1

    .line 168
    .local v2, "value":Z
    :goto_0
    const-string v3, "key_pen_information_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 172
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 226
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v1    # "targetKey":Ljava/lang/String;
    .end local v2    # "value":Z
    :cond_0
    :goto_1
    return-void

    .line 167
    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v1    # "targetKey":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 175
    .restart local v2    # "value":Z
    :cond_2
    const-string v3, "key_pen_progress_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_3
    const-string v3, "key_pen_speed_dial_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 184
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_4
    const-string v3, "key_pen_icon_label"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_5
    const-string v3, "key_pen_list_scroll"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 198
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 201
    :cond_6
    const-string v3, "key_pen_pointer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 202
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 205
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 208
    :cond_7
    const-string v3, "key_pen_link_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 209
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 215
    :cond_8
    const-string v3, "key_pen_air_menu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 219
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 276
    :cond_0
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->stop()V

    .line 277
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 278
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 282
    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a1346

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    :cond_0
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->pause()V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 290
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 473
    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    .line 475
    .local v3, "value":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_pointer"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    :goto_1
    return v5

    .end local v3    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    move v3, v6

    .line 473
    goto :goto_0

    .line 477
    .restart local v3    # "value":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_6

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_button_onoff"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3

    move v0, v5

    .line 480
    .local v0, "airButtonState":Z
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 482
    .local v1, "isChecked":Z
    if-nez v1, :cond_5

    if-ne v0, v5, :cond_5

    .line 483
    iget-boolean v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mOpenDetailMenu:Z

    if-eqz v4, :cond_4

    .line 484
    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 485
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 486
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v4, Lcom/android/settings/PenAirViewSettingsMenu$5;

    invoke-direct {v4, p0}, Lcom/android/settings/PenAirViewSettingsMenu$5;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .end local v0    # "airButtonState":Z
    .end local v1    # "isChecked":Z
    .end local v2    # "mHandler":Landroid/os/Handler;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    move v0, v6

    .line 478
    goto :goto_2

    .line 495
    .end local p2    # "objValue":Ljava/lang/Object;
    .restart local v0    # "airButtonState":Z
    .restart local v1    # "isChecked":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewSettingsMenu;->showAirViewDialog(Landroid/preference/Preference;)V

    goto :goto_1

    .line 498
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 500
    .end local v0    # "airButtonState":Z
    .end local v1    # "isChecked":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_7

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_progress_preview"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 502
    :cond_7
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_8

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_speed_dial_preview"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 504
    :cond_8
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_9

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_icon_label"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 506
    :cond_9
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_a

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_list_scroll"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 508
    :cond_a
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_b

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_link_preview"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 510
    :cond_b
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_air_menu"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 299
    const-string v4, "PenAirViewSettings"

    const-string v5, "onPreferenceTreeClick() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-boolean v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mOpenDetailMenu:Z

    if-eqz v4, :cond_2

    .line 302
    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 303
    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 304
    .local v1, "value":Z
    :goto_0
    instance-of v4, p2, Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_1

    move-object v0, p2

    .line 305
    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    .line 306
    .local v0, "checkBoxStatePreference":Landroid/preference/SwitchPreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 308
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 325
    .end local v0    # "checkBoxStatePreference":Landroid/preference/SwitchPreferenceScreen;
    .end local v1    # "value":Z
    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 303
    goto :goto_0

    .restart local v1    # "value":Z
    :cond_1
    move-object v0, p2

    .line 312
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 313
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 315
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 321
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "value":Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_sound"

    iget-object v6, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v3

    .line 322
    goto :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v3, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 235
    const-string v1, "PenAirViewSettings"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 239
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hl3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 243
    .local v0, "padding":I
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 244
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 246
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget-object v2, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 250
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    sget-object v2, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Lcom/android/settings/PenAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 254
    .end local v0    # "padding":I
    :cond_0
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 255
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 258
    :cond_1
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v1}, Lcom/android/settings/PenAirViewEnabler;->resume()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updateState()V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 266
    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 268
    return-void
.end method

.method public updateState()V
    .locals 7

    .prologue
    const v4, 0x7f0a0a91

    const v3, 0x7f0a0a90

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 517
    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_pointer"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 519
    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 521
    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_progress_preview"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 523
    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_speed_dial_preview"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 525
    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_icon_label"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 527
    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_list_scroll"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 529
    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenLinkPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_link_preview"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 531
    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenAirMenu:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_air_menu"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_sound"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    :goto_8
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updatePenAirViewSettingsMenu()V

    .line 537
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    :goto_9
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 541
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_icon_label"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    :goto_a
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 544
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_list_scroll"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    :goto_b
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 547
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_link_preview"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    :goto_c
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_air_menu"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 554
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 517
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 519
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 521
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 523
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 525
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 527
    goto/16 :goto_5

    :cond_7
    move v0, v2

    .line 529
    goto/16 :goto_6

    :cond_8
    move v0, v2

    .line 531
    goto/16 :goto_7

    :cond_9
    move v1, v2

    .line 533
    goto :goto_8

    :cond_a
    move v0, v4

    .line 538
    goto :goto_9

    :cond_b
    move v0, v4

    .line 541
    goto :goto_a

    :cond_c
    move v0, v4

    .line 544
    goto :goto_b

    :cond_d
    move v0, v4

    .line 547
    goto :goto_c

    :cond_e
    move v3, v4

    .line 550
    goto :goto_d
.end method
