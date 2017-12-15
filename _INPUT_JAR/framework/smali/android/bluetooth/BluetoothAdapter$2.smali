.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic val$serviceUuids:[Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 4

    .prologue
    .line 2201
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 14
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 2204
    const/4 v7, 0x1

    if-eq p1, v7, :cond_b

    .line 2206
    const-string v7, "BluetoothAdapter"

    const-string v8, "LE Scan has already started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_a
    :goto_a
    return-void

    .line 2209
    :cond_b
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    .line 2210
    .local v3, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-eqz v3, :cond_a

    .line 2213
    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    if-eqz v7, :cond_42

    .line 2214
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2215
    .local v6, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    .local v0, "arr$":[Ljava/util/UUID;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1e
    if-ge v1, v2, :cond_2d

    aget-object v5, v0, v1

    .line 2216
    .local v5, "uuid":Ljava/util/UUID;
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2218
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_2d
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v4

    .line 2219
    .local v4, "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v4, :cond_39

    invoke-interface {v4, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 2220
    :cond_39
    const-string v7, "BluetoothAdapter"

    const-string/jumbo v8, "uuids does not match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2224
    .end local v0    # "arr$":[Ljava/util/UUID;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "scanServiceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v6    # "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_42
    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v9

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    goto :goto_a
.end method
