.class public Lcom/android/settings/wfd/WfdHelpActivity;
.super Landroid/app/Activity;
.source "WfdHelpActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mInSettingsMode:Z

.field private mIsReadOnlyChecked:Z

.field private mNotShowAgain:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWriteTagMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const-string v0, "WfdHelpActivity"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->TAG:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mNotShowAgain:Z

    .line 93
    new-instance v0, Lcom/android/settings/wfd/WfdHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdHelpActivity$1;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 100
    new-instance v0, Lcom/android/settings/wfd/WfdHelpActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdHelpActivity$2;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WfdHelpActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WfdHelpActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WfdHelpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WfdHelpActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->startWfdPickerDialog()V

    return-void
.end method

.method private makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string v2, "WfdHelpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make Ndef message - addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 412
    .local v0, "addrBytes":[B
    const-string v2, "com.android.settings.wfd"

    const-string v3, "addr"

    invoke-static {v2, v3, v0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 414
    .local v1, "addrRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method private setIsSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "called_by_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    goto :goto_0
.end method

.method private startWfdPickerDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_dialog_once"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    const-string v1, "tag_write_if_success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "called_by_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method


# virtual methods
.method public getdataPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 223
    .local v1, "value":Z
    return v1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "WfdHelpActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 115
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 445
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 470
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 125
    const-string v7, "WfdHelpActivity"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "com.samsung.wfd.ALL_CLEAR"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v7, "android.nfc.extra.TAG"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v7, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/wfd/WfdHelpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setIsSettings()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "intentAction":Ljava/lang/String;
    const-string v7, "WfdHelpActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received action is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v7, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    const-string v7, "wfd_help_do_not_show_again"

    const-string v8, "wfdhelpkey"

    invoke-virtual {p0, p0, v7, v8}, Lcom/android/settings/wfd/WfdHelpActivity;->getdataPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mNotShowAgain:Z

    .line 142
    iget-boolean v7, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mNotShowAgain:Z

    if-eqz v7, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->startWfdPickerDialog()V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 148
    iput-boolean v10, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 149
    const v7, 0x7f040247

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 152
    const v7, 0x7f100536

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 154
    .local v6, "not_show_again":Landroid/widget/CheckBox;
    const v7, 0x7f100538

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 155
    .local v5, "nfc_button":Landroid/widget/Button;
    const v7, 0x7f100537

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    .local v0, "button_layout":Landroid/widget/LinearLayout;
    const-string v7, "WfdHelpActivity"

    const-string v8, "WHITE_THEME"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const v7, 0x7f020742

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 163
    if-eqz v5, :cond_0

    .line 164
    new-instance v7, Lcom/android/settings/wfd/WfdHelpActivity$3;

    invoke-direct {v7, p0, v6}, Lcom/android/settings/wfd/WfdHelpActivity$3;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 174
    .end local v0    # "button_layout":Landroid/widget/LinearLayout;
    .end local v5    # "nfc_button":Landroid/widget/Button;
    .end local v6    # "not_show_again":Landroid/widget/CheckBox;
    :cond_2
    const-string v7, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    const v7, 0x7f0b004e

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->setTheme(I)V

    .line 176
    iput-boolean v11, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 177
    const v7, 0x7f04024b

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 179
    const v7, 0x7f10053d

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 180
    .local v4, "isReadOnly":Landroid/widget/CheckBox;
    if-eqz v4, :cond_3

    .line 181
    iget-object v7, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    :cond_3
    const v7, 0x7f100539

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 185
    .local v1, "idxTextLayout":Lcom/android/settings/wfd/IndexedTextLayout;
    const v7, 0x7f0a063b

    invoke-virtual {v1, v7}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 186
    const v7, 0x7f0a063c

    invoke-virtual {v1, v7}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    goto/16 :goto_0

    .line 196
    .end local v1    # "idxTextLayout":Lcom/android/settings/wfd/IndexedTextLayout;
    .end local v4    # "isReadOnly":Landroid/widget/CheckBox;
    :cond_4
    const-string v7, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    iput-boolean v10, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "WfdHelpActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 314
    const-string v6, "WfdHelpActivity"

    const-string v7, "onNewIntent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v6, "WfdHelpActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWriteTagMode ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-eqz v6, :cond_3

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "connectAddr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 320
    .local v2, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    const-string v6, "display"

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 322
    .restart local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    .line 325
    .local v4, "wifiDisplayStatusTemp":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v4, :cond_0

    .line 326
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    .line 327
    .local v5, "wifiDisplayTemp":Landroid/hardware/display/WifiDisplay;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 330
    .end local v4    # "wifiDisplayStatusTemp":Landroid/hardware/display/WifiDisplayStatus;
    .end local v5    # "wifiDisplayTemp":Landroid/hardware/display/WifiDisplay;
    :cond_0
    if-eqz v0, :cond_1

    .line 331
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 332
    .local v3, "message":Landroid/nfc/NdefMessage;
    const-string v6, "android.nfc.extra.TAG"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    .line 334
    .local v1, "detectedTag":Landroid/nfc/Tag;
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 335
    const v6, 0x7f0a0631

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 343
    .end local v0    # "connectAddr":Ljava/lang/String;
    .end local v1    # "detectedTag":Landroid/nfc/Tag;
    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "message":Landroid/nfc/NdefMessage;
    :cond_1
    :goto_0
    return-void

    .line 337
    .restart local v0    # "connectAddr":Ljava/lang/String;
    .restart local v1    # "detectedTag":Landroid/nfc/Tag;
    .restart local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .restart local v3    # "message":Landroid/nfc/NdefMessage;
    :cond_2
    const v6, 0x7f0a0632

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 341
    .end local v0    # "connectAddr":Ljava/lang/String;
    .end local v1    # "detectedTag":Landroid/nfc/Tag;
    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "message":Landroid/nfc/NdefMessage;
    :cond_3
    const-string v6, "WfdHelpActivity"

    const-string v7, "Activity received other intent from NDEF_DISCOVER"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 420
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 426
    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    .line 422
    :pswitch_0
    const-string v0, "WfdHelpActivity"

    const-string v1, "back button tapped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 428
    const/4 v0, 0x1

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 305
    const-string v1, "WfdHelpActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 308
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 293
    const-string v2, "WfdHelpActivity"

    const-string v4, "onResume"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 296
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x20000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 298
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    move-object v2, v3

    .line 299
    check-cast v2, [[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method

.method public writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Z

    .prologue
    .line 215
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 216
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 8
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    const-string v6, "WfdHelpActivity"

    const-string v7, "writeTag"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    array-length v3, v6

    .line 348
    .local v3, "size":I
    const/4 v1, 0x0

    .line 349
    .local v1, "format":Landroid/nfc/tech/NdefFormatable;
    const/4 v2, 0x0

    .line 351
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    :try_start_0
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 352
    if-eqz v2, :cond_5

    .line 353
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 355
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 356
    const-string v5, "WfdHelpActivity"

    const-string v6, "Tag is read-only."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V

    .line 404
    :cond_0
    :goto_0
    return v4

    .line 361
    :cond_1
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v6

    if-ge v6, v3, :cond_3

    .line 362
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag capacity is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes, message is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to write tag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 400
    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    .line 402
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to close ndef"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-virtual {v2, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 370
    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    if-eqz v6, :cond_4

    .line 371
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    .line 373
    :cond_4
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V

    .line 374
    const-string v6, "WfdHelpActivity"

    const-string v7, "Wrote message to pre-formatted tag."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.ALL_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdHelpActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 376
    goto :goto_0

    .line 378
    :cond_5
    invoke-static {p2}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_6

    .line 380
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 381
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 382
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->close()V

    .line 383
    const-string v6, "WfdHelpActivity"

    const-string v7, "Formatted tag and wrote message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 384
    goto/16 :goto_0

    .line 386
    :cond_6
    const-string v5, "WfdHelpActivity"

    const-string v6, "Tag doesn\'t support NDEF."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 391
    :catch_2
    move-exception v0

    .line 392
    .local v0, "e":Landroid/nfc/FormatException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to write tag because of FormatException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 396
    .end local v0    # "e":Landroid/nfc/FormatException;
    :catch_3
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to close format"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
