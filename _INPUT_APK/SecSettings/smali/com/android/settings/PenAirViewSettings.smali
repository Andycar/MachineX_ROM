.class public Lcom/android/settings/PenAirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettings.java"


# instance fields
.field private mAirButtonDisablePopup:Landroid/app/AlertDialog;

.field private mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenAirViewSettings;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    const-string v0, "key_pen_pointer"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    .line 181
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_pointer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    const-string v0, "key_pen_information_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    .line 184
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    const-string v0, "key_pen_progress_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    .line 187
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_progress_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    const-string v0, "key_pen_speed_dial_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    .line 191
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_speed_dial_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    const-string v0, "key_pen_icon_label"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    .line 195
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    const-string v0, "key_pen_list_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    .line 198
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    const-string v0, "key_pen_sound_and_haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 202
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_category_pen_additional_feedback"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 181
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 184
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 187
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 191
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 195
    goto :goto_4

    :cond_7
    move v0, v2

    .line 198
    goto :goto_5

    :cond_8
    move v1, v2

    .line 202
    goto :goto_6
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 217
    const-string v9, "pen_hovering_pointer"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 218
    .local v3, "pointer":I
    const-string v9, "pen_hovering_information_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 219
    .local v1, "inforPreview":I
    const-string v9, "pen_hovering_progress_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 220
    .local v4, "progressPreview":I
    const-string v9, "pen_hovering_speed_dial_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 221
    .local v6, "speedDialPreview":I
    const-string v9, "pen_hovering_icon_label"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 222
    .local v0, "iconLabel":I
    const-string v9, "pen_hovering_list_scroll"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 223
    .local v2, "listScroll":I
    const-string v9, "pen_hovering_sound"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 225
    .local v5, "soundHaptic":I
    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 226
    const/4 v5, 0x0

    .line 229
    :cond_0
    or-int v9, v3, v1

    or-int/2addr v9, v4

    or-int/2addr v9, v6

    or-int/2addr v9, v0

    or-int/2addr v9, v2

    or-int/2addr v9, v5

    if-ge v9, v7, :cond_1

    :goto_0
    return v7

    :cond_1
    move v7, v8

    goto :goto_0
.end method

.method private showAirButtonDisableDialog()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    .line 240
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a135f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettings$2;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/PenAirViewSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettings$1;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    .line 255
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewSettings$3;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 264
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 128
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

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const-string v0, "PenAirViewSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettings;->initializeAllPreferences()V

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a1346

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 133
    const-string v6, "PenAirViewSettings"

    const-string v7, "onPreferenceTreeClick() "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v6, p0, Lcom/android/settings/PenAirViewSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    .line 136
    sget v6, Lcom/android/settings/PenAirViewSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 137
    sget v6, Lcom/android/settings/PenAirViewSettings;->mSettingValue:I

    if-ne v6, v4, :cond_2

    move v3, v4

    .local v3, "value":Z
    :goto_0
    move-object v1, p2

    .line 138
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 139
    .local v1, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    .end local v1    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v3    # "value":Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_pointer"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_2
    move v3, v5

    .line 137
    goto :goto_0

    :cond_3
    move v4, v5

    .line 146
    goto :goto_1

    .line 148
    :cond_4
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_button_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_5

    move v0, v4

    .line 151
    .local v0, "airButtonState":Z
    :goto_3
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 153
    .local v2, "isChecked":Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v2, :cond_6

    if-ne v0, v4, :cond_6

    .line 154
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettings;->showAirButtonDisableDialog()V

    goto :goto_2

    .end local v0    # "airButtonState":Z
    .end local v2    # "isChecked":Z
    :cond_5
    move v0, v5

    .line 149
    goto :goto_3

    .line 156
    .restart local v0    # "airButtonState":Z
    .restart local v2    # "isChecked":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_4
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_4

    .line 159
    .end local v0    # "airButtonState":Z
    .end local v2    # "isChecked":Z
    :cond_8
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_progress_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v4, v5

    goto :goto_5

    .line 162
    :cond_a
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_speed_dial_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b

    :goto_6
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_b
    move v4, v5

    goto :goto_6

    .line 165
    :cond_c
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_icon_label"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_d

    :goto_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_d
    move v4, v5

    goto :goto_7

    .line 168
    :cond_e
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_list_scroll"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_f

    :goto_8
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_f
    move v4, v5

    goto :goto_8

    .line 171
    :cond_10
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_sound"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_11

    :goto_9
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_11
    move v4, v5

    goto :goto_9
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "PenAirViewSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 107
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 114
    return-void
.end method
