.class public Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "PersonalPageChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$2;,
        Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPersonalPageObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$1;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    .line 173
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 94
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, "SharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 161
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_pp_lock_enable_by"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->recreate()V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    iput-object p0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mContext:Landroid/content/Context;

    .line 112
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    .local v0, "SharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "pref_pp_lock_enable_by"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 115
    .local v2, "enabled_by_locktype":Z
    if-nez v2, :cond_0

    .line 116
    const-string v4, "PersonalPageChooseLockPattern"

    const-string v5, "finish un-authorised entering"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->finish()V

    .line 124
    :goto_0
    const v4, 0x7f0a1b9f

    invoke-virtual {p0, v4}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 125
    .local v3, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    return-void

    .line 119
    .end local v3    # "msg":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 120
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_pp_lock_enable_by"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, "State":I
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "LockType":I
    if-eq v1, v5, :cond_0

    if-eqz v0, :cond_0

    .line 138
    const-string v2, "PersonalPageChooseLockPattern"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume back with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->finish()V

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    :cond_1
    return-void
.end method
