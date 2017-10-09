.class public Lcom/android/settings/ApnSettingsTabActivity;
.super Landroid/app/TabActivity;
.source "ApnSettingsTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static isMenuOptionsAdded:Z

.field private static mTabHost:Landroid/widget/TabHost;

.field private static final multiSimNum:I


# instance fields
.field private mActivePhone:I

.field private mNew:Landroid/view/MenuItem;

.field private mRestore:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ApnSettingsTabActivity;->isMenuOptionsAdded:Z

    .line 49
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/android/settings/ApnSettingsTabActivity;->multiSimNum:I

    return-void
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simSlot"

    iget v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "vzw"

    const-string v3, "editable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettingsTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettingsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getSimIcon(I)I
    .locals 7
    .param p1, "Sim_id"    # I

    .prologue
    .line 218
    const/4 v3, 0x0

    .line 219
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 220
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 223
    .local v1, "retDrawable":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 229
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 230
    .local v2, "ret_sim_icon":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM 1 ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SIM 2 ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_sim_icon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/ApnSettingsTabActivity;->log(Ljava/lang/String;)V

    .line 232
    packed-switch v2, :pswitch_data_0

    .line 261
    const v1, 0x7f02059a

    .line 264
    :goto_2
    return v1

    .line 225
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 229
    goto :goto_1

    .line 234
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    const v1, 0x7f02059a

    .line 235
    goto :goto_2

    .line 237
    :pswitch_1
    const v1, 0x7f02059b

    .line 238
    goto :goto_2

    .line 240
    :pswitch_2
    const v1, 0x7f020599

    .line 241
    goto :goto_2

    .line 243
    :pswitch_3
    const v1, 0x7f0205a1

    .line 244
    goto :goto_2

    .line 246
    :pswitch_4
    const v1, 0x7f0205a0

    .line 247
    goto :goto_2

    .line 249
    :pswitch_5
    const v1, 0x7f02059f

    .line 250
    goto :goto_2

    .line 252
    :pswitch_6
    const v1, 0x7f02059d

    .line 253
    goto :goto_2

    .line 255
    :pswitch_7
    const v1, 0x7f02059e

    .line 256
    goto :goto_2

    .line 258
    :pswitch_8
    const v1, 0x7f02059c

    .line 259
    goto :goto_2

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "Sim_id"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "retString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v0, "ApnSettingsTabActivity"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method private restoreDefaultApn()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_RESTORE_DEFAULT_APN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simSlot"

    iget v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettingsTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method private setupSimTab(I)V
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APN_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v2, "simSlot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "tabName":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettingsTabActivity;->getSimIcon(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 204
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    sput-object v2, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 61
    sget-object v2, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 63
    const/4 v1, 0x0

    .local v1, "simSlotNum":I
    :goto_0
    sget v2, Lcom/android/settings/ApnSettingsTabActivity;->multiSimNum:I

    if-ge v1, v2, :cond_1

    .line 64
    invoke-direct {p0, v1}, Lcom/android/settings/ApnSettingsTabActivity;->setupSimTab(I)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    sget-object v2, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 104
    sput-boolean v2, Lcom/android/settings/ApnSettingsTabActivity;->isMenuOptionsAdded:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a07f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    .line 107
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    const v1, 0x7f020204

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 108
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0802

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    .line 111
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    const v1, 0x7f020206

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 113
    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 114
    iget v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone1_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    :cond_1
    :goto_0
    return v2

    .line 119
    :cond_2
    iget v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone2_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    iget-object v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 147
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 136
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettingsTabActivity;->addNewApn()V

    goto :goto_0

    .line 140
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettingsTabActivity;->restoreDefaultApn()V

    goto :goto_0

    .line 144
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->finish()V

    goto :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 73
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    sget v3, Lcom/android/settings/ApnSettingsTabActivity;->multiSimNum:I

    if-ge v2, v3, :cond_0

    .line 74
    sget-object v3, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "simIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/ApnSettingsTabActivity;->getSimIcon(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    sget-object v3, Lcom/android/settings/ApnSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, "simName":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/android/settings/ApnSettingsTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "simIcon":Landroid/widget/ImageView;
    .end local v1    # "simName":Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    if-eqz v3, :cond_2

    .line 84
    iget v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 88
    iget-object v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 99
    :cond_2
    :goto_1
    return-void

    .line 89
    :cond_3
    iget v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    if-ne v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    .line 92
    iget-object v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 93
    iget-object v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 95
    :cond_4
    iget-object v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 96
    iget-object v3, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 168
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    sget v2, Lcom/android/settings/ApnSettingsTabActivity;->multiSimNum:I

    if-ge v0, v2, :cond_1

    .line 169
    invoke-direct {p0, v0}, Lcom/android/settings/ApnSettingsTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "tabName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iput v0, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "tabName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 177
    iget v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 180
    iget-object v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    iget-object v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    :cond_3
    :goto_1
    return-void

    .line 182
    :cond_4
    iget v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mActivePhone:I

    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/ApnSettingsTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 185
    iget-object v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    iget-object v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 188
    :cond_5
    iget-object v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mNew:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    iget-object v2, p0, Lcom/android/settings/ApnSettingsTabActivity;->mRestore:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method
