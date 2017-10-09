.class public Lcom/android/settings/SPenSoundFeedbackSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenSoundFeedbackSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mActionBarSwitch:Landroid/widget/Switch;

.field private static mActivity:Landroid/app/Activity;

.field private static mResolver:Landroid/content/ContentResolver;


# instance fields
.field private mSoundFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

.field private mSoundFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

.field private mSoundFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 130
    const/4 v2, 0x0

    .line 132
    .local v2, "isAllDisabled":I
    const-string v6, "spen_feedback_sound_air_command"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, "airCommand":I
    const-string v6, "spen_feedback_sound_air_view"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, "airView":I
    const-string v6, "pen_writing_sound"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 136
    .local v3, "penWriting":I
    or-int v6, v0, v1

    or-int v2, v6, v3

    .line 138
    if-ge v2, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    sget-object v1, Lcom/android/settings/SPenSoundFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 80
    .local v0, "check":Z
    iget-object v1, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 84
    iget-object v4, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/android/settings/SPenSoundFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "spen_feedback_sound_air_command"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v4, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/android/settings/SPenSoundFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "spen_feedback_sound_air_view"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    sget-object v4, Lcom/android/settings/SPenSoundFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_writing_sound"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    return-void

    :cond_0
    move v1, v3

    .line 84
    goto :goto_0

    :cond_1
    move v1, v3

    .line 86
    goto :goto_1

    :cond_2
    move v2, v3

    .line 88
    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 96
    sget-object v1, Lcom/android/settings/SPenSoundFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spen_feedback_sound"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->updateState()V

    .line 99
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SPenSoundFeedbackSettings;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SPenSoundFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    .line 42
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/SPenSoundFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 44
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/android/settings/SPenSoundFeedbackSettings;->addPreferencesFromResource(I)V

    .line 46
    const-string v0, "sound_feedback_air_command"

    invoke-virtual {p0, v0}, Lcom/android/settings/SPenSoundFeedbackSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    const-string v0, "sound_feedback_air_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/SPenSoundFeedbackSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    .line 49
    iget-object v0, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    const-string v0, "sound_feedback_handwriting"

    invoke-virtual {p0, v0}, Lcom/android/settings/SPenSoundFeedbackSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    .line 51
    iget-object v0, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    sget-object v1, Lcom/android/settings/SPenSoundFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    sget-object v1, Lcom/android/settings/SPenSoundFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/settings/SPenSoundFeedbackSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/android/settings/SPenSoundFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spen_feedback_sound"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    const v1, 0x7f0a135a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0a1357

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSoundFeedbackSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SPenSoundFeedbackSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 126
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 127
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 104
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 106
    .local v0, "value":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirCommandCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "spen_feedback_sound_air_command"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    :cond_0
    :goto_1
    return v1

    .line 104
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    .restart local v0    # "value":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackAirViewCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "spen_feedback_sound_air_view"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SPenSoundFeedbackSettings;->mSoundFeedbackHandwritingCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_writing_sound"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/16 v4, 0x10

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 59
    sget-object v2, Lcom/android/settings/SPenSoundFeedbackSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_1

    .line 60
    sget-object v2, Lcom/android/settings/SPenSoundFeedbackSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    .local v0, "padding":I
    sget-object v2, Lcom/android/settings/SPenSoundFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 63
    sget-object v2, Lcom/android/settings/SPenSoundFeedbackSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 65
    sget-object v2, Lcom/android/settings/SPenSoundFeedbackSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    sget-object v3, Lcom/android/settings/SPenSoundFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 69
    sget-object v2, Lcom/android/settings/SPenSoundFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    sget-object v3, Lcom/android/settings/SPenSoundFeedbackSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "spen_feedback_sound"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 71
    .end local v0    # "padding":I
    :cond_1
    sget-object v1, Lcom/android/settings/SPenSoundFeedbackSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SPenSoundFeedbackSettings;->updateState()V

    .line 74
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 75
    return-void
.end method
