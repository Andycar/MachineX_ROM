.class Lcom/android/settings/bluetooth/DevicePickerFragment$1;
.super Ljava/lang/Object;
.source "DevicePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "DevicePickerFragment"

    const-string v1, "OnClickListener :: stopScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v0, "DevicePickerFragment"

    const-string v1, "OnClickListener :: startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->startScanning()V

    goto :goto_0
.end method
