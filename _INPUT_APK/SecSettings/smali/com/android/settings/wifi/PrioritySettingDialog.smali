.class public Lcom/android/settings/wifi/PrioritySettingDialog;
.super Landroid/app/AlertDialog;
.source "PrioritySettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mContext:Landroid/content/Context;

.field private mPriorityButton:I

.field private mPriorityView:Landroid/view/ViewGroup;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSecurity:I

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field orderedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 111
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mSecurity:I

    .line 112
    return-void

    .line 111
    :cond_0
    iget v0, p2, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/PrioritySettingDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/PrioritySettingDialog;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 8
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v4, "orderedConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 300
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 302
    const/4 v6, 0x0

    invoke-interface {v4, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 305
    :cond_0
    const/4 v2, 0x0

    .line 306
    .local v2, "i":I
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 307
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 308
    .local v5, "t":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v6, v7, :cond_1

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .end local v5    # "t":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-interface {v4, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 319
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "orderedConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    const/4 v4, 0x0

    .line 321
    .restart local v4    # "orderedConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    return-object v4
.end method

.method static resortOrderedConfigs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "lOrderedConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 285
    .local v0, "cur_priority":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 286
    .local v2, "oconfig":Landroid/net/wifi/WifiConfiguration;
    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 287
    add-int/lit8 v0, v0, -0x1

    .line 288
    goto :goto_0

    .line 289
    .end local v2    # "oconfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private validatePriorityButtons()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 366
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 367
    .local v0, "id":I
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 369
    .local v1, "total_num":I
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_0

    .line 389
    :goto_0
    return-void

    .line 372
    :cond_0
    if-ne v0, v3, :cond_1

    .line 373
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 374
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 375
    :cond_1
    if-ne v1, v6, :cond_2

    .line 376
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 378
    :cond_2
    if-nez v0, :cond_3

    .line 379
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 381
    :cond_3
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_4

    .line 382
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 386
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 214
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 208
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "WifiPriorityDialog"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    .line 328
    return-void
.end method

.method protected cancelOrDismiss(Z)V
    .locals 3
    .param p1, "isCancel"    # Z

    .prologue
    .line 340
    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOrDismiss isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPriorityButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    if-nez v0, :cond_1

    .line 342
    :cond_0
    if-eqz p1, :cond_2

    .line 343
    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 347
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 348
    return-void

    .line 345
    :cond_2
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "WifiPriorityDialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    .line 334
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "rg"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 356
    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged checkedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 358
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v8, -0x1

    .line 238
    const-string v6, "WifiPriorityDialog"

    const-string v7, "onClick"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput p2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 242
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 243
    .local v2, "id":I
    if-ne v2, v8, :cond_1

    .line 278
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 248
    .local v5, "total_num":I
    if-ne p2, v8, :cond_2

    const/4 v6, 0x1

    if-lt v2, v6, :cond_2

    .line 249
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 250
    .local v4, "sel_config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 252
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 253
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    .line 254
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 257
    .end local v4    # "sel_config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v6, -0x3

    if-ne p2, v6, :cond_3

    add-int/lit8 v6, v5, -0x2

    if-gt v2, v6, :cond_3

    .line 258
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 259
    .restart local v4    # "sel_config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 261
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 262
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    .line 263
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 265
    .end local v4    # "sel_config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v6, -0x2

    if-ne p2, v6, :cond_0

    .line 268
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 269
    .local v3, "oconfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 271
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 272
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 273
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 275
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040269

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/PrioritySettingDialog;->setView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, "context":Landroid/content/Context;
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 123
    const-string v2, "WifiPriorityDialog"

    const-string v3, "PrioritySettingDialog onCreate null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04026b

    iget-object v4, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "priorityView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v3, 0x7f1005d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    .line 126
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    const v2, 0x7f0a1572

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/PrioritySettingDialog;->setTitle(I)V

    .line 129
    new-instance v2, Lcom/android/settings/wifi/PrioritySettingDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/PrioritySettingDialog$1;-><init>(Lcom/android/settings/wifi/PrioritySettingDialog;)V

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 139
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v3, 0x7f1005d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 140
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    if-nez v2, :cond_0

    .line 141
    const-string v2, "WifiPriorityDialog"

    const-string v3, "mRadioGroup is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 148
    const/4 v2, -0x1

    const v3, 0x7f0a156f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    const/4 v2, -0x3

    const v3, 0x7f0a1570

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    const/4 v2, -0x2

    const v3, 0x7f0a1571

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/android/settings/wifi/PrioritySettingDialog;->getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    .line 157
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 158
    iput v5, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 159
    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 160
    invoke-virtual {p0, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 162
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 211
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 199
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 396
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 205
    return-void
.end method

.method protected updateRadioGroup(I)V
    .locals 10
    .param p1, "checkId"    # I

    .prologue
    const/4 v9, -0x2

    .line 172
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 173
    const-string v6, "WifiPriorityDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRadioGroup add ordered configurations. number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "i":I
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 177
    .local v4, "oconfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 178
    .local v5, "rb1":Landroid/widget/RadioButton;
    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 182
    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 185
    .local v3, "lp_rb1":Landroid/widget/RadioGroup$LayoutParams;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 186
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v6, v5, v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 187
    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup current ssid:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 188
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 189
    .end local v3    # "lp_rb1":Landroid/widget/RadioGroup$LayoutParams;
    .end local v4    # "oconfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "rb1":Landroid/widget/RadioButton;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 196
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 192
    :cond_1
    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup orderedConfigs is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
