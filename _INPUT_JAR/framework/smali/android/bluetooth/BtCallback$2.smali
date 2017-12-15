.class Landroid/bluetooth/BtCallback$2;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BtCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BtCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BtCallback;


# direct methods
.method constructor <init>(Landroid/bluetooth/BtCallback;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Landroid/bluetooth/BtCallback$2;->this$0:Landroid/bluetooth/BtCallback;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .registers 4

    .prologue
    .line 205
    const-string v0, "BtCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothServiceDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BtCallback$2;->this$0:Landroid/bluetooth/BtCallback;

    # getter for: Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Landroid/bluetooth/BtCallback;->access$200(Landroid/bluetooth/BtCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Landroid/bluetooth/BtCallback$2;->this$0:Landroid/bluetooth/BtCallback;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Landroid/bluetooth/BtCallback;->access$202(Landroid/bluetooth/BtCallback;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 207
    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .registers 5
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 200
    const-string v0, "BtCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothServiceUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Landroid/bluetooth/BtCallback$2;->this$0:Landroid/bluetooth/BtCallback;

    # setter for: Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, p1}, Landroid/bluetooth/BtCallback;->access$202(Landroid/bluetooth/BtCallback;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 202
    return-void
.end method
