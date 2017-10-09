.class Lcom/android/settings/wfd/WfdPickerDialog$2;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerDialog;->access$002(Lcom/android/settings/wfd/WfdPickerDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->access$000(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerDialog;->access$100(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 99
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 101
    const-string v0, "WfdPickerDialog"

    const-string v1, "stopScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->access$000(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a096c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->access$000(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wfd/WfdPickerDialog$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerDialog$2$1;-><init>(Lcom/android/settings/wfd/WfdPickerDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_1
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string v0, "WfdPickerDialog"

    const-string v1, "startScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->access$000(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a05f6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
