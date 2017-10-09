.class Lcom/android/settings/wfd/WfdPickerDialog$2$1;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerDialog$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerDialog$2;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerDialog$2$1;->this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2$1;->this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerDialog$2$1;->this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;

    iget-object v1, v1, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerDialog;->access$100(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 113
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2$1;->this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2$1;->this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2$1;->this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplaySettingsFragment:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2$1;->this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2$1;->this$1:Lcom/android/settings/wfd/WfdPickerDialog$2;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplaySettingsFragment:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_0
.end method
