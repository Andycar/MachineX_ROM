.class public Lcom/android/settings/safetycare/SafetyCareEmergencyMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareEmergencyMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mHelpContent:Ljava/lang/String;

.field private mHelpDBItem:Ljava/lang/String;

.field private mHelpImgResID:I

.field private mHelpTitleResID:I

.field private mHelpType:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpType:Ljava/lang/String;

    .line 66
    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    .line 67
    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpDBItem:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpTitleResID:I

    .line 69
    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    .line 78
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;-><init>(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareEmergencyMode;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 162
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 163
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0401e3

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "guideView":Landroid/view/View;
    const v2, 0x7f1001ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    .line 165
    const v2, 0x7f100014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    .line 168
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 180
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 181
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 202
    if-eqz p2, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    const-string v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 98
    .local v9, "res":Landroid/content/res/Resources;
    const-string v0, "emergency_mode"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpDBItem:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    const v0, 0x7f0a1cc7

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    .line 102
    const v0, 0x7f020525

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    .line 111
    :goto_0
    const v0, 0x7f0a1cc0

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpTitleResID:I

    .line 114
    const v0, 0x7f0700b0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    .line 117
    new-instance v0, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    .line 118
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 120
    .local v8, "padding":I
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3, v3, v8, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarLayout:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpTitleResID:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 134
    const-string v0, "content://com.sec.knox.provider2/KioskMode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 136
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 138
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isKioskModeEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    const-string v0, "isKioskModeEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 142
    if-eqz v10, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "SafetyCareEmergencyMode"

    const-string v2, "KIOSKMODE enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_1
    :goto_2
    return-void

    .line 105
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "padding":I
    .end local v10    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const v0, 0x7f0a1cc5

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    .line 109
    :goto_3
    const v0, 0x7f020526

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    goto/16 :goto_0

    .line 108
    :cond_3
    const v0, 0x7f0a1cc6

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    goto :goto_3

    .line 147
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "padding":I
    .restart local v10    # "result":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v0, "SafetyCareEmergencyMode"

    const-string v2, "KIOSKMODE disabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v7

    .line 150
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    if-eqz v6, :cond_1

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 152
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 187
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    return-void
.end method
