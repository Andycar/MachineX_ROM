.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizard;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAddOtherNetworkItem:Landroid/view/View;

.field private mEmptyFooter:Landroid/widget/TextView;

.field private mListLastEmpty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 126
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v6, [I

    const v4, 0x7f010034

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "ta":Landroid/content/res/TypedArray;
    const v2, 0x7f0a041e

    invoke-interface {p1, v5, v6, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 132
    const/4 v2, 0x5

    const v3, 0x7f0a0417

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    return-void
.end method

.method protected connect(I)V
    .locals 1
    .param p1, "networkId"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSetupActivity;

    .line 148
    .local v0, "activity":Lcom/android/settings/wifi/WifiSetupActivity;
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupActivity;->networkSelected()V

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    .line 150
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    const v1, 0x7f020356

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1a40000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAdapter:Landroid/widget/ListAdapter;

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$2;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizard;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 60
    const v5, 0x7f0401fc

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 62
    .local v4, "view":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 63
    .local v2, "list":Landroid/widget/ListView;
    const v5, 0x7f100086

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, "title":Landroid/view/View;
    if-nez v3, :cond_0

    .line 65
    const v5, 0x7f0401fe

    invoke-virtual {p1, v5, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v2, v0, v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 69
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    const v5, 0x7f0401fd

    invoke-virtual {p1, v5, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    .line 70
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v8, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 71
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    new-instance v6, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard$1;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizard;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "wifi_show_wifi_required_info"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    const v5, 0x7f10048a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_1
    return-object v4
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    return-void
.end method

.method protected updateFooter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    .line 165
    .local v0, "isEmpty":Z
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    if-eq v0, v2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 167
    .local v1, "list":Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 169
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 174
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mListLastEmpty:Z

    .line 176
    .end local v1    # "list":Landroid/widget/ListView;
    :cond_0
    return-void

    .line 171
    .restart local v1    # "list":Landroid/widget/ListView;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mEmptyFooter:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 172
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;->mAddOtherNetworkItem:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method
