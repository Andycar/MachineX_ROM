.class public Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;
.super Landroid/app/Activity;
.source "BaiduLocationActivity.java"


# static fields
.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private DEFAULT_NETWORK_PROVIDER_ENABLE:Z

.field private DEFAULT_USE_LOCATION_SERVICE_ENABLE:Z

.field check_location_sharing:Landroid/widget/CheckBox;

.field check_location_wifiscan:Landroid/widget/CheckBox;

.field private mNoBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->DEFAULT_NETWORK_PROVIDER_ENABLE:Z

    .line 50
    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->DEFAULT_USE_LOCATION_SERVICE_ENABLE:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->mNoBack:Z

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 82
    const v1, 0x7f0d000e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_sharing:Landroid/widget/CheckBox;

    .line 83
    const v1, 0x7f0d000d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_wifiscan:Landroid/widget/CheckBox;

    .line 85
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->loadPreferences()V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_sharing:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    const v1, 0x7f0d0016

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    .local v0, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method private loadPreferences()V
    .locals 4

    .prologue
    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_sharing:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_wifiscan:Landroid/widget/CheckBox;

    const-string v2, "agreeUseWifiScanMode"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    return-void
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "agreeSharing"

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_sharing:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v1, "agreeUseWifiScanMode"

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_wifiscan:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 78
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 65
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v1, 0x7f030002

    const v2, 0x7f0b0063

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(II)V

    .line 69
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->setContentView(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->initView()V

    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->setIndicatorTransparency()V

    .line 74
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 137
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->setResult(I)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->finish()V

    .line 139
    const/4 v0, 0x0

    .line 141
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
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->savePreferences()V

    .line 126
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_sharing:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    :cond_0
    return-void
.end method
