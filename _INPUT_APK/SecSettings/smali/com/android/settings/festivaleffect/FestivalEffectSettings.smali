.class public Lcom/android/settings/festivaleffect/FestivalEffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FestivalEffectSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

.field private mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

.field private mEventNotification:Landroid/preference/CheckBoxPreference;

.field private mFestivalHome:Landroid/preference/CheckBoxPreference;

.field private mFestivalTheme:Landroid/preference/PreferenceScreen;

.field private mHelpPref:Landroid/preference/Preference;

.field private mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

.field private mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

.field private mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

.field private mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

.field private mMessagesBackground:Landroid/preference/CheckBoxPreference;

.field private mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

.field private mMoreCategory:Landroid/preference/PreferenceCategory;

.field private mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

.field private mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

.field private mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

.field private mPersonalizationCategory:Landroid/preference/PreferenceCategory;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    return-void
.end method

.method private broadcastEventNotificationChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method private broadcastFestivalEffectChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method private broadcastFestivalHomeChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.FESTIVAL_HOME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method private broadcastHomeLockScreenChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.HOME_LOCK_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method private broadcastLockscreenWallpaperChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    return-void
.end method

.method private broadcastMessagesBackgroundChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.MESSAGES_BACKGROUND_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method private broadcastNotificationPanelChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    return-void
.end method


