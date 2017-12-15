.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$ExerciseLocationListenerTransport;,
        Landroid/location/LocationManager$GpsStatusListenerTransport;,
        Landroid/location/LocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final HIGH_POWER_REQUEST_CHANGE_ACTION:Ljava/lang/String; = "android.location.HIGH_POWER_REQUEST_CHANGE"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final MODE_CHANGED_ACTION:Ljava/lang/String; = "android.location.MODE_CHANGED"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExerciseLocationListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/ExerciseLocationListener;",
            "Landroid/location/LocationManager$ExerciseLocationListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

.field private final mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

.field private final mGpsStatus:Landroid/location/GpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$Listener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Landroid/location/LocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$NmeaListener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/location/ILocationManager;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    .line 68
    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    .line 1770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mExerciseLocationListeners:Ljava/util/HashMap;

    .line 312
    iput-object p2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 313
    iput-object p1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 314
    new-instance v0, Landroid/location/GpsMeasurementListenerTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/GpsMeasurementListenerTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    .line 315
    new-instance v0, Landroid/location/GpsNavigationMessageListenerTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/GpsNavigationMessageListenerTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    .line 317
    return-void
.end method

.method static synthetic access$100(Landroid/location/LocationManager;)Landroid/location/ILocationManager;
    .registers 2
    .param p0, "x0"    # Landroid/location/LocationManager;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;
    .registers 2
    .param p0, "x0"    # Landroid/location/LocationManager;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method private addExerciseLocationListener(Landroid/location/ExerciseLocationListener;)Z
    .registers 7
    .param p1, "listener"    # Landroid/location/ExerciseLocationListener;

    .prologue
    .line 1807
    iget-object v3, p0, Landroid/location/LocationManager;->mExerciseLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1809
    const/4 v1, 0x1

    .line 1822
    :cond_9
    :goto_9
    return v1

    .line 1812
    :cond_a
    :try_start_a
    new-instance v2, Landroid/location/LocationManager$ExerciseLocationListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$ExerciseLocationListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/ExerciseLocationListener;)V

    .line 1813
    .local v2, "transport":Landroid/location/LocationManager$ExerciseLocationListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->addExerciseLocationListener(Landroid/location/IExerciseLocationListener;Ljava/lang/String;)Z

    move-result v1

    .line 1814
    .local v1, "result":Z
    if-eqz v1, :cond_9

    .line 1815
    iget-object v3, p0, Landroid/location/LocationManager;->mExerciseLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_23

    goto :goto_9

    .line 1817
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$ExerciseLocationListenerTransport;
    :catch_23
    move-exception v0

    .line 1818
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerExerciseLocationListeners: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1819
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_9
.end method

.method private static checkCriteria(Landroid/location/Criteria;)V
    .registers 4
    .param p0, "criteria"    # Landroid/location/Criteria;

    .prologue
    .line 1686
    if-nez p0, :cond_1b

    .line 1687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1689
    :cond_1b
    return-void
.end method

.method private static checkGeofence(Landroid/location/Geofence;)V
    .registers 4
    .param p0, "fence"    # Landroid/location/Geofence;

    .prologue
    .line 1713
    if-nez p0, :cond_1b

    .line 1714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid geofence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1716
    :cond_1b
    return-void
.end method

.method private static checkListener(Landroid/location/LocationListener;)V
    .registers 4
    .param p0, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 1692
    if-nez p0, :cond_1b

    .line 1693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1695
    :cond_1b
    return-void
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1698
    if-nez p1, :cond_1b

    .line 1699
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1701
    :cond_1b
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pending intent must be targeted to package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_36

    .line 1705
    throw v0

    .line 1707
    :cond_36
    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1710
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3b
    return-void
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .registers 4
    .param p0, "provider"    # Ljava/lang/String;

    .prologue
    .line 1680
    if-nez p0, :cond_1b

    .line 1681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1683
    :cond_1b
    return-void
.end method

.method private createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 320
    new-instance v0, Landroid/location/LocationProvider;

    invoke-direct {v0, p1, p2}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    return-object v0
.end method

