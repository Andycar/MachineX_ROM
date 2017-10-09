.class Lcom/android/settings/wifi/FreeWifiScanPickerDialog$4;
.super Ljava/lang/Object;
.source "FreeWifiScanPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$4;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$4;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->finish()V

    .line 90
    return-void
.end method
