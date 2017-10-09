.class public Lcom/android/settings/wifi/WifiWarningDialog;
.super Landroid/app/Activity;
.source "WifiWarningDialog.java"


# static fields
.field static mWifiEnableWarningDialog:Landroid/app/AlertDialog;


# instance fields
.field private mCurrentDialog:Landroid/app/Dialog;

.field private mEnableWarningDialogIntent:Landroid/content/Intent;

.field private mIsLightTheme:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiWarningDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiWarningDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressOK()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiWarningDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiWarningDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressCancel()V

    return-void
.end method

.method private parseIntent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "WifiWarningDialog"

    const-string v1, "WifiWarningDialog.parseIntent: mEnableWarningDialogIntent == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, ""

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    const-string v1, "dialog_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showEnableWarningDialog()V
    .locals 5

    .prologue
    .line 105
    const-string v2, "WifiWarningDialog"

    const-string v3, "showEnableWarningDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    .line 111
    :cond_0
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiWarningDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 112
    .local v1, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 116
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiWarningDialog$1;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    .line 126
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    :goto_0
    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0a1bfb

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1bfc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1ad6

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01d1

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiWarningDialog$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiWarningDialog$3;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiWarningDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiWarningDialog$2;-><init>(Lcom/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    .line 148
    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 149
    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 150
    return-void

    .line 126
    :cond_2
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private wifiWarningDialogPressCancel()V
    .locals 4

    .prologue
    .line 153
    const-string v2, "WifiWarningDialog"

    const-string v3, "wifiWarningDialogPressCancel. Send Broadcast: WIFI_DIALOG_CANCEL_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "called_dialog"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v2, "from"

    const-string v3, "WifiWarningDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-super {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 162
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiWarningDialog"

    const-string v3, "wifiWarningDialogPressCancel. dismiss dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wifiWarningDialogPressOK()V
    .locals 4

    .prologue
    .line 172
    const-string v2, "WifiWarningDialog"

    const-string v3, "wifiWarningDialogPressOK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 174
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x46

    iput v2, v1, Landroid/os/Message;->what:I

    .line 175
    iget-object v2, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 179
    sget-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 180
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiWarningDialog"

    const-string v3, "wifiWarningDialogPressOK. dismiss dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const-string v0, "WifiWarningDialog"

    const-string v1, "WifiWarningDialog.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    .line 47
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiWarningDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->parseIntent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->parseIntent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wlan_enable_warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "WifiWarningDialog"

    const-string v1, "Receive request: wlan_enable_warning. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 75
    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    sput-object v1, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 80
    iput-object v1, p0, Lcom/android/settings/wifi/WifiWarningDialog;->mCurrentDialog:Landroid/app/Dialog;

    .line 82
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiWarningDialog;->setVisible(Z)V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 63
    sget-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    .line 68
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 69
    return-void
.end method
