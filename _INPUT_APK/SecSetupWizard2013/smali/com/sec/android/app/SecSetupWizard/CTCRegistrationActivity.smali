.class public Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;
.super Landroid/app/Activity;
.source "CTCRegistrationActivity.java"


# instance fields
.field check_agree:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->getWindow()Landroid/view/Window;

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


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 42
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v2, 0x7f030005

    const v3, 0x7f0b009b

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(II)V

    .line 45
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->setContentView(Landroid/view/View;)V

    .line 46
    const v2, 0x7f0d001c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->check_agree:Landroid/widget/CheckBox;

    .line 47
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->check_agree:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    const v2, 0x7f0d0016

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 50
    .local v1, "nextBtnArea":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->setIndicatorTransparency()V

    .line 52
    new-instance v2, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->check_agree:Landroid/widget/CheckBox;

    new-instance v3, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 86
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/CTCRegistrationActivity;->finish()V

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
