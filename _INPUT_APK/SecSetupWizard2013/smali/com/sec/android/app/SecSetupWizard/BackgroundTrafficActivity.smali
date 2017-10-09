.class public Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;
.super Landroid/app/Activity;
.source "BackgroundTrafficActivity.java"


# instance fields
.field private backgroundSwitch:Landroid/widget/Switch;

.field private datausagelistenner:Landroid/view/View$OnClickListener;

.field public switchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->switchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 101
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$3;-><init>(Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->datausagelistenner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 54
    const v4, 0x7f0d0007

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    const v4, 0x7f0d0009

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f0d0008

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->backgroundSwitch:Landroid/widget/Switch;

    .line 58
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->backgroundSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "bg_auto_optimization_setup"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 59
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->backgroundSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->switchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v4, 0x7f0d0016

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    .local v1, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v4, 0x7f0d000a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    .local v0, "button":Landroid/widget/Button;
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->datausagelistenner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void

    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "nextBtnArea":Landroid/widget/LinearLayout;
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 58
    goto :goto_0
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 119
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 120
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 34
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(I)V

    .line 36
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->setContentView(Landroid/view/View;)V

    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->initView()V

    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->setIndicatorTransparency()V

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.skt.apra.action.SETUP_WIZARD_HAS_RUN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 94
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->finish()V

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->initView()V

    .line 48
    return-void
.end method
