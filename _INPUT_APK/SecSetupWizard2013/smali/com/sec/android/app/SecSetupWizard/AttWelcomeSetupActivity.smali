.class public Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;
.super Landroid/app/Activity;
.source "AttWelcomeSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mSecAcctAdded:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->mSecAcctAdded:I

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 114
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    const-string v0, "AttWelcomeSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , and requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 139
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->setResult(I)V

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->finish()V

    .line 142
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d0002

    if-ne v3, v4, :cond_0

    .line 119
    iget v3, p0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->mSecAcctAdded:I

    if-ne v3, v2, :cond_1

    .line 120
    const v3, 0x7f0b00a3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.osp.app.signin.action.SAMSUNG_ACCOUNT_SETUPWIZARD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 124
    .local v1, "isOwner":Z
    :goto_1
    sget-boolean v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    if-ne v3, v2, :cond_2

    if-ne v1, v2, :cond_2

    .line 125
    const-string v3, "AttWelcomeSetupActivity"

    const-string v4, "Lanching Samsung Account with extra information for reactivation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v3, "required_auth"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    :cond_2
    const/16 v2, 0x3f2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 123
    .end local v1    # "isOwner":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 42
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(I)V

    .line 45
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->setContentView(Landroid/view/View;)V

    .line 47
    const v3, 0x7f0d0002

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v3, 0x7f0d0016

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 50
    .local v1, "nextBtnArea":Landroid/widget/LinearLayout;
    const v3, 0x7f0d0017

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v3, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->setIndicatorTransparency()V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const v8, 0x7f080009

    const v7, 0x3ecccccd    # 0.4f

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 85
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string v6, "com.osp.app.signin"

    invoke-virtual {v0, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 88
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v6, v1

    if-lez v6, :cond_0

    .line 89
    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->mSecAcctAdded:I

    .line 92
    const v6, 0x7f0d0004

    invoke-virtual {p0, v6}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 93
    .local v4, "saDesc":Landroid/widget/TextView;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 98
    const v6, 0x7f0d0003

    invoke-virtual {p0, v6}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 99
    .local v5, "saText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 103
    const v6, 0x7f0d0005

    invoke-virtual {p0, v6}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 104
    .local v2, "nextArrowArea":Landroid/widget/ImageView;
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    const v6, 0x7f0d0017

    invoke-virtual {p0, v6}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    .local v3, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .end local v2    # "nextArrowArea":Landroid/widget/ImageView;
    .end local v3    # "nextBtnText":Landroid/widget/TextView;
    .end local v4    # "saDesc":Landroid/widget/TextView;
    .end local v5    # "saText":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
