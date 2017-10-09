.class public Lcom/android/settings/settingssearch/SettingsSearchIccLockStateService;
.super Landroid/app/Service;
.source "SettingsSearchIccLockStateService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public SettingsSearchGetIccLockState()I
    .locals 4

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "state":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 26
    .local v0, "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 28
    :cond_0
    const/4 v1, 0x1

    .line 33
    :goto_0
    return v1

    .line 30
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "stratId"    # I

    .prologue
    .line 38
    const-string v2, "SettingSearch/SettingsSearchIccLockStateService"

    const-string v3, "onStartCommand"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchIccLockStateService;->SettingsSearchGetIccLockState()I

    move-result v0

    .line 40
    .local v0, "enable":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.settings.CHANGED_ICC_LOCK_ENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v2, "icc_lock_state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/settings/settingssearch/SettingsSearchIccLockStateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 47
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method
