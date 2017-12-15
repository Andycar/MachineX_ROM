.class public final Landroid/hardware/location/GeofenceHardware;
.super Ljava/lang/Object;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;,
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    }
.end annotation


# static fields
.field public static final GEOFENCE_ENTERED:I = 0x1

.field public static final GEOFENCE_ERROR_ID_EXISTS:I = 0x2

.field public static final GEOFENCE_ERROR_ID_UNKNOWN:I = 0x3

.field public static final GEOFENCE_ERROR_INSUFFICIENT_MEMORY:I = 0x6

.field public static final GEOFENCE_ERROR_INVALID_TRANSITION:I = 0x4

.field public static final GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x1

.field public static final GEOFENCE_EXITED:I = 0x2

.field public static final GEOFENCE_FAILURE:I = 0x5

.field public static final GEOFENCE_SUCCESS:I = 0x0

.field public static final GEOFENCE_UNCERTAIN:I = 0x4

.field public static final MONITORING_TYPE_FUSED_HARDWARE:I = 0x1

.field public static final MONITORING_TYPE_GPS_HARDWARE:I = 0x0

.field public static final MONITOR_CURRENTLY_AVAILABLE:I = 0x0

.field public static final MONITOR_CURRENTLY_UNAVAILABLE:I = 0x1

.field public static final MONITOR_UNSUPPORTED:I = 0x2

.field static final NUM_MONITORS:I = 0x2

.field public static final SOURCE_TECHNOLOGY_BLUETOOTH:I = 0x10

.field public static final SOURCE_TECHNOLOGY_CELL:I = 0x8

.field public static final SOURCE_TECHNOLOGY_GNSS:I = 0x1

.field public static final SOURCE_TECHNOLOGY_SENSORS:I = 0x4

.field public static final SOURCE_TECHNOLOGY_WIFI:I = 0x2


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/location/GeofenceHardwareCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/hardware/location/IGeofenceHardware;


# direct methods
.method public constructor <init>(Landroid/hardware/location/IGeofenceHardware;)V
    .registers 3
    .param p1, "service"    # Landroid/hardware/location/IGeofenceHardware;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 171
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 172
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V
    .registers 2
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardware;
    .param p1, "x1"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/hardware/location/GeofenceHardware;->removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V

    return-void
.end method

.method private getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    .registers 5
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 446
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    .line 447
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .line 448
    .local v0, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    if-nez v0, :cond_17

    .line 449
    new-instance v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    invoke-direct {v0, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V

    .line 450
    .restart local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_17
    monitor-exit v2

    return-object v0

    .line 453
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    .registers 5
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 464
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    .line 465
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .line 466
    .local v0, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    if-nez v0, :cond_17

    .line 467
    new-instance v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    invoke-direct {v0, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V

    .line 468
    .restart local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_17
    monitor-exit v2

    return-object v0

    .line 471
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 440
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 441
    :try_start_3
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 457
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 458
    :try_start_3
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    monitor-exit v1

    .line 460
    return-void

    .line 459
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method


# virtual methods
.method public addGeofence(IILandroid/hardware/location/GeofenceHardwareRequest;Landroid/hardware/location/GeofenceHardwareCallback;)Z
    .registers 8
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "geofenceRequest"    # Landroid/hardware/location/GeofenceHardwareRequest;
    .param p4, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v0

    if-nez v0, :cond_16

    .line 271
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    new-instance v1, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    invoke-direct {v1, p1, p3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    invoke-direct {p0, p4}, Landroid/hardware/location/GeofenceHardware;->getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Landroid/hardware/location/IGeofenceHardware;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v0

    .line 280
    :goto_15
    return v0

    .line 276
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geofence Request type not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1e

    .line 278
    :catch_1e
    move-exception v0

    .line 280
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getMonitoringTypes()[I
    .registers 2

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardware;->getMonitoringTypes()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 191
    :goto_6
    return-object v0

    .line 189
    :catch_7
    move-exception v0

    .line 191
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_6
.end method

.method public getStatusOfMonitoringType(I)I
    .registers 4
    .param p1, "monitoringType"    # I

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v1, p1}, Landroid/hardware/location/IGeofenceHardware;->getStatusOfMonitoringType(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 213
    :goto_6
    return v1

    .line 212
    :catch_7
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public pauseGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->pauseGeofence(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 340
    :goto_6
    return v0

    .line 338
    :catch_7
    move-exception v0

    .line 340
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .registers 5
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 400
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/location/IGeofenceHardware;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 404
    :goto_a
    return v0

    .line 402
    :catch_b
    move-exception v0

    .line 404
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public removeGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->removeGeofence(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 310
    :goto_6
    return v0

    .line 308
    :catch_7
    move-exception v0

    .line 310
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public resumeGeofence(III)Z
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransition"    # I

    .prologue
    .line 369
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IGeofenceHardware;->resumeGeofence(III)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 372
    :goto_6
    return v0

    .line 370
    :catch_7
    move-exception v0

    .line 372
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .registers 6
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IGeofenceHardware;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0

    .line 431
    if-eqz v0, :cond_10

    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_11

    .line 435
    :cond_10
    :goto_10
    return v0

    .line 433
    :catch_11
    move-exception v1

    goto :goto_10
.end method
