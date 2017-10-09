.class public Lcom/android/settings/MultiWindowSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MultiWindowSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mAccessControlObserver:Landroid/database/ContentObserver;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContext:Landroid/content/Context;

.field private mMultiWindowEnable:Lcom/android/settings/MultiWindowEnabler;

.field private final mMultiWindowObserver:Landroid/database/ContentObserver;

.field private mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

.field private mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

.field private mTrayPosition:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings/MultiWindowSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiWindowSettings$1;-><init>(Lcom/android/settings/MultiWindowSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowObserver:Landroid/database/ContentObserver;

    .line 85
    new-instance v0, Lcom/android/settings/MultiWindowSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiWindowSettings$2;-><init>(Lcom/android/settings/MultiWindowSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiWindowSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiWindowSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MultiWindowSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiWindowSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiWindowSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method public getEntryByValue(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 234
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 235
    .local v3, "values":[Ljava/lang/CharSequence;
    const-string v2, ""

    .line 236
    .local v2, "ret":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 237
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 238
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    move v1, v0

    .line 243
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    return-object v4

    .line 237
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v8, -0x2

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 171
    .local v3, "padding":I
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "countryCode":Ljava/lang/String;
    const-string v4, "USA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    const/4 v3, 0x0

    .line 177
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v2, v2, v3, v2}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 178
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 180
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    new-instance v4, Lcom/android/settings/MultiWindowEnabler;

    iget-object v5, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v0, v5}, Lcom/android/settings/MultiWindowEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowEnable:Lcom/android/settings/MultiWindowEnabler;

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 190
    .local v2, "mchecked":Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 275
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/android/settings/MultiWindowSettings;->setHasOptionsMenu(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mContext:Landroid/content/Context;

    .line 107
    const v3, 0x7f07007d

    invoke-virtual {p0, v3}, Lcom/android/settings/MultiWindowSettings;->addPreferencesFromResource(I)V

    .line 109
    const-string v3, "open_multi_window_view"

    invoke-virtual {p0, v3}, Lcom/android/settings/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    .line 110
    const-string v3, "popup_view_shortcut"

    invoke-virtual {p0, v3}, Lcom/android/settings/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "open_multi_window_view"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v4

    .line 113
    .local v0, "checked":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "multi_window_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 114
    .local v2, "mchecked":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 116
    const-string v3, "multi_window_position"

    invoke-virtual {p0, v3}, Lcom/android/settings/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    .line 117
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    const-string v3, "multi_window_position"

    invoke-virtual {p0, v3}, Lcom/android/settings/MultiWindowSettings;->removePreference(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "db_popup_view_shortcut"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v1, v4

    .line 121
    .local v1, "isChecked":Z
    :goto_2
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.multiwindow.styletransition"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_4

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :goto_3
    return-void

    .end local v0    # "checked":Z
    .end local v1    # "isChecked":Z
    .end local v2    # "mchecked":Z
    :cond_1
    move v0, v5

    .line 112
    goto :goto_0

    .restart local v0    # "checked":Z
    :cond_2
    move v2, v5

    .line 113
    goto :goto_1

    .restart local v2    # "mchecked":Z
    :cond_3
    move v1, v5

    .line 120
    goto :goto_2

    .line 127
    .restart local v1    # "isChecked":Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a06f1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 128
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a06f2

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_1
    const/4 v0, 0x1

    const v1, 0x7f0a16b9

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 148
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "multi_window"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/MultiWindowSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "multi_window"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 157
    const/4 v1, 0x1

    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowEnable:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->pause()V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 268
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 269
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "key":Ljava/lang/String;
    const-string v3, "multi_window_position"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 305
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_position"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v2}, Lcom/android/settings/MultiWindowSettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    .local v0, "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    .end local v0    # "entry":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 281
    iget-boolean v4, p0, Lcom/android/settings/MultiWindowSettings;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 282
    sget v4, Lcom/android/settings/MultiWindowSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 283
    sget v4, Lcom/android/settings/MultiWindowSettings;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .local v1, "value":Z
    :goto_0
    move-object v0, p2

    .line 284
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 285
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "value":Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "open_multi_window_view"

    iget-object v6, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    move v1, v3

    .line 283
    goto :goto_0

    :cond_3
    move v2, v3

    .line 291
    goto :goto_1

    .line 293
    :cond_4
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_popup_view_shortcut"

    iget-object v6, p0, Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 198
    const/4 v4, 0x0

    .line 199
    .local v4, "super_mOpenDetailMenu":Z
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 200
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 202
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 203
    iget-object v7, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowEnable:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v7}, Lcom/android/settings/MultiWindowEnabler;->resume()V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "open_multi_window_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v5

    .line 205
    .local v0, "checked":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "multi_window_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 206
    .local v3, "mchecked":Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    iget-object v7, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "multi_window_position"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, "curEnableValue":I
    iget-object v7, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/settings/MultiWindowSettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "entry":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v7, p0, Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "multi_window_enabled"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v5, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "access_control_enabled"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/MultiWindowSettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    iget-object v5, p0, Lcom/android/settings/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 219
    iget-object v5, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    iget-object v5, p0, Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a06f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 229
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 231
    return-void

    .end local v0    # "checked":Z
    .end local v1    # "curEnableValue":I
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "mchecked":Z
    :cond_2
    move v0, v6

    .line 204
    goto/16 :goto_0

    .restart local v0    # "checked":Z
    :cond_3
    move v3, v6

    .line 205
    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 260
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 261
    return-void
.end method
