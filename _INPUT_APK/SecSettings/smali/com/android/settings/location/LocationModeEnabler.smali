.class public Lcom/android/settings/location/LocationModeEnabler;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private final mLocationModeObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 62
    iput-boolean v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mActive:Z

    .line 64
    new-instance v0, Lcom/android/settings/location/LocationModeEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/LocationModeEnabler$1;-><init>(Lcom/android/settings/location/LocationModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    .line 79
    iput-object p1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 81
    iput-boolean v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationModeEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationModeEnabler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationModeEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationModeEnabler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private isRestricted()Z
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 187
    iget-object v11, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 189
    .local v8, "um":Landroid/os/UserManager;
    const-string v11, "no_share_location"

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 191
    .local v2, "isRestricted":Z
    const/4 v4, 0x0

    .line 194
    .local v4, "mdmRestricted":Z
    new-array v6, v10, [Ljava/lang/String;

    const-string v11, "gps"

    aput-object v11, v6, v9

    .line 195
    .local v6, "selectionArgsGPS":[Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/String;

    const-string v11, "network"

    aput-object v11, v7, v9

    .line 196
    .local v7, "selectionArgsNetwork":[Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    const-string v11, "false"

    aput-object v11, v5, v9

    .line 197
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v12, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v13, "isSettingsChangesAllowed"

    invoke-static {v11, v12, v13, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 199
    .local v3, "isSettingsChangesAllowed":I
    iget-object v11, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v12, "content://com.sec.knox.provider/LocationPolicy"

    const-string v13, "isLocationProviderBlocked"

    invoke-static {v11, v12, v13, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "isLocationProviderBlockedGPS":I
    iget-object v11, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v12, "content://com.sec.knox.provider/LocationPolicy"

    const-string v13, "isLocationProviderBlocked"

    invoke-static {v11, v12, v13, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "isLocationProviderBlockedNetwork":I
    if-eq v3, v14, :cond_1

    if-eq v0, v14, :cond_1

    if-eq v1, v14, :cond_1

    .line 203
    if-eq v0, v10, :cond_0

    if-eq v1, v10, :cond_0

    if-nez v3, :cond_1

    .line 204
    :cond_0
    const/4 v4, 0x1

    .line 208
    :cond_1
    const-string v11, "LocationModeEnabler"

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

    .line 210
    if-nez v2, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    move v9, v10

    :cond_3
    return v9
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 141
    .local v0, "locationModeState":Z
    :goto_0
    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    .line 146
    const-string v1, "DCM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->setLocationMode(I)V

    .line 184
    :cond_1
    :goto_1
    return-void

    .end local v0    # "locationModeState":Z
    :cond_2
    move v0, v1

    .line 139
    goto :goto_0

    .line 181
    .restart local v0    # "locationModeState":Z
    :cond_3
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->setLocationMode(I)V

    goto :goto_1
.end method

.method public onModeChanged(IZ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-eqz p1, :cond_2

    move v0, v1

    .line 108
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 112
    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    :cond_1
    const-string v1, "LocationModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModeChanged : mSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v2

    .line 107
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v1, v2

    .line 108
    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    .line 99
    iget-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    return-void
.end method

.method public resume()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    .line 87
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 88
    .local v0, "isChecked":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 90
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/location/LocationModeEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 94
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/location/LocationModeEnabler;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 95
    return-void

    .end local v0    # "isChecked":Z
    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    .restart local v0    # "isChecked":Z
    :cond_1
    move v1, v2

    .line 94
    goto :goto_1
.end method

.method public setLocationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/settings/location/LocationModeEnabler;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    const-string v1, "LocationModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRestricted() = true, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, "LocationModeEnabler"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "LocationModeEnabler"

    const-string v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 224
    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mActive:Z

    if-eqz v1, :cond_1

    .line 225
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/location/LocationModeEnabler;->onModeChanged(IZ)V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->updateVerizonProvider(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/location/LocationModeEnabler;->refreshLocationMode()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 6
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v3, p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    iput-object p1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 129
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 132
    .local v0, "isChecked":Z
    :goto_1
    const-string v3, "LocationModeEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSwitch : mSwitch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/location/LocationModeEnabler;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "isChecked":Z
    :cond_1
    move v0, v2

    .line 131
    goto :goto_1

    .restart local v0    # "isChecked":Z
    :cond_2
    move v1, v2

    .line 134
    goto :goto_2
.end method
