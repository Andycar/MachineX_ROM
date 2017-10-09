.class public Lcom/android/settings/wifi/WifiPoorConnection;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiPoorConnection.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDurationDialogHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

.field private mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 25
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiPoorConnection;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mDurationDialogHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/android/settings/wifi/WifiPoorConnection$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiPoorConnection$1;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/settings/wifi/WifiPoorConnection;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiPoorConnection;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiPoorConnection;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiPoorConnection;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiPoorConnection;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiPoorConnection;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiPoorConnection;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiPoorConnection;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method

.method private showPoorConnectionDiag()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 53
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v4, "watchdogDialog":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiPoorConnection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040270

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 57
    .local v3, "view":Landroid/view/View;
    const v7, 0x7f100075

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "text":Landroid/widget/TextView;
    const v7, 0x7f0a05a1

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 59
    if-nez v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 64
    const v7, 0x1040014

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 66
    const v7, 0x7f1005d7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 67
    .local v1, "mCheck":Landroid/widget/CheckBox;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPoorConnection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_poor_connection_warning"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    const v5, 0x7f0a091f

    new-instance v6, Lcom/android/settings/wifi/WifiPoorConnection$2;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/WifiPoorConnection$2;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/wifi/WifiPoorConnection$3;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/WifiPoorConnection$3;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    .line 103
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings/wifi/WifiPoorConnection$4;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiPoorConnection$4;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 118
    new-instance v5, Lcom/android/settings/wifi/WifiPoorConnection$5;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiPoorConnection$5;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;

    .line 126
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    move v5, v6

    .line 70
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const-string v0, "WifiPoorConnection"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iput-object p0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPoorConnection;->setVisible(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPoorConnection;->setupAlert()V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPoorConnection;->showPoorConnectionDiag()V

    .line 50
    return-void
.end method
