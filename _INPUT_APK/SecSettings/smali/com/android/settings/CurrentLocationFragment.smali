.class public Lcom/android/settings/CurrentLocationFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CurrentLocationFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mPopupDisplayed:Z

.field private mSwitchView:Landroid/widget/Switch;

.field private mWeatherAgreed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 27
    const-string v0, "CurrentLocationActivity"

    iput-object v0, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CurrentLocationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CurrentLocationFragment;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/CurrentLocationFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CurrentLocationFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/CurrentLocationFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CurrentLocationFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;

    return-object v0
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 243
    const/4 v8, 0x0

    .line 245
    .local v8, "result":I
    if-nez p0, :cond_0

    move v9, v8

    .line 265
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 248
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 250
    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 254
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 255
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 262
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v9, v8

    .line 265
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 258
    .end local v9    # "result":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 259
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public checkLocationAavilability()V
    .locals 8

    .prologue
    const v7, 0x7f0a0ad5

    const/4 v6, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "locationMode":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLocationAavilability locationMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    :cond_0
    iput-boolean v6, p0, Lcom/android/settings/CurrentLocationFragment;->mPopupDisplayed:Z

    .line 141
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0ffe

    invoke-virtual {p0, v4}, Lcom/android/settings/CurrentLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0fff

    invoke-virtual {p0, v4}, Lcom/android/settings/CurrentLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a01d1

    new-instance v5, Lcom/android/settings/CurrentLocationFragment$3;

    invoke-direct {v5, p0}, Lcom/android/settings/CurrentLocationFragment$3;-><init>(Lcom/android/settings/CurrentLocationFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/CurrentLocationFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/CurrentLocationFragment$2;-><init>(Lcom/android/settings/CurrentLocationFragment;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/CurrentLocationFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/CurrentLocationFragment$1;-><init>(Lcom/android/settings/CurrentLocationFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 176
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 227
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0,gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0,network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/CurrentLocationFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 183
    iget-object v3, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    const-string v4, "Write AGREEMENT : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "AGREEMENT"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a1000

    invoke-virtual {p0, v4}, Lcom/android/settings/CurrentLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a1001

    invoke-virtual {p0, v4}, Lcom/android/settings/CurrentLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a1002

    new-instance v5, Lcom/android/settings/CurrentLocationFragment$5;

    invoke-direct {v5, p0}, Lcom/android/settings/CurrentLocationFragment$5;-><init>(Lcom/android/settings/CurrentLocationFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/CurrentLocationFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings/CurrentLocationFragment$4;-><init>(Lcom/android/settings/CurrentLocationFragment;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 213
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 217
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/CurrentLocationFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 219
    iget-object v3, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    const-string v4, "Write AGREEMENT : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "AGREEMENT"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public isLocationOn()Z
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "locationMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLocationOn locationMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 238
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-boolean p2, p0, Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z

    .line 102
    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->checkLocationAavilability()V

    .line 114
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/CurrentLocationFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    const-string v2, "Write AGREEMENT : 0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AGREEMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-boolean v3, p0, Lcom/android/settings/CurrentLocationFragment;->mPopupDisplayed:Z

    .line 50
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    .local v0, "padding":I
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 64
    .end local v0    # "padding":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const v1, 0x7f040243

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 123
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->finish()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 73
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    const-string v4, "onResume"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/CurrentLocationFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z

    .line 77
    iget-boolean v1, p0, Lcom/android/settings/CurrentLocationFragment;->mPopupDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->isLocationOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iput-boolean v2, p0, Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z

    .line 80
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->TAG:Ljava/lang/String;

    const-string v4, "Write AGREEMENT : 1"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AGREEMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    iput-boolean v3, p0, Lcom/android/settings/CurrentLocationFragment;->mPopupDisplayed:Z

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 92
    return-void

    :cond_1
    move v1, v3

    .line 75
    goto :goto_0
.end method
