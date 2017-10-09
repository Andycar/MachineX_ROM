.class public Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;
.super Landroid/app/Activity;
.source "PersonalPageTutorialAddActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private UpdateTutorialPage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    const-string v2, "PersonalPageTutorialAddActivity"

    const-string v3, "UpdateTutorialPage: REMOVE -> Finish "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    .local v0, "SharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 61
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_pp_tutorial_do_not_show_again"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-virtual {p0, v4}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->finish()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->UpdateTutorialPage()V

    return-void
.end method

.method private initViewsForAdd()V
    .locals 2

    .prologue
    .line 44
    const v1, 0x7f040160

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->setContentView(I)V

    .line 45
    const v1, 0x7f10031b

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 46
    .local v0, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity$1;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
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

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->setRequestedOrientation(I)V

    .line 33
    :cond_0
    const-string v0, "PersonalPageTutorialAddActivity"

    const-string v1, "Tutorial create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->initViewsForAdd()V

    .line 36
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 70
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, "PersonalPageTutorialAddActivity"

    const-string v2, "UpdateTutorialPage back: Add -> App "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->finish()V

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 41
    return-void
.end method
