.class final Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/SapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/SapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/SapProfile;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/SapProfile;Lcom/android/settings/bluetooth/SapProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/bluetooth/SapProfile;
    .param p2, "x1"    # Lcom/android/settings/bluetooth/SapProfile$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;-><init>(Lcom/android/settings/bluetooth/SapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 87
    invoke-static {}, Lcom/android/settings/bluetooth/SapProfile;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SapProfile"

    const-string v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    check-cast p2, Lcom/broadcom/bt/service/sap/BluetoothSap;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v3, p2}, Lcom/android/settings/bluetooth/SapProfile;->access$102(Lcom/android/settings/bluetooth/SapProfile;Lcom/broadcom/bt/service/sap/BluetoothSap;)Lcom/broadcom/bt/service/sap/BluetoothSap;

    .line 91
    iget-object v3, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    invoke-static {v3}, Lcom/android/settings/bluetooth/SapProfile;->access$100(Lcom/android/settings/bluetooth/SapProfile;)Lcom/broadcom/bt/service/sap/BluetoothSap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/broadcom/bt/service/sap/BluetoothSap;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 93
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 94
    .local v2, "firstDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    invoke-static {v3}, Lcom/android/settings/bluetooth/SapProfile;->access$200(Lcom/android/settings/bluetooth/SapProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 96
    .local v0, "device":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 97
    const-string v3, "SapProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SapProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    invoke-static {v3}, Lcom/android/settings/bluetooth/SapProfile;->access$200(Lcom/android/settings/bluetooth/SapProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    invoke-static {v4}, Lcom/android/settings/bluetooth/SapProfile;->access$300(Lcom/android/settings/bluetooth/SapProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    invoke-static {v5}, Lcom/android/settings/bluetooth/SapProfile;->access$400(Lcom/android/settings/bluetooth/SapProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 100
    :cond_1
    if-eqz v0, :cond_3

    .line 102
    iget-object v3, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    .line 105
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 110
    .end local v0    # "device":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v2    # "firstDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/SapProfile;->access$502(Lcom/android/settings/bluetooth/SapProfile;Z)Z

    .line 111
    return-void

    .line 107
    .restart local v0    # "device":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .restart local v2    # "firstDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const-string v3, "SapProfile"

    const-string v4, "Bluetooth device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 114
    invoke-static {}, Lcom/android/settings/bluetooth/SapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SapProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/SapProfile;->access$502(Lcom/android/settings/bluetooth/SapProfile;Z)Z

    .line 116
    return-void
.end method
