.class public Lcom/android/settings/wifi/FreeWifiScanPickerDialog;
.super Landroid/app/Activity;
.source "FreeWifiScanPickerDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/FreeWifiScanPickerDialog$OnScanButtonPressed;
    }
.end annotation


# static fields
.field public static isLaunched:Ljava/lang/Boolean;


# instance fields
.field mFragmentManager:Landroid/app/FragmentManager;

.field public scanListner:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$OnScanButtonPressed;

.field private startBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->isLaunched:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->startBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanPickerDialog;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->startBtn:Landroid/widget/Button;

    return-object p1
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 52
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a1e8b

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 54
    const v4, 0x7f0a1e96

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    const v4, 0x7f0a01d1

    new-instance v5, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$2;-><init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 62
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0400ba

    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, "dialoglayout":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 68
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;-><init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 85
    new-instance v4, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$4;-><init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 93
    return-void
.end method


# virtual methods
.method public onConnecting(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "connState"    # Ljava/lang/Boolean;

    .prologue
    .line 103
    const-string v0, "FreeWifiScanPickerDialog"

    const-string v1, "onConnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->startBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-string v0, "FreeWifiScanPickerDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->isLaunched:Ljava/lang/Boolean;

    .line 39
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->initialize()V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->mFragmentManager:Landroid/app/FragmentManager;

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$1;-><init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 49
    return-void
.end method

.method public onScanCompleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "scanState"    # Ljava/lang/Boolean;

    .prologue
    .line 97
    const-string v0, "FreeWifiScanPickerDialog"

    const-string v1, "onScanCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->startBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 114
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->finish()V

    .line 123
    return-void
.end method
