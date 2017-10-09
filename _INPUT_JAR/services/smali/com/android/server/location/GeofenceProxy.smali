.class public final Lcom/android/server/location/GeofenceProxy;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"


# static fields
.field private static final GEOFENCE_GPS_HARDWARE_CONNECTED:I = 0x4

.field private static final GEOFENCE_GPS_HARDWARE_DISCONNECTED:I = 0x5

.field private static final GEOFENCE_HARDWARE_CONNECTED:I = 0x2

.field private static final GEOFENCE_HARDWARE_DISCONNECTED:I = 0x3

.field private static final GEOFENCE_PROVIDER_CONNECTED:I = 0x1

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeofenceProvider"

.field private static final TAG:Ljava/lang/String; = "GeofenceProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFusedGeofenceHardware:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

.field private final mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRunnable:Ljava/lang/Runnable;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlaySwitchResId"    # I
    .param p3, "defaultServicePackageNameResId"    # I
    .param p4, "initialPackageNamesResId"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "gpsGeofence"    # Landroid/location/IGpsGeofenceHardware;
    .param p7, "fusedGeofenceHardware"    # Landroid/location/IFusedGeofenceHardware;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v1, Lcom/android/server/location/GeofenceProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceProxy$1;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v1, Lcom/android/server/location/GeofenceProxy$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceProxy$2;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 148
    new-instance v1, Lcom/android/server/location/GeofenceProxy$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceProxy$3;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy;->mContext:Landroid/content/Context;

    .line 84
    new-instance v1, Lcom/android/server/ServiceWatcher;

    const-string v3, "GeofenceProxy"

    const-string v4, "com.android.location.service.GeofenceProvider"

    iget-object v8, p0, Lcom/android/server/location/GeofenceProxy;->mRunnable:Ljava/lang/Runnable;

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 86
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    .line 87
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mFusedGeofenceHardware:Landroid/location/IFusedGeofenceHardware;

    .line 88
    invoke-direct {p0}, Lcom/android/server/location/GeofenceProxy;->bindHardwareGeofence()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GeofenceProxy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;
    .param p1, "x1"    # Landroid/hardware/location/IGeofenceHardware;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/location/GeofenceProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProviderLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GeofenceProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/location/GeofenceProxy;->setGpsGeofenceLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GeofenceProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/location/GeofenceProxy;->setFusedGeofenceLocked()V

    return-void
.end method

.method private bindGeofenceProvider()Z
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method private bindHardwareGeofence()V
    .registers 6

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 98
    return-void
.end method

.method public static createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlaySwitchResId"    # I
    .param p2, "defaultServicePackageNameResId"    # I
    .param p3, "initialPackageNamesResId"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "gpsGeofence"    # Landroid/location/IGpsGeofenceHardware;
    .param p6, "fusedGeofenceHardware"    # Landroid/location/IFusedGeofenceHardware;

    .prologue
    .line 69
    new-instance v0, Lcom/android/server/location/GeofenceProxy;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GeofenceProxy;-><init>(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)V

    .line 72
    .local v0, "proxy":Lcom/android/server/location/GeofenceProxy;
    invoke-direct {v0}, Lcom/android/server/location/GeofenceProxy;->bindGeofenceProvider()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 75
    .end local v0    # "proxy":Lcom/android/server/location/GeofenceProxy;
    :goto_12
    return-object v0

    .restart local v0    # "proxy":Lcom/android/server/location/GeofenceProxy;
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private setFusedGeofenceLocked()V
    .registers 4

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mFusedGeofenceHardware:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v1, v2}, Landroid/hardware/location/IGeofenceHardware;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 144
    :goto_7
    return-void

    .line 141
    :catch_8
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceProxy"

    const-string v2, "Error while connecting to GeofenceHardwareService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private setGeofenceHardwareInProviderLocked()V
    .registers 6

    .prologue
    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGeofenceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeofenceProvider;

    move-result-object v1

    .line 122
    .local v1, "provider":Landroid/location/IGeofenceProvider;
    if-eqz v1, :cond_11

    .line 123
    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v1, v2}, Landroid/location/IGeofenceProvider;->setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 128
    .end local v1    # "provider":Landroid/location/IGeofenceProvider;
    :cond_11
    :goto_11
    return-void

    .line 125
    :catch_12
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception: setGeofenceHardwareInProviderLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private setGpsGeofenceLocked()V
    .registers 4

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v1, v2}, Landroid/hardware/location/IGeofenceHardware;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 136
    :goto_7
    return-void

    .line 133
    :catch_8
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceProxy"

    const-string v2, "Error while connecting to GeofenceHardwareService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
