.class Lcom/android/settings/bluetooth/BluetoothScanDialog$2;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothScanDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->access$002(Landroid/widget/Button;)Landroid/widget/Button;

    .line 64
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtnStateUpdate()V

    .line 65
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->access$000()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothScanDialog$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$2$1;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method
