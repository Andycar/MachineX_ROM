.class Landroid/bluetooth/BluetoothA2dp$2;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .registers 2

    .prologue
    .line 626
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 628
    const-string v0, "BluetoothA2dp"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->access$102(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 631
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    # getter for: Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$300(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 632
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    # getter for: Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$300(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 634
    :cond_24
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 636
    const-string v0, "BluetoothA2dp"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->access$102(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 638
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    # getter for: Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$300(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 639
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    # getter for: Landroid/bluetooth/BluetoothA2dp;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$300(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 641
    :cond_1f
    return-void
.end method