.method private removeExerciseLocationListener(Landroid/location/ExerciseLocationListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/location/ExerciseLocationListener;

    .prologue
    .line 1834
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mExerciseLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$ExerciseLocationListenerTransport;

    .line 1835
    .local v1, "transport":Landroid/location/LocationManager$ExerciseLocationListenerTransport;
    if-eqz v1, :cond_f

    .line 1836
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1841
    .end local v1    # "transport":Landroid/location/LocationManager$ExerciseLocationListenerTransport;
    :cond_f
    :goto_f
    return-void

    .line 1838
    :catch_10
    move-exception v0

    .line 1839
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterExerciseLocationListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 861
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Landroid/location/LocationManager;->wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;

    move-result-object v2

    .line 867
    .local v2, "transport":Landroid/location/LocationManager$ListenerTransport;
    :try_start_a
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, p1, v2, p4, v1}, Landroid/location/ILocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 871
    :goto_f
    return-void

    .line 868
    :catch_10
    move-exception v0

    .line 869
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;
    .registers 6
    .param p1, "listener"    # Landroid/location/LocationListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 847
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 854
    :goto_3
    return-object v0

    .line 848
    :cond_4
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 849
    :try_start_7
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager$ListenerTransport;

    .line 850
    .local v0, "transport":Landroid/location/LocationManager$ListenerTransport;
    if-nez v0, :cond_16

    .line 851
    new-instance v0, Landroid/location/LocationManager$ListenerTransport;

    .end local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    invoke-direct {v0, p0, p1, p2}, Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 853
    .restart local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :cond_16
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    monitor-exit v2

    goto :goto_3

    .line 855
    .end local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public addGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "fence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1016
    invoke-direct {p0, p3}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1017
    invoke-static {p2}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1020
    :try_start_6
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 1024
    :goto_11
    return-void

    .line 1021
    :catch_12
    move-exception v0

    .line 1022
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public addGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;

    .prologue
    .line 1587
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    invoke-virtual {v0, p1}, Landroid/location/GpsMeasurementListenerTransport;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;

    .prologue
    .line 1610
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    invoke-virtual {v0, p1}, Landroid/location/GpsNavigationMessageListenerTransport;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .registers 7
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;

    .prologue
    .line 1498
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1500
    const/4 v1, 0x1

    .line 1513
    :cond_9
    :goto_9
    return v1

    .line 1503
    :cond_a
    :try_start_a
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V

    .line 1504
    .local v2, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1505
    .local v1, "result":Z
    if-eqz v1, :cond_9

    .line 1506
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_23

    goto :goto_9

    .line 1508
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :catch_23
    move-exception v0

    .line 1509
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1510
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_9
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .registers 7
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    .prologue
    .line 1544
    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1546
    const/4 v1, 0x1

    .line 1559
    :cond_9
    :goto_9
    return v1

    .line 1549
    :cond_a
    :try_start_a
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V

    .line 1550
    .local v2, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1551
    .local v1, "result":Z
    if-eqz v1, :cond_9

    .line 1552
    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_23

    goto :goto_9

    .line 1554
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :catch_23
    move-exception v0

    .line 1555
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1556
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_9
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .registers 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 967
    invoke-direct {p0, p8}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 968
    const-wide/16 v4, 0x0

    cmp-long v3, p6, v4

    if-gez v3, :cond_e

    const-wide p6, 0x7fffffffffffffffL

    .line 970
    :cond_e
    invoke-static {p1, p2, p3, p4, p5}, Landroid/location/Geofence;->createCircle(DDF)Landroid/location/Geofence;

    move-result-object v1

    .line 971
    .local v1, "fence":Landroid/location/Geofence;
    new-instance v3, Landroid/location/LocationRequest;

    invoke-direct {v3}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v3, p6, p7}, Landroid/location/LocationRequest;->setExpireIn(J)Landroid/location/LocationRequest;

    move-result-object v2

    .line 973
    .local v2, "request":Landroid/location/LocationRequest;
    :try_start_1b
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v1, p8, v4}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_27

    .line 977
    :goto_26
    return-void

    .line 974
    :catch_27
    move-exception v0

    .line 975
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .registers 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requiresNetwork"    # Z
    .param p3, "requiresSatellite"    # Z
    .param p4, "requiresCell"    # Z
    .param p5, "hasMonetaryCost"    # Z
    .param p6, "supportsAltitude"    # Z
    .param p7, "supportsSpeed"    # Z
    .param p8, "supportsBearing"    # Z
    .param p9, "powerRequirement"    # I
    .param p10, "accuracy"    # I

    .prologue
    .line 1208
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 1211
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    const-string v1, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider name contains illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1216
    :cond_36
    :try_start_36
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, v0}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    .line 1220
    :goto_3b
    return-void

    .line 1217
    :catch_3c
    move-exception v10

    .line 1218
    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1327
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1331
    :goto_5
    return-void

    .line 1328
    :catch_6
    move-exception v0

    .line 1329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1289
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderLocation(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1293
    :goto_5
    return-void

    .line 1290
    :catch_6
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1367
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderStatus(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1371
    :goto_5
    return-void

    .line 1368
    :catch_6
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 336
    :goto_6
    return-object v1

    .line 333
    :catch_7
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .prologue
    .line 423
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 425
    :try_start_3
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v1

    .line 429
    :goto_9
    return-object v1

    .line 426
    :catch_a
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .registers 3
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 1637
    if-nez p1, :cond_7

    .line 1638
    new-instance p1, Landroid/location/GpsStatus;

    .end local p1    # "status":Landroid/location/GpsStatus;
    invoke-direct {p1}, Landroid/location/GpsStatus;-><init>()V

    .line 1640
    .restart local p1    # "status":Landroid/location/GpsStatus;
    :cond_7
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {p1, v0}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GpsStatus;)V

    .line 1641
    return-object p1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1178
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1179
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "packageName":Ljava/lang/String;
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {p1, v4, v5, v3, v6}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1184
    .local v2, "request":Landroid/location/LocationRequest;
    :try_start_11
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result-object v3

    .line 1187
    :goto_17
    return-object v3

    .line 1185
    :catch_18
    move-exception v0

    .line 1186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public getLastLocation()Landroid/location/Location;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1150
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "packageName":Ljava/lang/String;
    :try_start_7
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_f

    move-result-object v2

    .line 1156
    :goto_e
    return-object v2

    .line 1154
    :catch_f
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 369
    :try_start_4
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    .line 370
    .local v1, "properties":Lcom/android/internal/location/ProviderProperties;
    if-nez v1, :cond_d

    .line 377
    .end local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :goto_c
    return-object v2

    .line 373
    .restart local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_d
    invoke-direct {p0, p1, v1}, Landroid/location/LocationManager;->createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result-object v2

    goto :goto_c

    .line 374
    .end local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :catch_12
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 393
    :try_start_3
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v1

    .line 397
    :goto_9
    return-object v1

    .line 394
    :catch_a
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getProviders(Z)Ljava/util/List;
    .registers 6
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 348
    :try_start_1
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move-result-object v1

    .line 352
    :goto_8
    return-object v1

    .line 349
    :catch_9
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1125
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1128
    :try_start_3
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    move-result v1

    .line 1131
    :goto_9
    return v1

    .line 1129
    :catch_a
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public removeAllGeofences(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1093
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1094
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "packageName":Ljava/lang/String;
    :try_start_9
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1101
    :goto_f
    return-void

    .line 1098
    :catch_10
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeExcersiceLocationUpdates(Landroid/location/ExerciseLocationListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/location/ExerciseLocationListener;

    .prologue
    .line 1761
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mExerciseLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$ExerciseLocationListenerTransport;

    .line 1762
    .local v1, "transport":Landroid/location/LocationManager$ExerciseLocationListenerTransport;
    if-eqz v1, :cond_f

    .line 1763
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1768
    .end local v1    # "transport":Landroid/location/LocationManager$ExerciseLocationListenerTransport;
    :cond_f
    :goto_f
    return-void

    .line 1765
    :catch_10
    move-exception v0

    .line 1766
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterExerciseLocationListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1070
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1071
    invoke-static {p1}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1072
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "packageName":Ljava/lang/String;
    :try_start_c
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1, p2, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 1079
    :goto_11
    return-void

    .line 1076
    :catch_12
    move-exception v0

    .line 1077
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public removeGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    invoke-virtual {v0, p1}, Landroid/location/GpsMeasurementListenerTransport;->remove(Ljava/lang/Object;)V

    .line 1599
    return-void
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;

    .prologue
    .line 1622
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    invoke-virtual {v0, p1}, Landroid/location/GpsNavigationMessageListenerTransport;->remove(Ljava/lang/Object;)V

    .line 1623
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .registers 6
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;

    .prologue
    .line 1523
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    .line 1524
    .local v1, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_f

    .line 1525
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1530
    .end local v1    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_f
    :goto_f
    return-void

    .line 1527
    :catch_10
    move-exception v0

    .line 1528
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    .prologue
    .line 1569
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    .line 1570
    .local v1, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_f

    .line 1571
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1576
    .end local v1    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_f
    :goto_f
    return-void

    .line 1573
    :catch_10
    move-exception v0

    .line 1574
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1044
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "packageName":Ljava/lang/String;
    :try_start_9
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1051
    :goto_f
    return-void

    .line 1048
    :catch_10
    move-exception v0

    .line 1049
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1234
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1238
    :goto_5
    return-void

    .line 1235
    :catch_6
    move-exception v0

    .line 1236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 908
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 909
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, "packageName":Ljava/lang/String;
    :try_start_9
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    .line 916
    :goto_f
    return-void

    .line 913
    :catch_10
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 883
    invoke-static {p1}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 884
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 888
    :try_start_c
    iget-object v3, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$ListenerTransport;

    .line 889
    .local v2, "transport":Landroid/location/LocationManager$ListenerTransport;
    monitor-exit v4

    .line 890
    if-nez v2, :cond_1b

    .line 897
    :goto_17
    return-void

    .line 889
    .end local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_18
    move-exception v3

    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw v3

    .line 893
    .restart local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :cond_1b
    :try_start_1b
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_17

    .line 894
    :catch_22
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public requestExerciseLocationUpdates(IILandroid/location/ExerciseLocationListener;)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "updateRateMs"    # I
    .param p3, "listener"    # Landroid/location/ExerciseLocationListener;

    .prologue
    .line 1735
    if-eqz p3, :cond_9

    .line 1736
    invoke-direct {p0, p3}, Landroid/location/LocationManager;->addExerciseLocationListener(Landroid/location/ExerciseLocationListener;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1746
    :goto_8
    return-void

    .line 1741
    :cond_9
    if-gez p2, :cond_c

    const/4 p2, 0x0

    .line 1742
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->requestExerciseLocationUpdates(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_8

    .line 1743
    :catch_12
    move-exception v0

    .line 1744
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public requestFlushExcersiceLocation()V
    .registers 4

    .prologue
    .line 1850
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->requestFlushExerciseLocation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1854
    :goto_5
    return-void

    .line 1851
    :catch_6
    move-exception v0

    .line 1852
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in requestFlushExcersiceLocation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 645
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 646
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 648
    const/4 v1, 0x0

    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 650
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 651
    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 10
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    .line 517
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 518
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 520
    const/4 v1, 0x0

    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 522
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 523
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x0

    .line 842
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 843
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 844
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 5
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 815
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 816
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 817
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 547
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 549
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 550
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 455
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 457
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 459
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, p5, v2, v2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 460
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    .line 485
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 486
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 488
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 490
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 491
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    .line 747
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 748
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 750
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 752
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 753
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 9
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 702
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 703
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 705
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 707
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 708
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    .line 724
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 727
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 729
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 730
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 673
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 674
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 676
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 678
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 679
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1657
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1660
    :goto_6
    return v1

    .line 1658
    :catch_7
    move-exception v0

    .line 1659
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendExtraCommand: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1660
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sendNiResponse(II)Z
    .registers 6
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .prologue
    .line 1672
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->sendNiResponse(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1675
    :goto_6
    return v1

    .line 1673
    :catch_7
    move-exception v0

    .line 1674
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendNiResponse: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1675
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1309
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1313
    :goto_5
    return-void

    .line 1310
    :catch_6
    move-exception v0

    .line 1311
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 1257
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete location object, missing timestamp or accuracy? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_38

    .line 1262
    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    invoke-virtual {p2}, Landroid/location/Location;->makeComplete()V

    .line 1271
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_32
    :try_start_32
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_39

    .line 1275
    :goto_37
    return-void

    .line 1266
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_38
    throw v0

    .line 1272
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_39
    move-exception v0

    .line 1273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J

    .prologue
    .line 1349
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/location/ILocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1353
    :goto_9
    return-void

    .line 1350
    :catch_a
    move-exception v6

    .line 1351
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "LocationManager"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
