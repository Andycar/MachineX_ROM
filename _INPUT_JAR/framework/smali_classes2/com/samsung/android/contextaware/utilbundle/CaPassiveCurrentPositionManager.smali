.class public Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
.implements Lcom/samsung/android/contextaware/utilbundle/IPassiveCurrentPositionObservable;


# static fields
.field private static final ACCURACY_GOOD_THRESHOLE:F = 4800.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private mSatelliteCount:I

.field private final m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    .line 127
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    .line 180
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    .line 79
    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method private registerGpsListener()V
    .registers 8

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 322
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 329
    :goto_9
    return-void

    .line 326
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    goto :goto_9
.end method

.method public static sendPositionToSensorHub(I[IDDDDFFI)I
    .registers 21
    .param p0, "type"    # I
    .param p1, "utcTime"    # [I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "distance"    # D
    .param p10, "speed"    # F
    .param p11, "accuracy"    # F
    .param p12, "satelliteCount"    # I

    .prologue
    .line 371
    const/16 v4, 0x16

    new-array v2, v4, [B

    .line 372
    .local v2, "dataPacket":[B
    const/4 v3, 0x0

    .line 374
    .local v3, "size":I
    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, p2

    double-to-int v4, v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 377
    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, p4

    double-to-int v4, v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x4

    const/4 v6, 0x4

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 380
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, p6

    double-to-int v4, v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x4

    const/4 v6, 0x4

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 383
    move/from16 v0, p11

    float-to-int v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x4

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 385
    const/4 v4, 0x0

    aget v4, p1, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 387
    const/4 v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 389
    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 391
    const/4 v4, 0x1

    move/from16 v0, p12

    invoke-static {v0, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 393
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v4, v4, p10

    float-to-int v4, v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 395
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, p8

    double-to-int v4, v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 398
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 401
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_c6

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v4

    return v4

    :array_c6
    .array-data 1
        -0x3ft
        0x16t
    .end array-data
.end method

.method private unregisterGpsListener()V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 336
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 342
    :goto_9
    return-void

    .line 340
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    goto :goto_9
.end method


# virtual methods
.method public final disable()V
    .registers 5

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 241
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 265
    :cond_9
    :goto_9
    return-void

    .line 245
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_9

    .line 249
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 251
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    goto :goto_9
.end method

.method public final enable()V
    .registers 5

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 202
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 234
    :cond_9
    :goto_9
    return-void

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_14

    .line 207
    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 211
    :cond_14
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-nez v0, :cond_9

    .line 215
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    .line 219
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 220
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 222
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    if-nez p1, :cond_3

    .line 109
    :goto_2
    return-void

    .line 98
    :cond_3
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_16

    .line 102
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 105
    :cond_16
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 106
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    goto :goto_2
.end method

.method public final notifyPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;)V
    .registers 19
    .param p1, "position"    # Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    if-nez v2, :cond_7

    .line 315
    :goto_6
    return-void

    .line 309
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v16

    invoke-interface/range {v3 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;->updatePassiveCurrentPosition(I[IDDDDFFI)V

    goto :goto_6
.end method

.method public final registerPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V
    .registers 2
    .param p1, "observer"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .line 279
    return-void
.end method

.method public final terminateManager()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 120
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 124
    :goto_9
    return-void

    .line 123
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_9
.end method

.method public final unregisterPassiveCurrentPositionObserver()V
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .line 291
    return-void
.end method
