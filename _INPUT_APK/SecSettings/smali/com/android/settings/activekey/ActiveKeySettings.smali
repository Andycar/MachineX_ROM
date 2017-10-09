.class public Lcom/android/settings/activekey/ActiveKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ActiveKeySettings.java"


# instance fields
.field private mCameraCategory:Landroid/preference/PreferenceCategory;

.field private mCapturebyactivekeyPreference:Landroid/preference/CheckBoxPreference;

.field private mCurrentHeaderView:Landroid/view/View;

.field private mLongPress:Landroid/preference/PreferenceScreen;

.field private mShortPress:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    return-void
.end method

.method private updateUI()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0a1d29

    const/4 v6, 0x0

    .line 136
    iget-object v5, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v2

    .line 138
    .local v2, "isRemoved":Z
    const-string v5, "ActiveKeySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshUI() - isRemoved: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "isRemoved":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "short_press_app"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "short_press_app":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "long_press_app"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "long_press_app":Ljava/lang/String;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/activekey/ActiveKeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 145
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040010

    invoke-virtual {v1, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "activekeySettingsView":Landroid/view/View;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    :cond_1
    iget-object v5, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "short_press_app"

    const-string v8, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    :goto_0
    if-eqz v3, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    :cond_2
    iget-object v5, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "long_press_app"

    const-string v8, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    :goto_1
    iget-object v7, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCapturebyactivekeyPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "capture_by_active_key"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v0, v10, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 172
    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    .line 174
    return-void

    .line 155
    :cond_3
    iget-object v5, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_4
    iget-object v5, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v5, v6

    .line 170
    goto :goto_2
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "db"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 180
    const-string v2, ""

    .line 181
    .local v2, "appName":Ljava/lang/String;
    const-string v8, "ActiveKeySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v3, v2

    .line 198
    .end local v2    # "appName":Ljava/lang/String;
    .local v3, "appName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 185
    .end local v3    # "appName":Ljava/lang/String;
    .restart local v2    # "appName":Ljava/lang/String;
    :cond_1
    const/16 v8, 0x2f

    invoke-virtual {p1, v8, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 186
    .local v6, "package_index":I
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "package_name":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "activity_name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 192
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :goto_1
    move-object v3, v2

    .line 198
    .end local v2    # "appName":Ljava/lang/String;
    .restart local v3    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v3    # "appName":Ljava/lang/String;
    .restart local v2    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 195
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ActiveKeySettings"

    const-string v9, "cannot find app name !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    .line 90
    const-string v0, "short_press_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    .line 91
    const-string v0, "long_press_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    .line 92
    const-string v0, "capture_by_active_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCapturebyactivekeyPreference:Landroid/preference/CheckBoxPreference;

    .line 93
    const-string v0, "camera_category_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCameraCategory:Landroid/preference/PreferenceCategory;

    .line 94
    const-string v0, "camera_category_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->removePreference(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 117
    const-string v0, "ActiveKeySettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 206
    iget-object v2, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.activekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v2, "pressed_type"

    const-string v3, "short"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    .line 228
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.activekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "pressed_type"

    const-string v3, "long"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCapturebyactivekeyPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCapturebyactivekeyPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "capture_by_active_key"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "capture_by_active_key"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 228
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, "warningClearIntent":Landroid/content/Intent;
    const-string v1, "android.settings. ACTIVE_KEY_CLEAR "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->updateUI()V

    .line 107
    const-string v1, "ActiveKeySettings"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 128
    const-string v0, "ActiveKeySettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method
