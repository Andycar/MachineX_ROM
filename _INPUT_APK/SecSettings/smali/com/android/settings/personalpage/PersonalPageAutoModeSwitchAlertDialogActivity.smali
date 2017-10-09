.class public Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PersonalPageAutoModeSwitchAlertDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mcheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private updateDBAutoPrivatemodewhenScreenOff(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_auto_disable_when_screen_off"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    const-string v0, "PersonalPageAutoModeSwitchAlertDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDBAutoPrivatemodeDisalbewhenScreenOff: DB_PERSONAL_MODE_AUTO_DISABLE_WHEN_SCREEN_OFF to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    :cond_1
    move v1, v2

    .line 56
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    packed-switch p2, :pswitch_data_0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pp_auto_mode_do_not_show_noti"

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->dismiss()V

    .line 74
    :cond_0
    return-void

    .line 63
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->updateDBAutoPrivatemodewhenScreenOff(Z)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "to_enable"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 32
    .local v1, "bToEnable":Ljava/lang/Boolean;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pp_auto_mode_do_not_show_noti"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 35
    .local v2, "do_not_show_again":Z
    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->updateDBAutoPrivatemodewhenScreenOff(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->finish()V

    .line 52
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 43
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04015c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 44
    const v3, 0x7f0a1b9a

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 45
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    const v3, 0x7f0a0e2d

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 48
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f100167

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->mcheck:Landroid/widget/CheckBox;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageAutoModeSwitchAlertDialogActivity;->setupAlert()V

    goto :goto_0
.end method
