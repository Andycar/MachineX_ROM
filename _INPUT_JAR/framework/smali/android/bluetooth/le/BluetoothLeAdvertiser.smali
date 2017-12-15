.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    }
.end annotation


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final SERVICE_DATA_UUID_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .registers 4
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 3
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 3
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method private byteLength([B)I
    .registers 3
    .param p1, "array"    # [B

    .prologue
    .line 228
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    array-length v0, p1

    goto :goto_3
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    .prologue
    .line 360
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 370
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .registers 12
    .param p1, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p2, "isScanResponse"    # Z

    .prologue
    .line 175
    if-nez p1, :cond_4

    const/4 v5, 0x0

    .line 224
    :cond_3
    :goto_3
    return v5

    .line 176
    :cond_4
    const/4 v5, 0x3

    .line 177
    .local v5, "size":I
    if-eqz p2, :cond_f

    .line 178
    const/4 v5, 0x0

    .line 179
    const-string v7, "BluetoothLeAdvertiser"

    const-string v8, "Scan Response data"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_f
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_56

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "num16BitUuids":I
    const/4 v4, 0x0

    .line 184
    .local v4, "num32BitUuids":I
    const/4 v2, 0x0

    .line 185
    .local v2, "num128BitUuids":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 186
    .local v6, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 188
    :cond_35
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 191
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 195
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    :cond_41
    if-eqz v3, :cond_48

    .line 196
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 200
    :cond_48
    if-eqz v4, :cond_4f

    .line 201
    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 205
    :cond_4f
    if-eqz v2, :cond_56

    .line 206
    mul-int/lit8 v7, v2, 0x10

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 210
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "num128BitUuids":I
    .end local v3    # "num16BitUuids":I
    .end local v4    # "num32BitUuids":I
    :cond_56
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 211
    .restart local v6    # "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    .line 213
    goto :goto_62

    .line 214
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    :cond_80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_81
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_9f

    .line 215
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 218
    :cond_9f
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 219
    add-int/lit8 v5, v5, 0x3

    .line 221
    :cond_a7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 222
    iget-object v7, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    goto/16 :goto_3
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 5
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 91
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 14
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    const/16 v2, 0x1f

    .line 109
    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v8

    .line 111
    if-nez p4, :cond_12

    .line 112
    :try_start_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :catchall_f
    move-exception v1

    monitor-exit v8
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1

    .line 114
    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isPeripheralModeSupported()Z

    move-result v1

    if-nez v1, :cond_28

    .line 116
    const/4 v1, 0x5

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 118
    monitor-exit v8

    .line 142
    :goto_27
    return-void

    .line 120
    :cond_28
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-gt v1, v2, :cond_36

    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-le v1, v2, :cond_3c

    .line 122
    :cond_36
    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 123
    monitor-exit v8

    goto :goto_27

    .line 125
    :cond_3c
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 126
    const/4 v1, 0x3

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 127
    monitor-exit v8
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_f

    goto :goto_27

    .line 132
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_5f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_f

    move-result-object v6

    .line 138
    .local v6, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_50
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V

    .line 140
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->startRegisteration()V

    .line 141
    monitor-exit v8

    goto :goto_27

    .line 133
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    .end local v6    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_5f
    move-exception v7

    .line 134
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 136
    monitor-exit v8
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_f

    goto :goto_27
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 153
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v2

    .line 155
    if-nez p1, :cond_10

    .line 156
    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1

    .line 158
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    .line 159
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    if-nez v0, :cond_1c

    monitor-exit v2

    .line 162
    :goto_1b
    return-void

    .line 160
    :cond_1c
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->stopAdvertising()V

    .line 161
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    goto :goto_1b
.end method
