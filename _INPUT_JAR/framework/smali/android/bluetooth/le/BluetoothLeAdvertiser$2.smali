.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertiseCallback;

.field final synthetic val$settings:Landroid/bluetooth/le/AdvertiseSettings;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 4

    .prologue
    .line 370
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 375
    return-void
.end method
