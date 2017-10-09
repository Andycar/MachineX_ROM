.class public Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;
.super Lcom/android/settings/SettingsActivity;
.source "PersonalPageChooseLockAdditionalPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPersonalPageObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$1;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mPersonalPageObserver:Landroid/database/ContentObserver;

    .line 165
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 89
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 97
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
    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, "SharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 158
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_pp_lock_enable_by"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->recreate()V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iput-object p0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mContext:Landroid/content/Context;

    .line 110
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, "SharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "pref_pp_lock_enable_by"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 113
    .local v2, "enabled_by_locktype":Z
    if-nez v2, :cond_0

    .line 114
    const-string v4, "PersonalPageChooseLockAdditionalPin"

    const-string v5, "finish un-authorised entering"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->finish()V

    .line 122
    :goto_0
    const v4, 0x7f0a08a9

    invoke-virtual {p0, v4}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 123
    .local v3, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 117
    .end local v3    # "msg":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 118
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_pp_lock_enable_by"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 132
    .local v1, "State":I
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "LockType":I
    if-eq v1, v5, :cond_0

    if-eqz v0, :cond_0

    .line 135
    const-string v2, "PersonalPageChooseLockAdditionalPin"

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

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->finish()V

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    :cond_1
    return-void
.end method
