.class Landroid/bluetooth/BluetoothHidDevice$2;
.super Ljava/lang/Object;
.source "BluetoothHidDevice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHidDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHidDevice;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 182
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice;->access$202(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/IBluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    .line 186
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 187
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x16

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 190
    :cond_28
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 193
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice;->access$202(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/IBluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    .line 197
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 198
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$2;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 200
    :cond_23
    return-void
.end method
