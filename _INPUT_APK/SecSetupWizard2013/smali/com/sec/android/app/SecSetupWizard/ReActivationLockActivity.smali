.class public Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;
.super Landroid/app/Activity;
.source "ReActivationLockActivity.java"


# static fields
.field private static mSamsungSignin:I


# instance fields
.field private log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

.field private mContext:Landroid/content/Context;

.field private mInitialReactivationLock:Z

.field private mLock:Landroid/widget/CheckBox;

.field private mLockMyMobile:I

.field private mReactivationCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private reactivateChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mSamsungSignin:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mInitialReactivationLock:Z

    .line 38
    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mLockMyMobile:I

    .line 116
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mReactivationCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->reactivateChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->reactivateChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->hasSamsungAccount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->onNextButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    return-object v0
.end method

.method private hasSamsungAccount()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "samsung_signin"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mSamsungSignin:I

    .line 178
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 179
    .local v0, "manager":Landroid/accounts/AccountManager;
    const-string v5, "com.osp.app.signin"

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 180
    .local v2, "samsungAccnts":[Landroid/accounts/Account;
    array-length v1, v2

    .line 181
    .local v1, "sa_length":I
    sget v5, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mSamsungSignin:I

    if-eq v5, v4, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v4

    .line 184
    :cond_1
    return v3
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 69
    const v5, 0x7f0d006c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v5, 0x7f0d006d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 75
    .local v4, "tv2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v5, 0x7f0d006e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mLock:Landroid/widget/CheckBox;

    .line 80
    iget-boolean v5, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mInitialReactivationLock:Z

    if-eq v5, v7, :cond_0

    iget v5, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mLockMyMobile:I

    if-ne v5, v7, :cond_1

    .line 81
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iput-boolean v7, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->reactivateChecked:Z

    .line 88
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mLock:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mReactivationCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    const v5, 0x7f0d0016

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 90
    .local v1, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "desc_tts":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    return-void

    .line 84
    .end local v0    # "desc_tts":Ljava/lang/String;
    .end local v1    # "nextBtnArea":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mLock:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    iput-boolean v8, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->reactivateChecked:Z

    goto :goto_0
.end method

.method private onNextButton()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->hasSamsungAccount()Z

    move-result v0

    .line 149
    .local v0, "bHasSamsungAccount":Z
    if-eqz v0, :cond_0

    .line 150
    iget-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->reactivateChecked:Z

    if-ne v3, v5, :cond_2

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->setReactivationFlag(Landroid/content/Context;Z)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_my_mobile"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.reactivationlock_on"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "ReActivationLockActivity"

    const-string v5, " onActivityResult[reactivationlock_on]"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v1, "data":Landroid/content/Intent;
    const-string v3, "hasSamsungAccount"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->setResult(ILandroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->finish()V

    .line 174
    return-void

    .line 157
    .end local v1    # "data":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "ReActivationLockActivity"

    const-string v5, "Reactivation lock on fail"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/sec/android/app/SecSetupWizard/Utils;->setReactivationFlag(Landroid/content/Context;Z)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_my_mobile"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.reactivationlock_off"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "ReActivationLockActivity"

    const-string v5, " onActivityResult[reactivationlock_off]"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "ReActivationLockActivity"

    const-string v5, "Reactivation lock off fail"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 126
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 127
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 140
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v1, "ReActivationLockActivity"

    const-string v2, "Reactivation Lock : SA logon"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->onNextButton()V

    .line 144
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 48
    :cond_0
    new-instance v3, Lcom/sec/android/app/SecSetupWizard/LogMsg;

    invoke-direct {v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    .line 49
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "ReActivationLockActivity"

    const-string v5, "ReActivationLockActivity Page Start"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v3, 0x7f030016

    const v4, 0x7f0b0014

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(II)V

    .line 53
    const v3, 0x7f0d0006

    invoke-virtual {v0, v3}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string v3, "initial_reactivationlock"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const-string v3, "initial_reactivationlock"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mInitialReactivationLock:Z

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_my_mobile"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->mLockMyMobile:I

    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->initView()V

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->setIndicatorTransparency()V

    .line 66
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 130
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 131
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/ReActivationLockActivity;->finish()V

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
