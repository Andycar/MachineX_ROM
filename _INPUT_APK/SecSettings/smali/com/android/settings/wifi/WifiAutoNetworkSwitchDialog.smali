.class public Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;
.super Landroid/app/AlertDialog;
.source "WifiAutoNetworkSwitchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private check:Landroid/widget/CheckBox;

.field private mCheckBoxVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "checkBoxVisible"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    .line 60
    return-void
.end method


# virtual methods
.method public WifiAutoNetworkSwitchCheckBoxChecked()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 117
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04028d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setView(Landroid/view/View;)V

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setInverseBackgroundForced(Z)V

    .line 71
    const v2, 0x7f0a0592

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setTitle(I)V

    .line 74
    const v2, 0x7f10016a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Landroid/widget/CheckBox;

    .line 76
    const v2, 0x7f100169

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    .local v0, "textView":Landroid/widget/TextView;
    const v2, 0x7f0a059a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    const v2, 0x7f0a059b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a091f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 109
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
