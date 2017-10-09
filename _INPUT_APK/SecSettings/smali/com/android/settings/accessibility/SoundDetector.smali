.class public Lcom/android/settings/accessibility/SoundDetector;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundDetector.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

.field private mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v1, "baby_crying_detector"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/SoundDetector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    .line 91
    const-string v1, "door_bell_detector"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/SoundDetector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 94
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "com.samsung.android.app.advsounddetector"

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.samsung.android.app.advsounddetector"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v3, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "sound_detector"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateBabyCryingDetector()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_detector"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 109
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 111
    if-eqz v0, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    const v2, 0x7f0a0a90

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 117
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enabled":Z
    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .line 114
    .restart local v0    # "enabled":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    const v2, 0x7f0a0a91

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method

.method private updateDoorBellDetector()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doorbell_detector"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 120
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 122
    if-eqz v0, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;

    const v2, 0x7f0a0a90

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 128
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enabled":Z
    :cond_1
    move v0, v1

    .line 119
    goto :goto_0

    .line 125
    .restart local v0    # "enabled":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;

    const v2, 0x7f0a0a91

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/SoundDetector;->addPreferencesFromResource(I)V

    .line 31
    invoke-direct {p0}, Lcom/android/settings/accessibility/SoundDetector;->initialize()V

    .line 32
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 140
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 36
    iget-object v6, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, p2

    .line 37
    check-cast v5, Ljava/lang/Boolean;

    .line 38
    .local v5, "value":Ljava/lang/Boolean;
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/SoundDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/settings/accessibility/SoundDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    iget-object v6, p0, Lcom/android/settings/accessibility/SoundDetector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v2

    .line 40
    .local v2, "mic_state":Z
    iget-object v6, p0, Lcom/android/settings/accessibility/SoundDetector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    .line 42
    .local v3, "music_state":Z
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 43
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "sound_detector"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.sound_detector"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    move v6, v7

    .line 74
    .end local v2    # "mic_state":Z
    .end local v3    # "music_state":Z
    .end local v5    # "value":Ljava/lang/Boolean;
    :goto_1
    return v6

    .line 47
    .restart local v2    # "mic_state":Z
    .restart local v3    # "music_state":Z
    .restart local v5    # "value":Ljava/lang/Boolean;
    :cond_1
    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a0b26

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 49
    iget-object v6, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 50
    :cond_2
    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a0b27

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 52
    iget-object v6, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sound_detector"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-static {v6, v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->getServiceTaskName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 59
    .local v4, "useTask":Z
    if-eqz v4, :cond_4

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "mSoundDetector":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.app.sounddetector"

    const-string v9, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 67
    .end local v1    # "mSoundDetector":Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.sound_detector"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local v0    # "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/SoundDetector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 71
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v2    # "mic_state":Z
    .end local v3    # "music_state":Z
    .end local v4    # "useTask":Z
    .end local v5    # "value":Ljava/lang/Boolean;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/accessibility/SoundDetector;->mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_6
    move v6, v8

    .line 74
    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mBabyCryingDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.accessibility.BABYCRYING_DETECTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/SoundDetector;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/SoundDetector;->mDoorBellDetector:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.accessibility.DOORBELL_DETECTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/SoundDetector;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/accessibility/SoundDetector;->updateBabyCryingDetector()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/accessibility/SoundDetector;->updateDoorBellDetector()V

    .line 136
    return-void
.end method
