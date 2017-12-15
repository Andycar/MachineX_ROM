.class public Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICurrentPositionObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;


# static fields
.field private static final ACCURACY_BEST_THRESHOLE:F = 16.0f

.field private static final ACCURACY_GOOD_THRESHOLE:F = 50.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mWpsListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 134
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    .line 208
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    .line 89
    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerWpsListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V

    return-void
.end method

.method private clearTimeOutCheckService()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    .line 460
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 461
    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 462
    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 464
    :cond_e
    return-void
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_6

    .line 345
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_5
.end method

.method private registerGpsListener()V
    .registers 8

    .prologue
    .line 470
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 471
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 476
    :goto_9
    return-void

    .line 474
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_9
.end method

.method private registerWpsListener()V
    .registers 8

    .prologue
    .line 482
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 483
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 490
    :cond_9
    :goto_9
    return-void

    .line 486
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 487
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_9
.end method

.method private unregisterGpsListener()V
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 497
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 501
    :goto_9
    return-void

    .line 500
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_9
.end method

.method private unregisterWpsListener()V
    .registers 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 508
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 512
    :goto_9
    return-void

    .line 511
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_9
.end method

.method private updateEmptyPosition()V
    .registers 16

    .prologue
    .line 444
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v1, :cond_5

    .line 453
    :goto_4
    return-void

    .line 447
    :cond_5
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    .line 448
    .local v0, "emptyPosition":Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_4
.end method

.method private updateGpsPosition()V
    .registers 16

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_5

    .line 423
    :goto_4
    return-void

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 418
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_4
.end method

.method private updateWpsPosition()V
    .registers 16

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_5

    .line 438
    :goto_4
    return-void

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 433
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_4
.end method


# virtual methods
.method public final disable()V
    .registers 5

    .prologue
    .line 312
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 313
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 334
    :cond_9
    :goto_9
    return-void

    .line 317
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_9

    .line 321
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 325
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    goto :goto_9
.end method

.method public final enable(I)V
    .registers 6
    .param p1, "duration"    # I

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 271
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_c

    .line 272
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 306
    :goto_b
    return-void

    .line 276
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_16

    .line 277
    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_b

    .line 281
    :cond_16
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_22

    .line 282
    const-string v0, "mEnable value is true."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 286
    :cond_22
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 289
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 290
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 291
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 295
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 296
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 299
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 104
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_15

    .line 108
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 111
    :cond_15
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 112
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 113
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 116
    return-void
.end method

.method public isEnable()Z
    .registers 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    return v0
.end method

.method public final notifyCurrentPositionObserver()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_5

    .line 408
    :goto_4
    return-void

    .line 393
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_30

    .line 396
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_20

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateGpsPosition()V

    goto :goto_4

    .line 398
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_4

    .line 401
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_4

    .line 403
    :cond_30
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_4

    .line 406
    :cond_3c
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_4
.end method

.method public final occurTimeOut()V
    .registers 1

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    .line 524
    return-void
.end method

.method public final registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .registers 2
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 368
    return-void
.end method

.method public final terminateManager()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 127
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 131
    :goto_9
    return-void

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_9
.end method

.method public final unregisterCurrentPositionObserver()V
    .registers 2

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 379
    return-void
.end method
