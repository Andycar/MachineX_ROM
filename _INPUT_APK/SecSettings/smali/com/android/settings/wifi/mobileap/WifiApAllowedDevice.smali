.class Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
.super Landroid/preference/Preference;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private dialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

.field private mFragment:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

.field private mMac:Ljava/lang/String;

.field private mMenuHasFocus:Z

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "fragment"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f0401b3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->setLayoutResource(I)V

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMenuHasFocus:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->showDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMenuHasFocus:Z

    return p1
.end method

.method private showDialog()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->dialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->dialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 89
    instance-of v1, p1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    .line 93
    .local v0, "other":Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->dialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f1003c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 54
    .local v6, "menuItem":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_0

    .line 55
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMenuHasFocus:Z

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    .line 75
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->dialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 84
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 140
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->update(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 143
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->update(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 149
    const-string v1, "WifiApConnectedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> onKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 151
    packed-switch p2, :pswitch_data_0

    .line 157
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->showDialog()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method update(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 103
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 104
    .local v1, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/WifiApWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v2

    .line 111
    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, p2, v4}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 113
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4, p2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->notifyHierarchyChanged()V

    .line 125
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 126
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    move v2, v3

    .line 127
    goto :goto_0

    .line 115
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "ret":I
    if-ne v3, v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeSelectedDevice(Ljava/lang/String;)V

    goto :goto_1
.end method
