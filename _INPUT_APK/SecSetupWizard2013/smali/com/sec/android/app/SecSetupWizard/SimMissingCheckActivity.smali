.class public Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;
.super Landroid/app/Activity;
.source "SimMissingCheckActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    .line 39
    const v5, 0x7f0d0013

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 40
    .local v3, "titlev":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v5, 0x7f0d0076

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 43
    .local v4, "tv":Landroid/widget/TextView;
    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v5, 0x7f0d0016

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 48
    .local v1, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "desc_tts":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    const v5, 0x7f0d0017

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 66
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 27
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v1, 0x7f03001a

    const v2, 0x7f0b0029

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(II)V

    .line 31
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->setContentView(Landroid/view/View;)V

    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->initView()V

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->setIndicatorTransparency()V

    .line 36
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 72
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SimMissingCheckActivity;->finish()V

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
