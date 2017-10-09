.class public Lcom/android/settings/OneHandInteractionAreaFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandInteractionAreaFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCalculator:Landroid/preference/CheckBoxPreference;

.field private mDialer:Landroid/preference/CheckBoxPreference;

.field private mInteractionAreaObserver:Landroid/database/ContentObserver;

.field private mPattern:Landroid/preference/CheckBoxPreference;

.field private mSamsungKeypad:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    const-string v0, "OneHandInteractionAreaFragment"

    iput-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/android/settings/OneHandInteractionAreaFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OneHandInteractionAreaFragment$1;-><init>(Lcom/android/settings/OneHandInteractionAreaFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mInteractionAreaObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OneHandInteractionAreaFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandInteractionAreaFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private showMagnificationDisablePopup()V
    .locals 7

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a167f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "item":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0a7a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0a3c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1680

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/OneHandInteractionAreaFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings/OneHandInteractionAreaFragment$4;-><init>(Lcom/android/settings/OneHandInteractionAreaFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/OneHandInteractionAreaFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/OneHandInteractionAreaFragment$3;-><init>(Lcom/android/settings/OneHandInteractionAreaFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/OneHandInteractionAreaFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/OneHandInteractionAreaFragment$2;-><init>(Lcom/android/settings/OneHandInteractionAreaFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 210
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    const-string v0, "dialer"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandInteractionAreaFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mDialer:Landroid/preference/CheckBoxPreference;

    .line 150
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_dialer_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    const-string v0, "samsung_keypad"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandInteractionAreaFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    .line 152
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    const-string v0, "calculator"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandInteractionAreaFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mCalculator:Landroid/preference/CheckBoxPreference;

    .line 154
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_calculator_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    const-string v0, "pattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandInteractionAreaFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mPattern:Landroid/preference/CheckBoxPreference;

    .line 156
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_pattern_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 150
    goto :goto_0

    :cond_2
    move v0, v2

    .line 152
    goto :goto_1

    :cond_3
    move v0, v2

    .line 154
    goto :goto_2

    :cond_4
    move v1, v2

    .line 156
    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandInteractionAreaFragment;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->init()V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "OneHandInteractionAreaFragment"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mInteractionAreaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 108
    .local v0, "magnificationEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    const-string v3, "OneHandInteractionAreaFragment"

    const-string v4, "mDialer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_dialer_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .end local v0    # "magnificationEnabled":Z
    :cond_1
    move v0, v2

    .line 106
    goto :goto_0

    .line 113
    .restart local v0    # "magnificationEnabled":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "onehand_dialer_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 115
    :cond_3
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    const-string v3, "OneHandInteractionAreaFragment"

    const-string v4, "mSamsungKeypad"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    if-eqz v0, :cond_4

    .line 121
    invoke-direct {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->showMagnificationDisablePopup()V

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_samsungkeypad_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "onehand_samsungkeypad_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 129
    :cond_6
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 130
    const-string v3, "OneHandInteractionAreaFragment"

    const-string v4, "mCalculator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_calculator_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "onehand_calculator_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 136
    :cond_8
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "OneHandInteractionAreaFragment"

    const-string v4, "mPattern"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_pattern_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 141
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "onehand_pattern_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "OneHandInteractionAreaFragment"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->updatePref()V

    .line 82
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mInteractionAreaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method public updatePref()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mDialer:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_dialer_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mCalculator:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_calculator_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mPattern:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_pattern_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 166
    goto :goto_0

    :cond_5
    move v0, v2

    .line 169
    goto :goto_1

    :cond_6
    move v0, v2

    .line 172
    goto :goto_2

    :cond_7
    move v1, v2

    .line 175
    goto :goto_3
.end method
