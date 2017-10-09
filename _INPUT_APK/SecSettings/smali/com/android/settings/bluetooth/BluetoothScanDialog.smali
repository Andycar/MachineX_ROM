.class public Lcom/android/settings/bluetooth/BluetoothScanDialog;
.super Landroid/app/Activity;
.source "BluetoothScanDialog.java"


# static fields
.field public static mBtScanDialog:Z

.field private static mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static mScanBtn:Landroid/widget/Button;


# instance fields
.field mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static ScanBtnStateUpdate()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0a0130

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0a096c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Button;

    .prologue
    .line 19
    sput-object p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 42
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a02d1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 45
    const v4, 0x7f0a0130

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    const v4, 0x7f0a01d1

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 54
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040036

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "dialoglayout":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 60
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 78
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothScanDialog$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$3;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 34
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "BluetoothScanDialog"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 130
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->initialize()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 113
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 117
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtnStateUpdate()V

    .line 121
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 122
    .local v0, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 124
    :cond_1
    return-void
.end method
