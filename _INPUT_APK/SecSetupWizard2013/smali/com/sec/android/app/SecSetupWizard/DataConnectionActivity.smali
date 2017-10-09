.class public Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;
.super Landroid/app/Activity;
.source "DataConnectionActivity.java"


# instance fields
.field private dataChecked:Z

.field private dataSwitch:Landroid/widget/Switch;

.field private log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

.field private mContext:Landroid/content/Context;

.field public switchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->switchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->dataChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->dataChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 50
    const v5, 0x7f0d0025

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "tv":Landroid/widget/TextView;
    const v5, 0x7f0d0023

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->dataSwitch:Landroid/widget/Switch;

    .line 53
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "salesCode":Ljava/lang/String;
    const-string v5, "TPL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PRT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->dataChecked:Z

    .line 56
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->dataSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 64
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->dataSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->switchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v5, 0x7f0d0016

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    .local v1, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void

    .line 58
    .end local v1    # "nextBtnArea":Landroid/widget/LinearLayout;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->dataChecked:Z

    .line 59
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->dataSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 61
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 93
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 94
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 32
    :cond_0
    new-instance v2, Lcom/sec/android/app/SecSetupWizard/LogMsg;

    invoke-direct {v2}, Lcom/sec/android/app/SecSetupWizard/LogMsg;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    .line 33
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v3, "DataConnectionActivity"

    const-string v4, "DataConnectionActivity Page Start"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v2, 0x7f030007

    invoke-virtual {v0, v2}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(I)V

    .line 37
    const v2, 0x7f0d0006

    invoke-virtual {v0, v2}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->initView()V

    .line 43
    const v2, 0x7f0d0022

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->setIndicatorTransparency()V

    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 112
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 113
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->setResult(I)V

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->finish()V

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
