.class public Lcom/android/settings/PersonalPageDisclaimer;
.super Landroid/app/Activity;
.source "PersonalPageDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bDonotShow:Ljava/lang/Boolean;

.field private bSwitchon:Ljava/lang/Boolean;

.field private mConfirm:Landroid/widget/Button;

.field private mDoNotShowCheck:Landroid/widget/CheckBox;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private sendVeificationRequest(Z)V
    .locals 6
    .param p1, "bCheck"    # Z

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 113
    .local v0, "bCheckSignature":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->bSwitchon:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 116
    :cond_0
    const-string v3, "PersonalPageDisclaimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendVerificationRequest with bCheck: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bSwitchon :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/PersonalPageDisclaimer;->bSwitchon:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", so bCheckSignature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.personalpage.service"

    const-string v4, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    const-string v3, "without_verify"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/PersonalPageDisclaimer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    return-void

    .line 123
    :cond_2
    const-string v2, "check_signature"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mDoNotShowCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/settings/PersonalPageDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_pp_disclaimer_noti"

    iget-object v2, p0, Lcom/android/settings/PersonalPageDisclaimer;->mDoNotShowCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "PersonalPageDisclaimer"

    const-string v2, "request verify"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/PersonalPageDisclaimer;->sendVeificationRequest(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x7f100312
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "donotshow"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->bDonotShow:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "switchon"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->bSwitchon:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.secretmode_service"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "levelPrivatemode":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 51
    .local v2, "state":I
    const-string v3, "PersonalPageDisclaimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Private mode DB status is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-ne v2, v7, :cond_1

    .line 53
    const v3, 0x7f0a1bb6

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 54
    const-string v3, "PersonalPageDisclaimer"

    const-string v4, "Private mode cannot be disabled while moving files"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    .line 85
    .end local v2    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v2    # "state":I
    :cond_1
    const v3, 0x7f0a1bb5

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 59
    const-string v3, "PersonalPageDisclaimer"

    const-string v4, "Private mode cannot be enabled while moving files"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    goto :goto_0

    .line 65
    .end local v2    # "state":I
    :cond_2
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    iget-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_pp_disclaimer_noti"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 69
    .local v0, "do_not_show_again":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->bDonotShow:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v7, :cond_4

    .line 71
    :cond_3
    const-string v3, "PersonalPageDisclaimer"

    const-string v4, "do_not_show_again is checked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const-string v3, "PersonalPageDisclaimer"

    const-string v4, "request verify"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, v7}, Lcom/android/settings/PersonalPageDisclaimer;->sendVeificationRequest(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/PersonalPageDisclaimer;->finish()V

    goto :goto_0

    .line 80
    :cond_4
    const v3, 0x7f04015d

    invoke-virtual {p0, v3}, Lcom/android/settings/PersonalPageDisclaimer;->setContentView(I)V

    .line 81
    const v3, 0x7f100311

    invoke-virtual {p0, v3}, Lcom/android/settings/PersonalPageDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->mDoNotShowCheck:Landroid/widget/CheckBox;

    .line 82
    const v3, 0x7f100312

    invoke-virtual {p0, v3}, Lcom/android/settings/PersonalPageDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->mConfirm:Landroid/widget/Button;

    .line 83
    iget-object v3, p0, Lcom/android/settings/PersonalPageDisclaimer;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
