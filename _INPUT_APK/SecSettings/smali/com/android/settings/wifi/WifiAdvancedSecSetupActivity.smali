.class public Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiAdvancedSecSetupActivity.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 65
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, "frame":Landroid/widget/FrameLayout;
    const v3, 0x7f10054d

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 67
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;-><init>()V

    .line 68
    .local v0, "advancedWifiSettings":Lcom/android/settings/wifi/AdvancedWifiSettings;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 69
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 70
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 71
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->mView:Landroid/view/View;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->mView:Landroid/view/View;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 47
    :cond_0
    const v0, 0x7f04024f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->initialize()V

    .line 55
    const v0, 0x7f10054c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->mView:Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->mView:Landroid/view/View;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->mView:Landroid/view/View;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    return-void
.end method
