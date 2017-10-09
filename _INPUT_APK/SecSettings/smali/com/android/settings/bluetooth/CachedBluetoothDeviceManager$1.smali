.class Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CachedBluetoothDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v3, "VZW"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "android.bluetooth.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 61
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 62
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-static {v3, v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->access$000(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Landroid/bluetooth/BluetoothDevice;I)V

    .line 65
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "status":I
    :cond_0
    return-void
.end method
