.class public Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;
.super Landroid/app/Activity;
.source "EmailAccountConfigureList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAccountViewId:I

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mAccountViewId:I

    .line 104
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList$2;-><init>(Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 97
    return-void
.end method

.method private loadDynamicEmails(ILandroid/accounts/Account;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 126
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 128
    .local v1, "emailLayout":Landroid/widget/LinearLayout;
    const v3, 0x7f0d0038

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    .local v0, "email":Landroid/widget/TextView;
    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method private removeAccountViews(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-virtual {p0, p1}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    .local v0, "baseView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 87
    .local v1, "childCount":I
    :goto_0
    if-le v1, v3, :cond_0

    .line 88
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 101
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    return-void
.end method


# virtual methods
.method addAccountToView()V
    .locals 12

    .prologue
    const v11, 0x7f0d005f

    const/4 v10, 0x1

    .line 166
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 167
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    const-string v8, "com.android.email"

    invoke-virtual {v1, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 170
    .local v2, "accounts":[Landroid/accounts/Account;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v8, v2

    if-ge v6, v8, :cond_4

    .line 171
    aget-object v0, v2, v6

    .line 172
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "splitid":[Ljava/lang/String;
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "domain":Ljava/lang/String;
    const-string v8, "yahoo"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 175
    const v8, 0x7f0d005c

    invoke-direct {p0, v8, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->loadDynamicEmails(ILandroid/accounts/Account;)V

    .line 170
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    :cond_0
    const-string v8, "aol"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    const v8, 0x7f0d0065

    invoke-direct {p0, v8, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->loadDynamicEmails(ILandroid/accounts/Account;)V

    goto :goto_1

    .line 178
    :cond_1
    const-string v8, "att.net"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 179
    const v8, 0x7f0d0062

    invoke-direct {p0, v8, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->loadDynamicEmails(ILandroid/accounts/Account;)V

    goto :goto_1

    .line 180
    :cond_2
    const-string v8, "hotmail"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 181
    invoke-direct {p0, v11, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->loadDynamicEmails(ILandroid/accounts/Account;)V

    goto :goto_1

    .line 183
    :cond_3
    const v8, 0x7f0d0068

    invoke-direct {p0, v8, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->loadDynamicEmails(ILandroid/accounts/Account;)V

    goto :goto_1

    .line 187
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v3    # "domain":Ljava/lang/String;
    .end local v7    # "splitid":[Ljava/lang/String;
    :cond_4
    const-string v8, "com.android.exchange"

    invoke-virtual {v1, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 190
    .local v5, "exchangeAccounts":[Landroid/accounts/Account;
    const/4 v6, 0x0

    :goto_2
    array-length v8, v5

    if-ge v6, v8, :cond_6

    .line 191
    aget-object v4, v5, v6

    .line 192
    .local v4, "exchangeAccount":Landroid/accounts/Account;
    iget-object v8, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 193
    .restart local v7    # "splitid":[Ljava/lang/String;
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3    # "domain":Ljava/lang/String;
    const-string v8, "hotmail"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 195
    invoke-direct {p0, v11, v4}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->loadDynamicEmails(ILandroid/accounts/Account;)V

    .line 190
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 197
    :cond_5
    const v8, 0x7f0d0059

    invoke-direct {p0, v8, v4}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->loadDynamicEmails(ILandroid/accounts/Account;)V

    goto :goto_3

    .line 200
    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "exchangeAccount":Landroid/accounts/Account;
    .end local v7    # "splitid":[Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d0036

    if-ne v3, v4, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 138
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 139
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1, v0, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 141
    .local v2, "mainView":Landroid/widget/LinearLayout;
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 162
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "mainView":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d005d

    if-ne v3, v4, :cond_2

    .line 143
    const v3, 0x7f0d005c

    iput v3, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mAccountViewId:I

    .line 144
    const-string v3, "com.android.email"

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d0066

    if-ne v3, v4, :cond_3

    .line 146
    const v3, 0x7f0d0065

    iput v3, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mAccountViewId:I

    .line 147
    const-string v3, "com.android.email"

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d0063

    if-ne v3, v4, :cond_4

    .line 149
    const v3, 0x7f0d0062

    iput v3, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mAccountViewId:I

    .line 150
    const-string v3, "com.android.email"

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d005a

    if-ne v3, v4, :cond_5

    .line 152
    const v3, 0x7f0d0059

    iput v3, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mAccountViewId:I

    .line 153
    const-string v3, "com.android.exchange"

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d0060

    if-ne v3, v4, :cond_6

    .line 155
    const v3, 0x7f0d005f

    iput v3, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mAccountViewId:I

    .line 156
    const-string v3, "com.android.email"

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d0069

    if-ne v3, v4, :cond_0

    .line 158
    const v3, 0x7f0d0068

    iput v3, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->mAccountViewId:I

    .line 159
    const-string v3, "com.android.email"

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->addAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 40
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v3, 0x7f030015

    invoke-virtual {v0, v3}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(I)V

    .line 43
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->setContentView(Landroid/view/View;)V

    .line 45
    const v3, 0x7f0d005a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v3, 0x7f0d005d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v3, 0x7f0d0060

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v3, 0x7f0d0063

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v3, 0x7f0d0066

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v3, 0x7f0d0069

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v3, 0x7f0d0016

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 53
    .local v1, "nextBtnArea":Landroid/widget/LinearLayout;
    const v3, 0x7f0d0017

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v3, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList$1;-><init>(Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->setIndicatorTransparency()V

    .line 68
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    const v0, 0x7f0d005c

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->removeAccountViews(I)V

    .line 75
    const v0, 0x7f0d0065

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->removeAccountViews(I)V

    .line 76
    const v0, 0x7f0d0062

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->removeAccountViews(I)V

    .line 77
    const v0, 0x7f0d0059

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->removeAccountViews(I)V

    .line 78
    const v0, 0x7f0d0068

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->removeAccountViews(I)V

    .line 79
    const v0, 0x7f0d005f

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->removeAccountViews(I)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->addAccountToView()V

    .line 82
    return-void
.end method
