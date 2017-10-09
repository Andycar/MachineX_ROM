.class public Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "PersonalPageConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPersonalPageObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$1;-><init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->mPersonalPageObserver:Landroid/database/ContentObserver;

    .line 126
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 79
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iput-object p0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->mContext:Landroid/content/Context;

    .line 96
    const v1, 0x7f0a08ac

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 97
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, "State":I
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "LockType":I
    if-eq v1, v5, :cond_0

    if-eqz v0, :cond_0

    .line 109
    const-string v2, "PersonalPageConfirmLockPassword"

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

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->finish()V

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    :cond_1
    return-void
.end method
