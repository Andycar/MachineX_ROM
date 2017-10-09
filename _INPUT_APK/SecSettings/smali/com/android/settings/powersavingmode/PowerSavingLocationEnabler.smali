.class public Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "PowerSavingLocationEnabler.java"


# instance fields
.field private mCheckPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I


# direct methods
.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCheckPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public onModeChanged(IZ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public setLocationMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->updateVerizonProvider(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->refreshLocationMode()V

    .line 109
    return-void
.end method
