.class public Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;
.super Landroid/app/AlertDialog;
.source "WifiInternetServiceCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private check:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    return-void
.end method


# virtual methods
.method public WifiInternetServiceCheckBoxChecked()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040275

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setView(Landroid/view/View;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setInverseBackgroundForced(Z)V

    .line 60
    const v1, 0x7f0a0592

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setTitle(I)V

    .line 63
    const v1, 0x7f1005d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->check:Landroid/widget/CheckBox;

    .line 64
    iget-object v1, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->check:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a091f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 68
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a05c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
