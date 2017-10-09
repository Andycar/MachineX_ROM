.class public Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;
.super Landroid/app/Activity;
.source "ValidationEmailAccount.java"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount$1;-><init>(Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public checkValidationSecAccount()V
    .locals 8

    .prologue
    .line 65
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 66
    .local v4, "manager":Landroid/accounts/AccountManager;
    const-string v6, "com.osp.app.signin"

    invoke-virtual {v4, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 68
    .local v0, "accountArr":[Landroid/accounts/Account;
    array-length v6, v0

    if-gtz v6, :cond_0

    .line 89
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v1, "abcdefg123"

    .line 74
    .local v1, "clientId":Ljava/lang/String;
    const-string v2, "abcdefghijklmnopqrstuvwxyz123456"

    .line 77
    .local v2, "clientSecret":Ljava/lang/String;
    const-string v5, "com.sec.android.app.SecSetupWizard"

    .line 79
    .local v5, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.msc.action.VALIDATION_CHECK_REQUEST"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "client_id"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v6, "client_secret"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v6, "mypackage"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v6, "OSP_VER"

    const-string v7, "OSP_02"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v6, "MODE"

    const-string v7, "VALIDATION_CHECK"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public complete(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "validation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->setResult(ILandroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->finish()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->setContentView(I)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    .line 44
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ValidationEmailAccount;->checkValidationSecAccount()V

    .line 55
    return-void
.end method
