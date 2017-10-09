.class public Lcom/android/settings/powersavingmode/PowerSavingModeUltra;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeUltra.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method initswitchBtn()V
    .locals 13

    .prologue
    const v12, 0x800015

    const/16 v11, 0x10

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 204
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 205
    new-instance v6, Landroid/widget/Switch;

    invoke-direct {v6, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    .line 206
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 208
    .local v4, "padding":I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v10, v10, v4, v10}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 209
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0205e5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0205e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 215
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v8, v9, v9, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 220
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarLayout:Landroid/view/View;

    .line 234
    .end local v4    # "padding":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "content://com.sec.knox.provider2/KioskMode"

    const-string v8, "isKioskModeEnabled"

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, "isKioskModeEnabled":I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 238
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 241
    :cond_1
    return-void

    .line 222
    .end local v3    # "isKioskModeEnabled":I
    :cond_2
    const-string v6, "layout_inflater"

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 223
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040065

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .local v0, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    move-object v5, v1

    .line 224
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 225
    .local v5, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 226
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v7, v9, v9, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 231
    const v6, 0x7f10010e

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    .line 232
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 177
    const-string v1, "PowerSavingModeBlackGrey"

    const-string v2, "onCheckedChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    const-string v1, "flag"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 189
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const v6, 0x7f04016f

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 87
    .local v5, "view":Landroid/view/View;
    const/4 v4, 0x0

    .line 89
    .local v4, "ultraText":Landroid/widget/TextView;
    const v6, 0x7f10035b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    const v6, 0x7f0204fe

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    const v6, 0x7f10035c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, "textView":Landroid/widget/TextView;
    const v6, 0x7f10035d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, "textView2":Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    const v6, 0x7f100359

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ultraText":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 104
    .restart local v4    # "ultraText":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    const v6, 0x7f10035a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 107
    .local v3, "textView3":Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    .end local v3    # "textView3":Landroid/widget/TextView;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 122
    if-eqz v4, :cond_2

    .line 123
    const v6, 0x7f0a1dd7

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->initswitchBtn()V

    .line 126
    return-object v5

    .line 93
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "textView2":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    const v6, 0x7f0204ff

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 110
    :cond_4
    const v6, 0x7f100359

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .restart local v1    # "textView":Landroid/widget/TextView;
    const v6, 0x7f10035a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .restart local v2    # "textView2":Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    const v6, 0x7f10035c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ultraText":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 115
    .restart local v4    # "ultraText":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    const v6, 0x7f10035d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    .restart local v3    # "textView3":Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->finish()V

    .line 196
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "PowerSavingModeBlackGrey"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    const-string v1, "PowerSavingModeBlackGrey"

    const-string v4, "onResume() "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 135
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "ultra_powersaving_mode"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "content://com.sec.knox.provider2/KioskMode"

    const-string v5, "isKioskModeEnabled"

    invoke-static {v1, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "isKioskModeEnabled":I
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void

    .end local v0    # "isKioskModeEnabled":I
    :cond_3
    move v1, v3

    .line 135
    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 163
    return-void
.end method
