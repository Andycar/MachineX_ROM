.class public Lcom/android/settings/PenHelpMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenHelpMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpMenu;->addPreferencesFromResource(I)V

    .line 41
    :goto_0
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/PenHelpMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pen_help_hovering"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenHelpMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 45
    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_GESTURE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/PenHelpMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pen_help_quick_command"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenHelpMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 48
    :cond_1
    return-void

    .line 33
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSPen30()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpMenu;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 36
    :cond_3
    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpMenu;->addPreferencesFromResource(I)V

    goto :goto_0
.end method
