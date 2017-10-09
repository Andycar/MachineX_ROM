.class public Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;
.super Landroid/app/Activity;
.source "PersonalPageTutorialDisclaimerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private UpdateTutorialPage()V
    .locals 3

    .prologue
    .line 60
    const-string v1, "PersonalPageTutorialDisclaimerActivity"

    const-string v2, "UpdateTutorialPage: Disclaimer -> App "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->finish()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->UpdateTutorialPage()V

    return-void
.end method

.method private initViewsForAPP()V
    .locals 2

    .prologue
    .line 48
    const v1, 0x7f040162

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->setContentView(I)V

    .line 49
    const v1, 0x7f10031b

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    .local v0, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity$1;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klimt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->setRequestedOrientation(I)V

    .line 37
    :cond_0
    const-string v0, "PersonalPageTutorialDisclaimerActivity"

    const-string v1, "PersonalPage PersonalPageTutorialDisclaimerActivity create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->initViewsForAPP()V

    .line 40
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 73
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "PersonalPageTutorialDisclaimerActivity"

    const-string v2, "UpdateTutorialPage back: Disclaimer -> Welcome "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/personalpage/PersonalPageTutorial;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;->finish()V

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    return-void
.end method