# virtual methods
.method public isAllAllowedFunctionDisabled()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    .line 434
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_home_lock_screen"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 435
    .local v4, "lockHomeScreen":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_notification_panel"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 436
    .local v7, "notificationPanel":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_weather_widget"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 437
    .local v8, "weatherWidget":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_key_melody"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 438
    .local v3, "keyMelody":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_customize_event"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 440
    .local v0, "customizeEvent":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_festival_home"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 441
    .local v2, "festivalHome":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_lockscreen_wallpaper"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 442
    .local v5, "lockscreenWallpaper":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_messages_background"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 443
    .local v6, "messagesBackground":I
    iget-object v11, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "festival_effect_notification_panel"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 445
    .local v1, "eventNotification":I
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 446
    const-string v11, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 447
    or-int v11, v4, v7

    if-ge v11, v9, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v9

    :cond_1
    move v9, v10

    .line 447
    goto :goto_0

    .line 449
    :cond_2
    or-int v11, v4, v7

    or-int/2addr v11, v6

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 452
    or-int v11, v4, v7

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    .line 455
    :cond_4
    const-string v11, "2"

    iget-object v12, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 456
    or-int v11, v4, v7

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0

    .line 458
    :cond_5
    or-int v11, v2, v5

    or-int/2addr v11, v6

    or-int/2addr v11, v1

    if-lt v11, v9, :cond_0

    move v9, v10

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 343
    if-eqz p2, :cond_3

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "festival_effect_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "festival_effect_home_lock_screen"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 348
    .local v0, "isEnableLockscreen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "festival_effect_notification_panel"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 349
    .local v1, "isEnableNotif":Z
    :goto_1
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 353
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 361
    .end local v0    # "isEnableLockscreen":Z
    .end local v1    # "isEnableNotif":Z
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 362
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 363
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 364
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 365
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 366
    invoke-direct {p0, p2}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalEffectChanged(Z)V

    .line 367
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 368
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 369
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 370
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 371
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 372
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 373
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 374
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 376
    return-void

    :cond_1
    move v0, v3

    .line 347
    goto :goto_0

    .restart local v0    # "isEnableLockscreen":Z
    :cond_2
    move v1, v3

    .line 348
    goto :goto_1

    .line 357
    .end local v0    # "isEnableLockscreen":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "festival_effect_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    .line 99
    new-instance v4, Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    .line 101
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "festival_effect_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v5

    .line 102
    .local v1, "motionEngineState":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    const-string v4, "festival_effect_help"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    .line 106
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    const v7, 0x7f0400b6

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 108
    const-string v4, "allowed_functions_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

    .line 109
    const-string v4, "home_lock_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    .line 110
    const-string v4, "notification_panel"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    .line 111
    const-string v4, "weather_widget"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    .line 112
    const-string v4, "allowed_personalization_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mPersonalizationCategory:Landroid/preference/PreferenceCategory;

    .line 113
    const-string v4, "key_melody"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    .line 114
    const-string v4, "customize_event"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    .line 115
    const-string v4, "notification_panel_j"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    .line 116
    const-string v4, "lock_screen_wallpaper_j"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    .line 117
    const-string v4, "messages_background_j"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    .line 119
    const-string v4, "festival_home"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v4, "lock_screen_wallpaper"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v4, "messages_background"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v4, "event_notification"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v4, "more_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMoreCategory:Landroid/preference/PreferenceCategory;

    .line 124
    const-string v4, "festival_theme"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalTheme:Landroid/preference/PreferenceScreen;

    .line 126
    const-string v4, "lock_screen_vn"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    .line 127
    const-string v4, "notification_panel_vn"

    invoke-virtual {p0, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    .line 129
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mPersonalizationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    const-string v4, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mOpenDetailMenu:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "festival_effect_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v4, "extra_parent_preference_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "targetKey":Ljava/lang/String;
    sget v4, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mSettingValue:I

    if-ne v4, v5, :cond_6

    move v3, v5

    .line 192
    .local v3, "value":Z
    :goto_2
    const-string v4, "home_lock_screen"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 193
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 194
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 232
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v2    # "targetKey":Ljava/lang/String;
    .end local v3    # "value":Z
    :cond_1
    :goto_3
    return-void

    .end local v1    # "motionEngineState":Z
    :cond_2
    move v1, v6

    .line 101
    goto/16 :goto_0

    .line 161
    .restart local v1    # "motionEngineState":Z
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 163
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    const v7, 0x7f0400b7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mAllowedFunctionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 169
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    const-string v4, "2"

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 178
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMoreCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalTheme:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v2    # "targetKey":Ljava/lang/String;
    :cond_6
    move v3, v6

    .line 191
    goto/16 :goto_2

    .line 195
    .restart local v3    # "value":Z
    :cond_7
    const-string v4, "notification_panel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 196
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 197
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 198
    :cond_8
    const-string v4, "weather_widget"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 199
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 200
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 201
    :cond_9
    const-string v4, "festival_home"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 202
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 204
    :cond_a
    const-string v4, "lock_screen_wallpaper"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 205
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 207
    :cond_b
    const-string v4, "messages_background"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 208
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 210
    :cond_c
    const-string v4, "event_notification"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 211
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 213
    :cond_d
    const-string v4, "lock_screen_wallpaper_j"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 214
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 216
    :cond_e
    const-string v4, "messages_background_j"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 217
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 219
    :cond_f
    const-string v4, "notification_panel_j"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a11ff

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 329
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 330
    return-void

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 385
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 386
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastHomeLockScreenChanged(Z)V

    .line 421
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 425
    invoke-direct {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalEffectChanged(Z)V

    .line 428
    :cond_2
    return v2

    .end local v0    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    move v0, v3

    .line 385
    goto :goto_0

    .line 389
    .restart local v0    # "value":I
    :cond_4
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastNotificationPanelChanged(Z)V

    goto :goto_1

    .line 392
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastNotificationPanelChanged(Z)V

    goto :goto_1

    .line 395
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_weather_widget"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 397
    :cond_8
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_key_melody"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 399
    :cond_9
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_customize_event"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 401
    :cond_a
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_festival_home"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalHomeChanged(Z)V

    goto/16 :goto_1

    .line 404
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_b
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_lockscreen_wallpaper"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastLockscreenWallpaperChanged(Z)V

    goto/16 :goto_1

    .line 407
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_c
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastHomeLockScreenChanged(Z)V

    goto/16 :goto_1

    .line 410
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_d
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_messages_background"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastMessagesBackgroundChanged(Z)V

    goto/16 :goto_1

    .line 413
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_e
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_messages_background"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastMessagesBackgroundChanged(Z)V

    goto/16 :goto_1

    .line 416
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_f
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastEventNotificationChanged(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    .line 381
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/16 v10, 0x10

    const/4 v12, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 237
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 238
    .local v5, "super_mOpenDetailMenu":Z
    iput-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 242
    iput-boolean v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    .line 244
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    instance-of v8, v8, Lcom/android/settings/SettingsActivity;

    if-eqz v8, :cond_0

    .line 245
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 246
    .local v4, "sa":Lcom/android/settings/SettingsActivity;
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 248
    .local v3, "padding":I
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 249
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 251
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/16 v11, 0x15

    invoke-direct {v10, v12, v12, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 255
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    .line 258
    .end local v3    # "padding":I
    .end local v4    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 259
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    .line 265
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "festival_effect_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    move v2, v6

    .line 268
    .local v2, "motionEngineState":Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 269
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 270
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 271
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 272
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 273
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 274
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 275
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 277
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 278
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 280
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 282
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 283
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 285
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_home_lock_screen"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v6

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 286
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_notification_panel"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v6

    :goto_2
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 287
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_weather_widget"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    move v8, v6

    :goto_3
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 288
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mKeyMelody:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_key_melody"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_7

    move v8, v6

    :goto_4
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 289
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mCustomizeEvent:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_customize_event"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    move v8, v6

    :goto_5
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 290
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanelJ:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_notification_panel"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_9

    move v8, v6

    :goto_6
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaperJ:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_home_lock_screen"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    move v8, v6

    :goto_7
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackgroundJ:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_messages_background"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_b

    move v8, v6

    :goto_8
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mFestivalHome:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_festival_home"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_c

    move v8, v6

    :goto_9
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 295
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockscreenWallpaper:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_lockscreen_wallpaper"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_d

    move v8, v6

    :goto_a
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 296
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mMessagesBackground:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_messages_background"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_e

    move v8, v6

    :goto_b
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    iget-object v9, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mEventNotification:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "festival_effect_notification_panel"

    invoke-static {v8, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_f

    move v8, v6

    :goto_c
    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 300
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "festival_effect_home_lock_screen"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_10

    move v0, v6

    .line 301
    .local v0, "isEnableLockscreen":Z
    :goto_d
    iget-object v8, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "festival_effect_notification_panel"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_11

    move v1, v6

    .line 302
    .local v1, "isEnableNotif":Z
    :goto_e
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mLockScreenVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 303
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificationPanelVN:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 304
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 305
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 309
    .end local v0    # "isEnableLockscreen":Z
    .end local v1    # "isEnableNotif":Z
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 310
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 312
    return-void

    .end local v2    # "motionEngineState":Z
    :cond_3
    move v2, v7

    .line 265
    goto/16 :goto_0

    .restart local v2    # "motionEngineState":Z
    :cond_4
    move v8, v7

    .line 285
    goto/16 :goto_1

    :cond_5
    move v8, v7

    .line 286
    goto/16 :goto_2

    :cond_6
    move v8, v7

    .line 287
    goto/16 :goto_3

    :cond_7
    move v8, v7

    .line 288
    goto/16 :goto_4

    :cond_8
    move v8, v7

    .line 289
    goto/16 :goto_5

    :cond_9
    move v8, v7

    .line 290
    goto/16 :goto_6

    :cond_a
    move v8, v7

    .line 291
    goto/16 :goto_7

    :cond_b
    move v8, v7

    .line 292
    goto/16 :goto_8

    :cond_c
    move v8, v7

    .line 294
    goto/16 :goto_9

    :cond_d
    move v8, v7

    .line 295
    goto :goto_a

    :cond_e
    move v8, v7

    .line 296
    goto :goto_b

    :cond_f
    move v8, v7

    .line 297
    goto :goto_c

    :cond_10
    move v0, v7

    .line 300
    goto :goto_d

    .restart local v0    # "isEnableLockscreen":Z
    :cond_11
    move v1, v7

    .line 301
    goto :goto_e
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 338
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 339
    return-void
.end method
