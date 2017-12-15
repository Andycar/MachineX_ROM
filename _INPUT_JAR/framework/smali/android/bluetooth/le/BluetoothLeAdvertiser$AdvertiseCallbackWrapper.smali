.class Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvertiseCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private final mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

.field private final mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private mClientIf:I

.field private mIsAdvertising:Z

.field private final mScanResponse:Landroid/bluetooth/le/AdvertiseData;

.field private final mSettings:Landroid/bluetooth/le/AdvertiseSettings;

.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V
    .registers 8
    .param p2, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p5, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p6, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    const/4 v0, 0x0

    .line 251
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    .line 246
    iput-boolean v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 252
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 253
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    .line 254
    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    .line 255
    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 256
    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 257
    iput v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 258
    return-void
.end method


# virtual methods
.method public onClientRegistered(II)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 311
    const-string v1, "BluetoothLeAdvertiser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClientRegistered() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-enter p0

    .line 313
    if-nez p1, :cond_3f

    .line 314
    :try_start_26
    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_47

    .line 316
    :try_start_28
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_35} :catch_37
    .catchall {:try_start_28 .. :try_end_35} :catchall_47

    .line 318
    :try_start_35
    monitor-exit p0

    .line 327
    :goto_36
    return-void

    .line 319
    :catch_37
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "failed to start advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3f
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 326
    monitor-exit p0

    goto :goto_36

    :catchall_47
    move-exception v1

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "isStart"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 332
    monitor-enter p0

    .line 333
    if-eqz p2, :cond_1f

    .line 334
    if-nez p1, :cond_14

    .line 336
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 337
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    invoke-static {v1, v2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 353
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit p0

    .line 356
    return-void

    .line 340
    :cond_14
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v1, v2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    goto :goto_f

    .line 354
    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v1

    .line 345
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 346
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 348
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_37} :catch_38
    .catchall {:try_start_1f .. :try_end_37} :catchall_1c

    goto :goto_f

    .line 349
    :catch_38
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_39
    const-string v1, "BluetoothLeAdvertiser"

    const-string/jumbo v2, "remote exception when unregistering"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_1c

    goto :goto_f
.end method

.method public startRegisteration()V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 261
    monitor-enter p0

    .line 262
    :try_start_2
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-ne v2, v3, :cond_8

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_30

    .line 287
    :goto_7
    return-void

    .line 265
    :cond_8
    :try_start_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 266
    .local v1, "uuid":Ljava/util/UUID;
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 267
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_1b} :catch_33
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_5f
    .catchall {:try_start_8 .. :try_end_1b} :catchall_30

    .line 271
    .end local v1    # "uuid":Ljava/util/UUID;
    :goto_1b
    :try_start_1b
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-lez v2, :cond_3d

    iget-boolean v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    if-eqz v2, :cond_3d

    .line 272
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :goto_2e
    monitor-exit p0

    goto :goto_7

    :catchall_30
    move-exception v2

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_30

    throw v2

    .line 268
    :catch_33
    move-exception v2

    move-object v0, v2

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    :goto_35
    :try_start_35
    const-string v2, "BluetoothLeAdvertiser"

    const-string v3, "Failed to start registeration"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-gtz v2, :cond_4a

    .line 275
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    const/4 v4, 0x4

    # invokes: Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_30

    goto :goto_2e

    .line 280
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 281
    const/4 v2, -0x1

    iput v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_54} :catch_55
    .catchall {:try_start_4a .. :try_end_54} :catchall_30

    goto :goto_2e

    .line 282
    :catch_55
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_56
    const-string v2, "BluetoothLeAdvertiser"

    const-string/jumbo v3, "remote exception when unregistering"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_30

    goto :goto_2e

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5f
    move-exception v2

    move-object v0, v2

    goto :goto_35
.end method

.method public stopAdvertising()V
    .registers 5

    .prologue
    .line 290
    monitor-enter p0

    .line 292
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopMultiAdvertising(I)V

    .line 293
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_35
    .catchall {:try_start_1 .. :try_end_d} :catchall_32

    .line 300
    :goto_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 301
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    # getter for: Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_26
    monitor-exit p0

    .line 304
    return-void

    .line 294
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    :goto_2a
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "Failed to stop advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_32
    move-exception v1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_32

    throw v1

    .line 294
    :catch_35
    move-exception v1

    move-object v0, v1

    goto :goto_2a
.end method
