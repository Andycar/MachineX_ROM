.class public abstract Lcom/android/settings/location/LocationSettingsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettingsBase.java"


# instance fields
.field lastMode:I

.field private mActive:Z

.field private mCurrentMode:I

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 77
    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->lastMode:I

    return-void
.end method

.method private isRestricted()Z
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "user"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 122
    .local v8, "um":Landroid/os/UserManager;
    const-string v11, "no_share_location"

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 124
    .local v2, "isRestricted":Z
    const/4 v4, 0x0

    .line 127
    .local v4, "mdmRestricted":Z
    new-array v6, v10, [Ljava/lang/String;

    const-string v11, "gps"

    aput-object v11, v6, v9

    .line 128
    .local v6, "selectionArgsGPS":[Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/String;

    const-string v11, "network"

    aput-object v11, v7, v9

    .line 129
    .local v7, "selectionArgsNetwork":[Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    const-string v11, "false"

    aput-object v11, v5, v9

    .line 130
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v13, "isSettingsChangesAllowed"

    invoke-static {v11, v12, v13, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 132
    .local v3, "isSettingsChangesAllowed":I
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/LocationPolicy"

    const-string v13, "isLocationProviderBlocked"

    invoke-static {v11, v12, v13, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "isLocationProviderBlockedGPS":I
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/LocationPolicy"

    const-string v13, "isLocationProviderBlocked"

    invoke-static {v11, v12, v13, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, "isLocationProviderBlockedNetwork":I
    if-eq v3, v14, :cond_1

    if-eq v0, v14, :cond_1

    if-eq v1, v14, :cond_1

    .line 136
    if-eq v0, v10, :cond_0

    if-eq v1, v10, :cond_0

    if-nez v3, :cond_1

    .line 137
    :cond_0
    const/4 v4, 0x1

    .line 141
    :cond_1
    const-string v11, "LocationSettingsBase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isRestricted()   mdmRestricted= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " UserRestricted = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez v2, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    move v9, v10

    :cond_3
    return v9
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Lcom/android/settings/location/LocationSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettingsBase$1;-><init>(Lcom/android/settings/location/LocationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 114
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettingsBase;->updateVerizonProvider(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public refreshLocationMode()V
    .locals 4

    .prologue
    .line 171
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, "mode":I
    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    .line 175
    const-string v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "LocationSettingsBase"

    const-string v2, "Location mode has been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 180
    .end local v0    # "mode":I
    :cond_1
    return-void
.end method

.method public setLocationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const-string v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "LocationSettingsBase"

    const-string v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 156
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettingsBase;->updateVerizonProvider(Landroid/content/Context;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    goto :goto_0
.end method

.method public updateVerizonProvider(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    return-void
.end method
