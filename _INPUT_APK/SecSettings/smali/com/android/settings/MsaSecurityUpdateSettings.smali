.class public Lcom/android/settings/MsaSecurityUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MsaSecurityUpdateSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

.field private mIsAlert:Z

.field private mPrefNetwork:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MsaSecurityUpdateSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MsaSecurityUpdateSettings;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->doManualUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MsaSecurityUpdateSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MsaSecurityUpdateSettings;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/MsaSecurityUpdateSettings;->showUserConsent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MsaSecurityUpdateSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MsaSecurityUpdateSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/MsaSecurityUpdateSettings;->enableAutoUpdate(Z)V

    return-void
.end method

.method private changeAutoUpdate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cr_msa_auto_update"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 133
    .local v0, "enabled":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->isUserConsented()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->showAutoUpdateAlert()V

    .line 139
    :goto_1
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    .line 137
    .restart local v0    # "enabled":Z
    :cond_1
    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/MsaSecurityUpdateSettings;->enableAutoUpdate(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private doManualUpdate()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "msa.action.MANUAL_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private enableAutoUpdate(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cr_msa_auto_update"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserConsented()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "msa_user_consented"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isWiFiConnected()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 272
    .local v1, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 273
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v3

    .line 277
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 278
    .local v2, "type":I
    if-eq v2, v4, :cond_2

    const/16 v5, 0x9

    if-ne v2, v5, :cond_0

    :cond_2
    move v3, v4

    .line 280
    goto :goto_0
.end method

.method private manualUpdate()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->isUserConsented()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/settings/MsaSecurityUpdateSettings;->showUserConsent(I)V

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->isWiFiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->showDataNetworkWarning()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->doManualUpdate()V

    goto :goto_0
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 263
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    :cond_0
    return-void
.end method

.method private showAutoUpdateAlert()V
    .locals 3

    .prologue
    .line 201
    iget-boolean v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mIsAlert:Z

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mIsAlert:Z

    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 209
    const v1, 0x7f0a1f32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 211
    const v1, 0x7f0a1f35

    new-instance v2, Lcom/android/settings/MsaSecurityUpdateSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MsaSecurityUpdateSettings$2;-><init>(Lcom/android/settings/MsaSecurityUpdateSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    const v1, 0x7f0a1f36

    new-instance v2, Lcom/android/settings/MsaSecurityUpdateSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/MsaSecurityUpdateSettings$3;-><init>(Lcom/android/settings/MsaSecurityUpdateSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showDataNetworkWarning()V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mIsAlert:Z

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mIsAlert:Z

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a1f33

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 174
    const v1, 0x7f0a1f34

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 176
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/MsaSecurityUpdateSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/MsaSecurityUpdateSettings$1;-><init>(Lcom/android/settings/MsaSecurityUpdateSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showUserConsent(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 292
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.msa"

    const-string v3, "com.sec.android.app.msa.EulaActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/MsaSecurityUpdateSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 297
    return-void
.end method


# virtual methods
.method public getEntryByValue(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 250
    iget-object v3, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 251
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 252
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 253
    aget-object v3, v2, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    move v1, v0

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    return-object v3

    .line 252
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 114
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 115
    if-ne p2, v1, :cond_1

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/MsaSecurityUpdateSettings;->enableAutoUpdate(Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-nez p2, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/MsaSecurityUpdateSettings;->enableAutoUpdate(Z)V

    goto :goto_0

    .line 122
    :cond_2
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 123
    if-ne p2, v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->manualUpdate()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 65
    :cond_0
    const v1, 0x7f07007c

    invoke-virtual {p0, v1}, Lcom/android/settings/MsaSecurityUpdateSettings;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    const-string v1, "msa_auto_update"

    invoke-virtual {p0, v1}, Lcom/android/settings/MsaSecurityUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v1, "msa_pref_network"

    invoke-virtual {p0, v1}, Lcom/android/settings/MsaSecurityUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mPrefNetwork:Landroid/preference/ListPreference;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "msa_pref_network"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MsaSecurityUpdateSettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mIsAlert:Z

    .line 76
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mIsAlert:Z

    .line 162
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "key":Ljava/lang/String;
    const-string v3, "msa_pref_network"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cr_msa_wifi_only"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    iget-object v3, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/settings/MsaSecurityUpdateSettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    .end local v0    # "entry":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->changeAutoUpdate()V

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 105
    :cond_1
    const-string v1, "manual_updates"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->manualUpdate()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cr_msa_auto_update"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v1, v3

    .line 82
    .local v1, "enabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mAutoUpdatePolicy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cr_msa_wifi_only"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v0, v3

    .line 86
    .local v0, "curPrefNet":I
    :goto_1
    const-string v3, "MsaSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curPrefNet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v3, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/settings/MsaSecurityUpdateSettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/MsaSecurityUpdateSettings;->mPrefNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    return-void

    .end local v0    # "curPrefNet":I
    .end local v1    # "enabled":Z
    .end local v2    # "entry":Ljava/lang/String;
    :cond_0
    move v1, v4

    .line 80
    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_1
    move v0, v4

    .line 84
    goto :goto_1
.end method
