.class public Lcom/android/settings/PreloadAppUpdate;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreloadAppUpdate.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field builder:Landroid/app/AlertDialog$Builder;

.field private mAutoUpdatePreload:Landroid/preference/ListPreference;

.field private mAutoUpdatePreload_detail:Landroid/preference/PreferenceScreen;

.field private mSummary:[Ljava/lang/String;

.field private mUpdatePrealod:Landroid/preference/PreferenceScreen;

.field private preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mSummary:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PreloadAppUpdate;)Lcom/sec/android/samsungapps/util/PreloadUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PreloadAppUpdate;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/settings/PreloadAppUpdate;->addPreferencesFromResource(I)V

    .line 56
    const-string v0, "update_preaload"

    invoke-virtual {p0, v0}, Lcom/android/settings/PreloadAppUpdate;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mUpdatePrealod:Landroid/preference/PreferenceScreen;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mSummary:[Ljava/lang/String;

    .line 59
    const-string v0, "auto_update_preload"

    invoke-virtual {p0, v0}, Lcom/android/settings/PreloadAppUpdate;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    .line 60
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sautoupdate_auto_update"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->mSummary:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sautoupdate_auto_update"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    const-string v0, "auto_update_preload_detail"

    invoke-virtual {p0, v0}, Lcom/android/settings/PreloadAppUpdate;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload_detail:Landroid/preference/PreferenceScreen;

    .line 64
    new-instance v0, Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    .line 65
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    new-instance v1, Lcom/android/settings/PreloadAppUpdate$1;

    invoke-direct {v1, p0}, Lcom/android/settings/PreloadAppUpdate$1;-><init>(Lcom/android/settings/PreloadAppUpdate;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->setListener(Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;)V

    .line 71
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "key":Ljava/lang/String;
    const-string v2, "auto_update_preload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, "value":I
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sautoupdate_auto_update"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdate;->mSummary:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sautoupdate_auto_update"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    const-string v2, "PreloadAppUpdate"

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sautoupdate_auto_update"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1    # "value":I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 75
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->mUpdatePrealod:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_2

    .line 78
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/PreloadAppUpdate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 79
    .local v7, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v7, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 80
    .local v8, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    .line 82
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a1be4

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a1bea

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 84
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a03df

    new-instance v4, Lcom/android/settings/PreloadAppUpdate$2;

    invoke-direct {v4, p0}, Lcom/android/settings/PreloadAppUpdate$2;-><init>(Lcom/android/settings/PreloadAppUpdate;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a0dea

    new-instance v4, Lcom/android/settings/PreloadAppUpdate$3;

    invoke-direct {v4, p0}, Lcom/android/settings/PreloadAppUpdate$3;-><init>(Lcom/android/settings/PreloadAppUpdate;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/PreloadAppUpdate$4;

    invoke-direct {v4, p0}, Lcom/android/settings/PreloadAppUpdate$4;-><init>(Lcom/android/settings/PreloadAppUpdate;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->alertDialog:Landroid/app/AlertDialog;

    .line 106
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 120
    .end local v7    # "cManager":Landroid/net/ConnectivityManager;
    .end local v8    # "wifi":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v9

    .line 108
    .restart local v7    # "cManager":Landroid/net/ConnectivityManager;
    .restart local v8    # "wifi":Landroid/net/NetworkInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->execute()V

    goto :goto_0

    .line 110
    .end local v7    # "cManager":Landroid/net/ConnectivityManager;
    .end local v8    # "wifi":Landroid/net/NetworkInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload_detail:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_0

    .line 111
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 114
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-string v1, "com.android.settings.PreloadAppUpdateList"

    const-string v4, ""

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
