.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$1;,
        Landroid/hardware/camera2/CameraManager$CameraServiceListener;,
        Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;,
        Landroid/hardware/camera2/CameraManager$AvailabilityListener;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraService:Landroid/hardware/ICameraService;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceListener:Landroid/hardware/camera2/CameraManager$CameraServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;-><init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mServiceListener:Landroid/hardware/camera2/CameraManager$CameraServiceListener;

    .line 84
    const-string v0, "CameraManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 85
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_25
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->connectCameraServiceLocked()V

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/camera2/CameraManager;Landroid/hardware/ICameraService;)Landroid/hardware/ICameraService;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager;
    .param p1, "x1"    # Landroid/hardware/ICameraService;

    .prologue
    .line 52
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager$CameraServiceListener;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mServiceListener:Landroid/hardware/camera2/CameraManager$CameraServiceListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/CameraManager;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private connectCameraServiceLocked()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 586
    iput-object v4, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    .line 587
    const-string/jumbo v4, "media.camera"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 588
    .local v1, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v1, :cond_d

    .line 624
    :goto_c
    return-void

    .line 593
    :cond_d
    :try_start_d
    new-instance v4, Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;-><init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_3d

    .line 599
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 605
    .local v2, "cameraServiceRaw":Landroid/hardware/ICameraService;
    invoke-static {v2}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ICameraService;

    .line 608
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    :try_start_21
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;->throwOnError(I)V
    :try_end_28
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_21 .. :try_end_28} :catch_3f

    .line 615
    :goto_28
    :try_start_28
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager;->mServiceListener:Landroid/hardware/camera2/CameraManager$CameraServiceListener;

    invoke-interface {v0, v4}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)I

    .line 616
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_2f
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_28 .. :try_end_2f} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_46

    goto :goto_c

    .line 617
    :catch_30
    move-exception v3

    .line 619
    .local v3, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to register a camera service listener"

    invoke-virtual {v3}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 594
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v2    # "cameraServiceRaw":Landroid/hardware/ICameraService;
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_3d
    move-exception v3

    .line 596
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_c

    .line 610
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v2    # "cameraServiceRaw":Landroid/hardware/ICameraService;
    :catch_3f
    move-exception v3

    .line 611
    .local v3, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    const-string v4, "Failed to set up vendor tags"

    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/CameraManager;->handleRecoverableSetupErrors(Landroid/hardware/camera2/utils/CameraRuntimeException;Ljava/lang/String;)V

    goto :goto_28

    .line 621
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_46
    move-exception v4

    goto :goto_c
.end method

.method private getCameraServiceLocked()Landroid/hardware/ICameraService;
    .registers 3

    .prologue
    .line 634
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_19

    .line 635
    const-string v0, "CameraManager"

    const-string v1, "getCameraServiceLocked: Reconnecting to camera service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->connectCameraServiceLocked()V

    .line 637
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_19

    .line 638
    const-string v0, "CameraManager"

    const-string v1, "Camera service is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_19
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    return-object v0
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v7, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    if-nez v7, :cond_79

    .line 460
    const/4 v6, 0x0

    .line 461
    .local v6, "numCameras":I
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getCameraServiceLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 462
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v1, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_11

    .line 515
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "numCameras":I
    :goto_10
    return-object v1

    .line 470
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "numCameras":I
    :cond_11
    :try_start_11
    invoke-interface {v0}, Landroid/hardware/ICameraService;->getNumberOfCameras()I
    :try_end_14
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_11 .. :try_end_14} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_3a

    move-result v6

    .line 478
    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 479
    .local v4, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v6, :cond_77

    .line 482
    const/4 v5, 0x0

    .line 484
    .local v5, "isDeviceSupported":Z
    :try_start_1e
    invoke-interface {v0, v3, v4}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    .line 485
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_24} :catch_44
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1e .. :try_end_24} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_53

    move-result v7

    if-nez v7, :cond_3c

    .line 486
    const/4 v5, 0x1

    .line 506
    :cond_28
    :goto_28
    if-eqz v5, :cond_58

    .line 507
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 471
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v5    # "isDeviceSupported":Z
    :catch_34
    move-exception v2

    .line 472
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v7

    throw v7

    .line 473
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_3a
    move-exception v2

    .line 475
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_10

    .line 488
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v5    # "isDeviceSupported":Z
    :cond_3c
    :try_start_3c
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Expected to get non-empty characteristics"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_44} :catch_44
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_3c .. :try_end_44} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_44} :catch_53

    .line 490
    :catch_44
    move-exception v7

    goto :goto_28

    .line 493
    :catch_46
    move-exception v2

    .line 497
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_28

    .line 498
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v7

    throw v7

    .line 500
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_53
    move-exception v2

    .line 502
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_10

    .line 509
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_58
    const-string v7, "CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error querying camera device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for listing."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 513
    .end local v5    # "isDeviceSupported":Z
    :cond_77
    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 515
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v6    # "numCameras":I
    :cond_79
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    goto :goto_10
.end method

