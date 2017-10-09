.class public Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiDisconnectWeakApSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wifi_connection_normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wifi_connection_downtown"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wifi_connection_home"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v7, 0x7f0700fa

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->addPreferencesFromResource(I)V

    .line 35
    const-string v7, "mode_list"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 36
    .local v2, "modeList":Landroid/preference/PreferenceGroup;
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_connection_monitor_settings"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 39
    .local v3, "position":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "settings":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0063

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "summary":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 43
    new-instance v4, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;-><init>(Landroid/content/Context;)V

    .line 45
    .local v4, "pref":Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;->setKey(Ljava/lang/String;)V

    .line 46
    aget-object v7, v5, v1

    invoke-virtual {v4, v7}, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    aget-object v7, v6, v1

    invoke-virtual {v4, v7}, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;->setSelectable(Z)V

    .line 49
    invoke-virtual {v4, v9}, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;->setPersistent(Z)V

    .line 50
    invoke-virtual {v4, p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    if-ne v1, v3, :cond_0

    .line 53
    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;->setChecked()V

    .line 56
    :cond_0
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "pref":Lcom/android/settings/wifi/WifiDisconnectWeakApPreference;
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 63
    const/16 v7, 0x1e

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 67
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 79
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->finish()V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 97
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 119
    :goto_0
    return v7

    .line 103
    :cond_0
    const/4 v2, 0x0

    .local v2, "position":I
    move-object v4, p2

    .line 104
    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "summary":[Ljava/lang/String;
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    move v2, v0

    .line 117
    .end local v3    # "summary":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDisconnectWeakApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connection_monitor_settings"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 73
    return-void
.end method
