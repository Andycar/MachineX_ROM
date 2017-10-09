.class Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;
.super Ljava/lang/Object;
.source "FreeWifiScanPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->access$002(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->access$000(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3$1;-><init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->access$000(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    return-void
.end method
