.class public Lcom/android/settings/DeviceHealthActivity;
.super Landroid/preference/PreferenceActivity;
.source "DeviceHealthActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackStackCount:I

.field private mFragmentApps:Landroid/app/Fragment;

.field private mFragmentBattery:Landroid/app/Fragment;

.field private mFragmentData:Landroid/app/Fragment;

.field private mIsHomeEnabled:Z

.field private mIsHomeEnabledInMain:Z

.field private mSelectedTab:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    .line 51
    const-string v0, "tag_battery"

    iput-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 250
    return-void
.end method

.method private findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0a1c58

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 189
    :goto_0
    return-object v0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0a1c59

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0a1c5a

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "Device Health"

    const-string v1, "Unknown tab selected! Using default tab."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    goto :goto_0
.end method

.method private hideActionTabs()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 233
    return-void
.end method

.method private setHomeEnabled(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 241
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method private showActionTabs()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 237
    return-void
.end method

.method private updateActionBar()V
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    if-gtz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->showActionTabs()V

    .line 224
    iget-boolean v0, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceHealthActivity;->setHomeEnabled(Z)V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->hideActionTabs()V

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceHealthActivity;->setHomeEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 217
    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 219
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 60
    const v4, 0x7f040082

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceHealthActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    .line 62
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f0a1c57

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 63
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0a1c58

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 64
    .local v2, "tabBattery":Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0a1c59

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 65
    .local v1, "tabApps":Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0a1c5a

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 67
    .local v3, "tabData":Landroid/app/ActionBar$Tab;
    if-nez p1, :cond_0

    .line 68
    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 69
    new-instance v4, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v4}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 70
    new-instance v4, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "appsArg":Landroid/os/Bundle;
    const-string v4, "classname"

    const-string v5, ".RunningServices"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v4, "hidetabs"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    iget-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    iput-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 79
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 80
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 81
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1, v7}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 82
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v3, v9}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 114
    .end local v0    # "appsArg":Landroid/os/Bundle;
    .end local v1    # "tabApps":Landroid/app/ActionBar$Tab;
    .end local v2    # "tabBattery":Landroid/app/ActionBar$Tab;
    .end local v3    # "tabData":Landroid/app/ActionBar$Tab;
    :goto_0
    return-void

    .line 85
    .restart local v1    # "tabApps":Landroid/app/ActionBar$Tab;
    .restart local v2    # "tabBattery":Landroid/app/ActionBar$Tab;
    .restart local v3    # "tabData":Landroid/app/ActionBar$Tab;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_battery"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_apps"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_data"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 89
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    if-nez v4, :cond_2

    .line 91
    new-instance v4, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v4}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .restart local v0    # "appsArg":Landroid/os/Bundle;
    const-string v4, "classname"

    const-string v5, ".RunningServices"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v4, "hidetabs"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    .end local v0    # "appsArg":Landroid/os/Bundle;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 98
    :cond_3
    const-string v4, "is_home_enabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 99
    const-string v4, "selected_tab"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 100
    const-string v4, "backstack_count"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 101
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 102
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 103
    const-string v4, "tag_battery"

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 105
    :cond_4
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_battery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v2, v8, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 106
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v1, v7, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v3, v9, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    goto/16 :goto_0

    .line 112
    .end local v1    # "tabApps":Landroid/app/ActionBar$Tab;
    .end local v2    # "tabBattery":Landroid/app/ActionBar$Tab;
    .end local v3    # "tabData":Landroid/app/ActionBar$Tab;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 146
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->onBackPressed()V

    .line 147
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const-string v0, "is_home_enabled"

    iget-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v0, "selected_tab"

    iget-object v1, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "backstack_count"

    iget v1, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 156
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0a1c58

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "tag_battery"

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0a1c59

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "tag_apps"

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0a1c5a

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "tag_data"

    .line 164
    :cond_2
    iput-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f100164

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 166
    :cond_3
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    const-string v4, "BATTERY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    const-string v2, "tag_battery"

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    const-string v4, "APPS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    const-string v2, "tag_apps"

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    const-string v4, "DATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    const-string v2, "tag_data"

    .line 177
    :cond_2
    iput-object v2, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v0

    .line 179
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 180
    .local v1, "stackCount":I
    instance-of v3, v0, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;

    if-eqz v3, :cond_3

    if-lez v1, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 182
    :cond_3
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 196
    const-string v0, "DeviceHealthActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreferencePanel start activity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v6

    .line 205
    .local v6, "intent":Landroid/content/Intent;
    :goto_0
    const-string v0, ":settings:show_fragment_as_subsetting"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    if-nez p5, :cond_1

    .line 207
    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceHealthActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    :goto_1
    return-void

    .line 201
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3, p3}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v6

    .line 202
    .restart local v6    # "intent":Landroid/content/Intent;
    const-class v0, Lcom/android/settings/SubSettings;

    invoke-virtual {v6, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p5, v6, p6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
