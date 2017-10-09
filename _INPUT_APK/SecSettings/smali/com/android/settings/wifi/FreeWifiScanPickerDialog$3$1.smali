.class Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3$1;
.super Ljava/lang/Object;
.source "FreeWifiScanPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3$1;->this$1:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3$1;->this$1:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;

    iget-object v0, v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->scanListner:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$OnScanButtonPressed;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3$1;->this$1:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;

    iget-object v0, v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->access$000(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3$1;->this$1:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;

    iget-object v0, v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$3;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->scanListner:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$OnScanButtonPressed;

    invoke-interface {v0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$OnScanButtonPressed;->onScanPressed()V

    .line 79
    :cond_0
    return-void
.end method
