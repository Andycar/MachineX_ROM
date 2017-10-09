.class public Lcom/sec/android/app/SecSetupWizard/LocationActivity;
.super Landroid/app/Activity;
.source "LocationActivity.java"


# instance fields
.field private log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

.field private mAgreeSharing:Landroid/widget/CheckBox;

.field private mAgreeUseScanMode:Landroid/widget/CheckBox;

.field private mAgreeUseSearch:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/LocationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LocationActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->setLocationAgreement()V

    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 56
    const v2, 0x7f0d0050

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeSharing:Landroid/widget/CheckBox;

    .line 57
    const v2, 0x7f0d0051

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseSearch:Landroid/widget/CheckBox;

    .line 58
    const v2, 0x7f0d0052

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseScanMode:Landroid/widget/CheckBox;

    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->loadPreferences()V

    .line 63
    const v2, 0x7f0d0016

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 64
    .local v1, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/sec/android/app/SecSetupWizard/LocationActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/LocationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "desc_tts":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method private loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "DCM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDI"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeSharing:Landroid/widget/CheckBox;

    const-string v2, "agreeSharing"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseSearch:Landroid/widget/CheckBox;

    const-string v2, "agreeUseSearch"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseScanMode:Landroid/widget/CheckBox;

    const-string v2, "agreeUseWifiScanMode"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v1, "BMW"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeSharing:Landroid/widget/CheckBox;

    const-string v2, "agreeSharing"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseSearch:Landroid/widget/CheckBox;

    const-string v2, "agreeUseSearch"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseScanMode:Landroid/widget/CheckBox;

    const-string v2, "agreeUseWifiScanMode"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeSharing:Landroid/widget/CheckBox;

    const-string v2, "agreeSharing"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseSearch:Landroid/widget/CheckBox;

    const-string v2, "agreeUseSearch"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseScanMode:Landroid/widget/CheckBox;

    const-string v2, "agreeUseWifiScanMode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 102
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "agreeSharing"

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeSharing:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v1, "agreeUseSearch"

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseSearch:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string v1, "agreeUseWifiScanMode"

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseScanMode:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 81
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 82
    return-void
.end method

.method private setLocationAgreement()V
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "LocationActivity"

    const-string v3, "setLocationAgreement()"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, "localContentResolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeSharing:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "network_location_opt_in"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    :cond_0
    const-string v2, "wifi_scan_always_enabled"

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseScanMode:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    const-string v1, "network"

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeSharing:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->mAgreeUseSearch:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/SecSetupWizard/UseLocationForServices;->setUseLocationForServices(Landroid/content/Context;Z)Z

    .line 127
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 35
    :cond_0
    new-instance v2, Lcom/sec/android/app/SecSetupWizard/LogMsg;

    invoke-direct {v2}, Lcom/sec/android/app/SecSetupWizard/LogMsg;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    .line 36
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v2, 0x7f0d0013

    invoke-virtual {v0, v2}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    .local v1, "titleView":Landroid/widget/TextView;
    const v2, 0x7f0b0094

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    const v2, 0x7f030012

    invoke-virtual {v0, v2}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(I)V

    .line 42
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->initView()V

    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->setIndicatorTransparency()V

    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 111
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->finish()V

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->savePreferences()V

    .line 53
    return-void
.end method
