.class public Lcom/android/settings/wifi/WificmccSetupActivity;
.super Landroid/app/Activity;
.source "WificmccSetupActivity.java"


# instance fields
.field private mCMCCEnabler:Lcom/android/settings/wifi/CMCCEnabler;

.field private mIsTablet:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mView:Landroid/view/View;

.field private nextButton:Landroid/view/View;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 163
    const v0, 0x7f10009d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WificmccSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->nextButton:Landroid/view/View;

    .line 164
    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WificmccSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WificmccSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f1000b2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WificmccSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mSwitch:Landroid/widget/Switch;

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->nextButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->nextButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/WificmccSetupActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WificmccSetupActivity$1;-><init>(Lcom/android/settings/wifi/WificmccSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mCMCCEnabler:Lcom/android/settings/wifi/CMCCEnabler;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lcom/android/settings/wifi/CMCCEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mSwitch:Landroid/widget/Switch;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/CMCCEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mCMCCEnabler:Lcom/android/settings/wifi/CMCCEnabler;

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mCMCCEnabler:Lcom/android/settings/wifi/CMCCEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CMCCEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mIsTablet:Z

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WificmccSetupActivity;->requestWindowFeature(I)Z

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/WificmccSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 105
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WificmccSetupActivity;->setContentView(I)V

    .line 106
    const v0, 0x7f1000b0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WificmccSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mView:Landroid/view/View;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/wifi/WificmccSetupActivity;->initView()V

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mIsTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/wifi/WificmccSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mView:Landroid/view/View;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mView:Landroid/view/View;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mCMCCEnabler:Lcom/android/settings/wifi/CMCCEnabler;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mCMCCEnabler:Lcom/android/settings/wifi/CMCCEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/CMCCEnabler;->pause()V

    .line 149
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mCMCCEnabler:Lcom/android/settings/wifi/CMCCEnabler;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WificmccSetupActivity;->mCMCCEnabler:Lcom/android/settings/wifi/CMCCEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/CMCCEnabler;->resume()V

    .line 157
    :cond_0
    return-void
.end method
