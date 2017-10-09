.class public Lcom/android/settings/vpn2/VpnSettingsForATT;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnSettingsForATT.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAdvVPN:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0700ed

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettingsForATT;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettingsForATT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "adv_vpn"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    .line 50
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    const-string v1, "android.samsung.HiddenIPSecClient.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettingsForATT;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettingsForATT;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isVpnAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "isVpnAllowed":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 77
    const-string v3, "vpn_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/vpn2/VpnSettingsForATT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "isVpnAllowed":I
    :cond_0
    :goto_1
    return-void

    .line 77
    .restart local v1    # "isVpnAllowed":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 81
    .end local v1    # "isVpnAllowed":I
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
