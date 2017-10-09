.class public Lcom/android/settings/powersavingmode/PowerNotiDataDialog;
.super Landroid/app/Activity;
.source "PowerNotiDataDialog.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 94
    new-instance v0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;-><init>(Lcom/android/settings/powersavingmode/PowerNotiDataDialog;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 18
    sput-object p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const-string v5, "PowerNotiDataDialog"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sput-object p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    .line 30
    sget-object v5, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContentResolver:Landroid/content/ContentResolver;

    .line 33
    sget-object v5, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultra_powersaving_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 34
    .local v4, "ultra_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 35
    .local v3, "mIntent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->finish()V

    .line 92
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "BgDataChanged"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "Bgchanging":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limit_bgdata"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 48
    .local v2, "data_powersaving":I
    if-nez v4, :cond_3

    .line 49
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 51
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 53
    :cond_2
    new-instance v5, Landroid/app/ProgressDialog;

    sget-object v6, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 55
    if-ne v2, v8, :cond_4

    .line 56
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f0a1dbc

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 65
    :goto_1
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 66
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 67
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    .line 68
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 73
    :cond_3
    new-instance v1, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, "Intent":Landroid/content/Intent;
    const-string v5, "data"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    sget-object v5, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 58
    .end local v1    # "Intent":Landroid/content/Intent;
    :cond_4
    const-string v5, "PowerSaving"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 59
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f0a1dc1

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 61
    :cond_5
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f0a1dbd

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 113
    const-string v1, "PowerNotiDataDialog"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->dismissDialog()V

    .line 115
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 129
    const-string v1, "PowerNotiDataDialog"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_DATA_SERVICE_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "PowerNotiDataDialog"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 142
    return-void
.end method