.method private handleRecoverableSetupErrors(Landroid/hardware/camera2/utils/CameraRuntimeException;Ljava/lang/String;)V
    .registers 8
    .param p1, "e"    # Landroid/hardware/camera2/utils/CameraRuntimeException;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v1

    .line 520
    .local v1, "problem":I
    packed-switch v1, :pswitch_data_32

    .line 526
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 522
    :pswitch_11
    invoke-static {v1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 520
    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_11
    .end packed-switch
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice;
    .registers 21
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v11

    .line 250
    .local v11, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v12, 0x0

    .line 253
    .local v12, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_a} :catch_4e
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_5 .. :try_end_a} :catch_db

    .line 255
    const/4 v9, 0x0

    .line 257
    .local v9, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_b
    new-instance v13, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v13, v0, v1, v2, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 264
    .local v13, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    new-instance v8, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v8}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 266
    .local v8, "holder":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v4

    .line 267
    .local v4, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_4b

    move-result v5

    .line 269
    .local v5, "id":I
    :try_start_23
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 271
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/CameraManager;->getCameraServiceLocked()Landroid/hardware/ICameraService;

    move-result-object v3

    .line 272
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    if-nez v3, :cond_6a

    .line 273
    new-instance v6, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v7, 0x2

    const-string v16, "Camera service is currently unavailable"

    move-object/from16 v0, v16

    invoke-direct {v6, v7, v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_3a
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_23 .. :try_end_3a} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3a} :catch_ca
    .catchall {:try_start_23 .. :try_end_3a} :catchall_4b

    .line 285
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :catch_3a
    move-exception v14

    .line 286
    .local v14, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3b
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_90

    .line 287
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Should\'ve gone down the shim path"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 321
    .end local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "id":I
    .end local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_4b
    move-exception v6

    monitor-exit v15
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v6
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_4e} :catch_4e
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_4d .. :try_end_4e} :catch_db

    .line 323
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_4e
    move-exception v14

    .line 324
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 277
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "id":I
    .restart local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .restart local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :cond_6a
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    .line 279
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/BinderHolder;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_7d
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_6a .. :try_end_7d} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_7d} :catch_ca
    .catchall {:try_start_6a .. :try_end_7d} :catchall_4b

    move-result-object v9

    .line 319
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :cond_7e
    :goto_7e
    :try_start_7e
    invoke-virtual {v13, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 320
    move-object v12, v13

    .line 321
    monitor-exit v15
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_4b

    .line 329
    return-object v12

    .line 282
    :cond_84
    :try_start_84
    const-string v6, "CameraManager"

    const-string v7, "Using legacy camera HAL."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v4, v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_8e
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_84 .. :try_end_8e} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8e} :catch_ca
    .catchall {:try_start_84 .. :try_end_8e} :catchall_4b

    move-result-object v9

    goto :goto_7e

    .line 288
    .local v14, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_90
    :try_start_90
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_b3

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_b3

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b3

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_b3

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_c9

    .line 296
    :cond_b3
    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V

    .line 298
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c4

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7e

    .line 301
    :cond_c4
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6

    .line 305
    :cond_c9
    throw v14

    .line 307
    .end local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_ca
    move-exception v14

    .line 309
    .local v14, "e":Landroid/os/RemoteException;
    new-instance v10, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v6, 0x2

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v10, v6, v7, v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .local v10, "ce":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v13, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V

    .line 313
    invoke-virtual {v10}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6
    :try_end_db
    .catchall {:try_start_90 .. :try_end_db} :catchall_4b

    .line 326
    .end local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "id":I
    .end local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v10    # "ce":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_db
    move-exception v14

    .line 327
    .local v14, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 537
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v4, 0x0

    .line 548
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 559
    .local v2, "id":I
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getCameraServiceLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 561
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_c

    .line 577
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_b
    :goto_b
    return v4

    .line 563
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_c
    invoke-interface {v0, v2, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)I

    move-result v3

    .line 565
    .local v3, "res":I
    if-eqz v3, :cond_35

    .line 566
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_2b
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_5 .. :try_end_2b} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_37

    .line 569
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "res":I
    :catch_2b
    move-exception v1

    .line 570
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_b

    .line 571
    throw v1

    .line 568
    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v3    # "res":I
    :cond_35
    const/4 v4, 0x1

    goto :goto_b

    .line 574
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "res":I
    :catch_37
    move-exception v5

    goto :goto_b
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 15
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 178
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    .line 179
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Camera id %s does not match any currently connected camera device"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 223
    :catchall_20
    move-exception v8

    monitor-exit v9
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v8

    .line 183
    :cond_23
    :try_start_23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 190
    .local v4, "id":I
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getCameraServiceLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 191
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_3a

    .line 192
    new-instance v8, Landroid/hardware/camera2/CameraAccessException;

    const/4 v10, 0x2

    const-string v11, "Camera service is currently unavailable"

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_20

    .line 196
    :cond_3a
    :try_start_3a
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 199
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    .line 201
    .local v6, "outParameters":[Ljava/lang/String;
    invoke-interface {v0, v4, v6}, Landroid/hardware/ICameraService;->getLegacyParameters(I[Ljava/lang/String;)I

    .line 202
    const/4 v8, 0x0

    aget-object v7, v6, v8

    .line 204
    .local v7, "parameters":Ljava/lang/String;
    new-instance v5, Landroid/hardware/CameraInfo;

    invoke-direct {v5}, Landroid/hardware/CameraInfo;-><init>()V

    .line 205
    .local v5, "info":Landroid/hardware/CameraInfo;
    invoke-interface {v0, v4, v5}, Landroid/hardware/ICameraService;->getCameraInfo(ILandroid/hardware/CameraInfo;)I

    .line 207
    invoke-static {v7, v5}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_54
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_3a .. :try_end_54} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_54} :catch_6c
    .catchall {:try_start_3a .. :try_end_54} :catchall_20

    move-result-object v1

    .line 223
    .end local v5    # "info":Landroid/hardware/CameraInfo;
    .end local v6    # "outParameters":[Ljava/lang/String;
    .end local v7    # "parameters":Ljava/lang/String;
    :goto_55
    :try_start_55
    monitor-exit v9
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_20

    .line 224
    return-object v1

    .line 210
    :cond_57
    :try_start_57
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 212
    .local v5, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {v0, v4, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    .line 214
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_64
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_57 .. :try_end_64} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_64} :catch_6c
    .catchall {:try_start_57 .. :try_end_64} :catchall_20

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v1, v2

    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_55

    .line 216
    .end local v5    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_66
    move-exception v3

    .line 217
    .local v3, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_67
    invoke-virtual {v3}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v8

    throw v8

    .line 218
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_6c
    move-exception v3

    .line 220
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v8, Landroid/hardware/camera2/CameraAccessException;

    const/4 v10, 0x2

    const-string v11, "Camera service is currently unavailable"

    invoke-direct {v8, v10, v11, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_20
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 386
    if-nez p1, :cond_a

    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_a
    if-nez p2, :cond_14

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_14
    if-nez p3, :cond_21

    .line 391
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 392
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 399
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_21
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice;

    .line 400
    return-void

    .line 394
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Looper doesn\'t exist in the calling thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 124
    if-nez p2, :cond_15

    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 126
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_10

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No handler given, and current thread has no looper!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_10
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_15
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 134
    :try_start_18
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 136
    .local v1, "oldHandler":Landroid/os/Handler;
    if-nez v1, :cond_27

    .line 137
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mServiceListener:Landroid/hardware/camera2/CameraManager$CameraServiceListener;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 139
    :cond_27
    monitor-exit v3

    .line 140
    return-void

    .line 139
    .end local v1    # "oldHandler":Landroid/os/Handler;
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 151
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
