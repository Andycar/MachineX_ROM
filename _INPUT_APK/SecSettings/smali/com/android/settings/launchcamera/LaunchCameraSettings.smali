.class public Lcom/android/settings/launchcamera/LaunchCameraSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LaunchCameraSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/launchcamera/LaunchCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "open_camera"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v7, -0x2

    const/4 v0, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v3, 0x7f070068

    invoke-virtual {p0, v3}, Lcom/android/settings/launchcamera/LaunchCameraSettings;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/launchcamera/LaunchCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActivity:Landroid/app/Activity;

    .line 32
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 33
    iget-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 34
    iget-object v2, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 35
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    :cond_0
    iget-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 38
    .local v1, "padding":I
    iget-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0, v0, v1, v0}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 39
    iget-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 41
    iget-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 46
    iget-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarLayout:Landroid/view/View;

    .line 50
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/launchcamera/LaunchCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "open_camera"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 51
    .local v0, "launchCameraState":Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 53
    iget-object v3, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 60
    iget-object v2, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/launchcamera/LaunchCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/launchcamera/LaunchCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "open_camera"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    .local v0, "launchCameraState":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 67
    return-void

    .end local v0    # "launchCameraState":Z
    :cond_1
    move v0, v1

    .line 65
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/launchcamera/LaunchCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 81
    :cond_0
    return-void
.end method
