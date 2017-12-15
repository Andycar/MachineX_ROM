.class public Landroid/sec/enterprise/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/BluetoothPolicy$BluetoothProfile;,
        Landroid/sec/enterprise/BluetoothPolicy$BluetoothUUID;
    }
.end annotation


# static fields
.field public static final NO_PROFILE:I = -0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "BluetoothPolicy"

    sput-object v0, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 454
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 455
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 456
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 461
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 458
    :catch_a
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-bluetoothLog returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getAllowBluetoothDataTransfer(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 236
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 237
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getAllowBluetoothDataTransfer(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 242
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 239
    :catch_b
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAllowBluetoothDataTransfer returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .registers 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 352
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 353
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 354
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 359
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 356
    :catch_b
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBluetoothDeviceAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isBluetoothEnabled()Z
    .registers 6

    .prologue
    .line 421
    const/4 v1, 0x1

    .line 423
    .local v1, "enabled":Z
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    .line 424
    .local v2, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v2, :cond_15

    .line 425
    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothEnabled()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v3

    .line 431
    .end local v2    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_b
    return v3

    .line 427
    :catch_c
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 429
    sget-object v3, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PXY-isBluetoothEnabled returning default value"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    move v3, v1

    .line 431
    goto :goto_b
.end method

.method public isBluetoothLogEnabled()Z
    .registers 5

    .prologue
    .line 438
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 439
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 440
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothLogEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 445
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 442
    :catch_b
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBluetoothLogEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 302
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 303
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 308
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 305
    :catch_b
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBluetoothUUIDAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isDesktopConnectivityEnabled()Z
    .registers 5

    .prologue
    .line 271
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 272
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 273
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isDesktopConnectivityEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 278
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 275
    :catch_b
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isDesktopConnectivityEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isDiscoverableEnabled()Z
    .registers 5

    .prologue
    .line 387
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 388
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 389
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isDiscoverableEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 394
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 391
    :catch_b
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isDiscoverableEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isLimitedDiscoverableEnabled()Z
    .registers 5

    .prologue
    .line 405
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 406
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 407
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isLimitedDiscoverableEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 412
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 409
    :catch_b
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isLimitedDiscoverableEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isOutgoingCallsAllowed()Z
    .registers 5

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 254
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 255
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingCallsAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 260
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 257
    :catch_b
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isOutgoingCallsAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isPairingEnabled()Z
    .registers 5

    .prologue
    .line 370
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 371
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 372
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isPairingEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 377
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 374
    :catch_b
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isPairingEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isProfileEnabled(I)Z
    .registers 6
    .param p1, "profile"    # I

    .prologue
    .line 320
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 321
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 322
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isProfileEnabled(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 327
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 324
    :catch_b
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isProfileEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method
