.class public Lcom/android/settings/fmm/TabletRemoteControls;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TabletRemoteControls.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mGoogleAccountContext:Landroid/content/Context;

.field private mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mGoogleAccountPref:Landroid/preference/Preference;

.field private mHasGoogleAccount:Z

.field private mHasGoogleDescription:Z

.field private mHasSamsungAccount:Z

.field private mNetworkPref:Landroid/preference/CheckBoxPreference;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    .line 76
    new-instance v0, Lcom/android/settings/fmm/TabletRemoteControls$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/TabletRemoteControls$1;-><init>(Lcom/android/settings/fmm/TabletRemoteControls;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/TabletRemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/TabletRemoteControls;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/TabletRemoteControls;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/TabletRemoteControls;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private updateAccountInformation()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 232
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 233
    .local v2, "samsungAccnts":[Landroid/accounts/Account;
    array-length v3, v2

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    .line 234
    iget-boolean v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-eqz v3, :cond_2

    .line 235
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    aget-object v6, v2, v5

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v7, v7, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    const v6, 0x7f040141

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 244
    :goto_1
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 245
    .local v0, "googleAccnts":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_3

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    .line 249
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_0
    return-void

    .end local v0    # "googleAccnts":[Landroid/accounts/Account;
    :cond_1
    move v3, v5

    .line 233
    goto :goto_0

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    const v6, 0x7f0a0c82

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 240
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    const v6, 0x7f0a0fb7

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 241
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    const v6, 0x7f0401d2

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    .restart local v0    # "googleAccnts":[Landroid/accounts/Account;
    :cond_3
    move v4, v5

    .line 245
    goto :goto_2
.end method


# virtual methods
.method public SetReactivationFlag(I)I
    .locals 3
    .param p1, "setFlag"    # I

    .prologue
    const/4 v0, 0x1

    .line 275
    sget-object v1, Lcom/android/settings/fmm/TabletRemoteControls;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v0, "TabletRemoteControls"

    const-string v1, "SetReactivationFlag() returns error!! "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    .line 280
    :cond_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 203
    if-eqz p2, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p0, v4}, Lcom/android/settings/fmm/TabletRemoteControls;->SetReactivationFlag(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.remotecontrol_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TabletRemoteControls"

    const-string v2, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "TabletRemoteControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged [SetReactivationFlag] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/settings/fmm/TabletRemoteControls;->SetReactivationFlag(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    invoke-virtual {p0, v5}, Lcom/android/settings/fmm/TabletRemoteControls;->SetReactivationFlag(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.remotecontrol_off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "TabletRemoteControls"

    const-string v2, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v1, "TabletRemoteControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged [SetReactivationFlagx] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/android/settings/fmm/TabletRemoteControls;->SetReactivationFlag(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x10

    const/4 v9, -0x2

    const/4 v7, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const-string v5, "TabletRemoteControls"

    const-string v6, "TabletRemoteControls"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    new-instance v5, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/settings/fmm/TabletRemoteControls;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 102
    .local v4, "padding":I
    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v4, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 103
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    .line 108
    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    const v5, 0x7f0700ab

    invoke-virtual {p0, v5}, Lcom/android/settings/fmm/TabletRemoteControls;->addPreferencesFromResource(I)V

    .line 112
    const-string v5, "samsung_account"

    invoke-virtual {p0, v5}, Lcom/android/settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    .line 113
    const-string v5, "google_account"

    invoke-virtual {p0, v5}, Lcom/android/settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    .line 114
    const-string v5, "location_network"

    invoke-virtual {p0, v5}, Lcom/android/settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 118
    .local v1, "desc":[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 119
    aget-object v5, v1, v3

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.osp.app.signin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    aget-object v5, v1, v3

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 125
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v7, v7, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    const/4 v3, 0x0

    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 133
    aget-object v5, v1, v3

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    aget-object v5, v1, v3

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 135
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    .line 140
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    if-eqz v5, :cond_3

    .line 142
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :goto_3
    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v7, v7, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 150
    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0a087d

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 154
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "network"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    return-void

    .line 118
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "TabletRemoteControls"

    const-string v6, "No Package name for account type com.osp.app.signin"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 132
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 143
    :catch_1
    move-exception v2

    .line 144
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "TabletRemoteControls"

    const-string v6, "No Package name for account type com.google"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 151
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0a087b

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_4
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 190
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 271
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 260
    iget-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-nez v0, :cond_0

    .line 261
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v8, "mIntent":Landroid/content/Intent;
    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.AccountView"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v0, "MODE"

    const-string v1, "REMOTE_CONTROLS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v8}, Lcom/android/settings/fmm/TabletRemoteControls;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    .end local v8    # "mIntent":Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 267
    iget-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 160
    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "FMMPreferences"

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "pref_fmm"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-eqz v1, :cond_3

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 172
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "remote_control"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "remote_control"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->updateAccountInformation()V

    .line 178
    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    return-void

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 172
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 199
    :cond_0
    return-void
.end method
