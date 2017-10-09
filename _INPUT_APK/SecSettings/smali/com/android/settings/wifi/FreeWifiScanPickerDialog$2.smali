.class Lcom/android/settings/wifi/FreeWifiScanPickerDialog$2;
.super Ljava/lang/Object;
.source "FreeWifiScanPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanPickerDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$2;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanPickerDialog$2;->this$0:Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->finish()V

    .line 58
    return-void
.end method
