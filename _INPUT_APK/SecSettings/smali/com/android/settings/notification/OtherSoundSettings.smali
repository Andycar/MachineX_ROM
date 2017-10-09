.class public Lcom/android/settings/notification/OtherSoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SIP_FEEDBACK_SOUND:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SIP_FEEDBACK_VIBRATION:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mHandler:Landroid/os/Handler;

.field private static mLoadSoundEffectRunnable:Ljava/lang/Runnable;

.field private static mUnloadSoundEffectRunnable:Ljava/lang/Runnable;


# instance fields
.field private isKioskContainer:Z

.field private mContext:Landroid/content/Context;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

.field private mSoundCall:Landroid/preference/PreferenceScreen;

.field private mSoundEmail:Landroid/preference/PreferenceScreen;

.field private mSoundMessage:Landroid/preference/PreferenceScreen;

.field private mSoundSPlanner:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 100
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "sip_feedback_sound"

    const-string v3, "sip_key_feedback_sound"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SIP_FEEDBACK_SOUND:Lcom/android/settings/notification/SettingPref;

    .line 102
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "sip_feedback_vibration"

    const-string v3, "sip_key_feedback_vibration"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SIP_FEEDBACK_VIBRATION:Lcom/android/settings/notification/SettingPref;

    .line 105
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    .line 113
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 116
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$2;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 124
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$3;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 139
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$4;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    .line 147
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$5;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    .line 168
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$6;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    .line 193
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SIP_FEEDBACK_SOUND:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SIP_FEEDBACK_VIBRATION:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 368
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$8;

    invoke-direct {v0}, Lcom/android/settings/notification/OtherSoundSettings$8;-><init>()V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 438
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$9;

    invoke-direct {v0}, Lcom/android/settings/notification/OtherSoundSettings$9;-><init>()V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 444
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$10;

    invoke-direct {v0}, Lcom/android/settings/notification/OtherSoundSettings$10;-><init>()V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 452
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$11;

    invoke-direct {v0}, Lcom/android/settings/notification/OtherSoundSettings$11;-><init>()V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->mHandler:Landroid/os/Handler;

    return-void

    .line 147
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 168
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 205
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->isKioskContainer:Z

    .line 338
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/OtherSoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/OtherSoundSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/notification/OtherSoundSettings;->setSystemSound()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/OtherSoundSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/OtherSoundSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 333
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 493
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v1

    .line 497
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 499
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setSystemSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 466
    const/4 v0, 0x2

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 467
    const-string v0, "dial_pad_tones"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "dial_pad_tones"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 469
    :cond_0
    const-string v0, "screen_locking_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    const-string v0, "screen_locking_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 471
    :cond_1
    const-string v0, "docking_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 472
    const-string v0, "docking_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 473
    :cond_2
    const-string v0, "touch_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 474
    const-string v0, "touch_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 475
    :cond_3
    const-string v0, "sip_feedback_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 476
    const-string v0, "sip_feedback_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 489
    :cond_4
    :goto_0
    return-void

    .line 478
    :cond_5
    const-string v0, "dial_pad_tones"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 479
    const-string v0, "dial_pad_tones"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 480
    :cond_6
    const-string v0, "screen_locking_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 481
    const-string v0, "screen_locking_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 482
    :cond_7
    const-string v0, "docking_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 483
    const-string v0, "docking_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 484
    :cond_8
    const-string v0, "touch_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 485
    const-string v0, "touch_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 486
    :cond_9
    const-string v0, "sip_feedback_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 487
    const-string v0, "sip_feedback_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const v9, 0x7f07008d

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    .line 222
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/settings/notification/OtherSoundSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->isKioskContainer:Z

    .line 225
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    sput-object v9, Lcom/android/settings/notification/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 227
    const-string v9, "sound_call"

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundCall:Landroid/preference/PreferenceScreen;

    .line 228
    const-string v9, "sound_message"

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    .line 229
    const-string v9, "sound_email"

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundEmail:Landroid/preference/PreferenceScreen;

    .line 230
    const-string v9, "sound_splanner"

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    .line 231
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "salesCode":Ljava/lang/String;
    const-string v9, "ATT"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "SPR"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "VZW"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "TMB"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "USC"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "VMU"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "BST"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "XAS"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "CRI"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "CSP"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "XAR"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "LRA"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "MCT"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ESK"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "XAC"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "AIO"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ACG"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 235
    :cond_0
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0a13ac

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_3

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "com.android.mms"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 247
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 256
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_7

    .line 259
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 261
    .local v6, "mPackageManager":Landroid/content/pm/PackageManager;
    const-string v9, "com.android.mms"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 262
    .local v4, "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 263
    .local v5, "mMessgingAppName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_7

    .line 264
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v4    # "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "mMessgingAppName":Ljava/lang/String;
    .end local v6    # "mPackageManager":Landroid/content/pm/PackageManager;
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isDefaultSmsAppInternal(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    :cond_8
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings/notification/SettingPref;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v7, v0, v2

    .line 275
    .local v7, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v7, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "pref":Lcom/android/settings/notification/SettingPref;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "OtherSoundSettings"

    const-string v10, "No name found for application messaging"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 279
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_9
    iget-boolean v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->isKioskContainer:Z

    if-nez v9, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 280
    :cond_a
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundCall:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_b
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    :cond_c
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundEmail:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundEmail:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    :cond_d
    iget-object v9, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_e
    const-string v9, "othersound_samsungapplications"

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "othersound_samsungapplications"

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    :cond_f
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 318
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 319
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/OtherSoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 391
    iget-object v2, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_2

    .line 393
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.calendar.soundsettings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    const-string v2, ":android:show_fragment"

    const-string v3, "com.android.calendar.preference.AllCalendarPreferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/OtherSoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 399
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v2, ":android:show_fragment"

    const-string v3, "com.android.calendar.preference.EventNotificationPreference"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 402
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OtherSoundSettings"

    const-string v3, "ActivityNotFoundException : com.sec.android.intent.calendar.soundsettings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 405
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundEmail:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_3

    .line 407
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 408
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.email.setup.NOTISETUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/OtherSoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 410
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 411
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OtherSoundSettings"

    const-string v3, "ActivityNotFoundException : com.android.email.setup.NOTISETUP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 413
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_5

    .line 415
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 416
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 417
    const-string v2, "com.android.mms.setting.SoundSettingMultiSIM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/OtherSoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 422
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 423
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OtherSoundSettings"

    const-string v3, "ActivityNotFoundException : com.android.mms.setting.SoundSetting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 419
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_4
    const-string v2, "com.android.mms.setting.SoundSetting"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 425
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSoundCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_0

    .line 427
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 428
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.phone.CALL_SOUND_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/OtherSoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 430
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    .line 431
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OtherSoundSettings"

    const-string v3, "ActivityNotFoundException : com.android.phone.CALL_SOUND_SETTING"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 295
    iget-object v1, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 296
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/settings/notification/OtherSoundSettings;->setSystemSound()V

    .line 299
    iget-object v1, p0, Lcom/android/settings/notification/OtherSoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .local v0, "mfilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    new-instance v1, Lcom/android/settings/notification/OtherSoundSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/OtherSoundSettings$7;-><init>(Lcom/android/settings/notification/OtherSoundSettings;)V

    iput-object v1, p0, Lcom/android/settings/notification/OtherSoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/OtherSoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    .end local v0    # "mfilter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 314
    return-void
.end method
