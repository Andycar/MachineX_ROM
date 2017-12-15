.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ApdrRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_UP_STEP_COUNT:I = 0x1f4

.field private static final DEFAULT_WAKE_UP_TIME_COUNT:I = 0x258

.field private static final STEP_COUNT_HIGH:I = 0x32

.field private static final STEP_COUNT_LOW:I = 0x1f4

.field private static final STEP_COUNT_MEDIUM:I = 0x12c

.field private static final TIME_COUNT_HIGH:I = 0x3c

.field private static final TIME_COUNT_LOW:I = 0x258

.field private static final TIME_COUNT_MEDIUM:I = 0x78

.field private static final TIME_SYNC_TIMER:I = 0x1c20


# instance fields
.field private mLppResolution:I

.field private mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSyncTime:Landroid/text/format/Time;

.field private mSyncTimeTask:Ljava/lang/Runnable;

.field private mWakeUpStepCount:I

.field private mWakeUpTimeCount:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 104
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    .line 107
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    .line 110
    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    .line 116
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    .line 120
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCurTimeToSensorHub()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private sendCurTimeToSensorHub()V
    .registers 5

    .prologue
    .line 626
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 627
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 628
    const-string v2, "GMT+00:00"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 631
    const/4 v2, 0x3

    new-array v0, v2, [B

    fill-array-data v0, :array_2c

    .line 632
    .local v0, "data":[B
    const/4 v2, 0x0

    iget v3, v1, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 633
    const/4 v2, 0x1

    iget v3, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 634
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->second:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 638
    return-void

    .line 631
    nop

    :array_2c
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 435
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 436
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 437
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 424
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 425
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 426
    return-void
.end method

.method public final enable()V
    .registers 2

    .prologue
    .line 389
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 390
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 397
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    .line 413
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 342
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Alert"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Hour"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Minute"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Second"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "doe"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TimeDifference"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IncrementEast"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IncrementNorth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "StayingArea"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 4

    .prologue
    .line 168
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 169
    .local v0, "packet":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 172
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 449
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 156
    const/16 v0, 0x1c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 365
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 377
    return-object p0
.end method

.method public final getSyncTime()Landroid/text/format/Time;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public gpsAvailable()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 610
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 612
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 615
    return-void
.end method

.method public final gpsBatchStarted()V
    .registers 5

    .prologue
    .line 585
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 587
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 591
    return-void
.end method

.method public gpsOffBatchStopped()V
    .registers 5

    .prologue
    .line 602
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 604
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 607
    return-void
.end method

.method public gpsOnBatchStopped()V
    .registers 5

    .prologue
    const/4 v3, 0x5

    .line 594
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    .line 596
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 599
    return-void
.end method

.method public gpsUnavailable()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 618
    const/4 v1, 0x1

    new-array v0, v1, [B

    aput-byte v2, v0, v2

    .line 620
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 623
    return-void
.end method

.method public final locationUpdate(Landroid/location/Location;)V
    .registers 20
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    double-to-int v7, v14

    .line 494
    .local v7, "lat":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    double-to-int v8, v14

    .line 495
    .local v8, "lon":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-int v3, v14

    .line 496
    .local v3, "alt":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    float-to-int v14, v14

    int-to-byte v2, v14

    .line 498
    .local v2, "acc":B
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 499
    .local v12, "t":Landroid/text/format/Time;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 500
    const-string v14, "GMT+00:00"

    invoke-virtual {v12, v14}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 503
    .local v4, "bun":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 504
    .local v10, "sat":B
    if-eqz v4, :cond_61

    .line 505
    const-string/jumbo v14, "satellites"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    int-to-byte v10, v14

    .line 506
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "satellites:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 509
    :cond_61
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    float-to-int v11, v14

    .line 512
    .local v11, "speed":I
    const/4 v6, 0x0

    .line 514
    .local v6, "dist":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    .line 515
    .local v9, "prov":Ljava/lang/String;
    const/4 v13, 0x0

    .line 516
    .local v13, "type":B
    if-eqz v9, :cond_7e

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    const-string v15, "gps"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16e

    .line 518
    const/4 v13, 0x1

    .line 531
    :cond_7e
    :goto_7e
    const/16 v14, 0x16

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 533
    .local v5, "data":Ljava/nio/ByteBuffer;
    const/4 v14, 0x4

    invoke-static {v7, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 534
    const/4 v14, 0x4

    invoke-static {v8, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 535
    const/4 v14, 0x4

    invoke-static {v3, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 536
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 537
    iget v14, v12, Landroid/text/format/Time;->hour:I

    int-to-byte v14, v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 538
    iget v14, v12, Landroid/text/format/Time;->minute:I

    int-to-byte v14, v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 539
    iget v14, v12, Landroid/text/format/Time;->second:I

    int-to-byte v14, v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 540
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 541
    const/4 v14, 0x2

    invoke-static {v11, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 542
    const/4 v14, 0x2

    invoke-static {v6, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 543
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 544
    const-string v14, "LPPApdrR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loc time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v14, "LPPApdrR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v14, "LPPApdrR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v14, 0x16

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCommonValueToSensorHub(B[B)Z

    .line 550
    return-void

    .line 519
    .end local v5    # "data":Ljava/nio/ByteBuffer;
    :cond_16e
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    const-string v15, "network"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17d

    .line 521
    const/4 v13, 0x2

    goto/16 :goto_7e

    .line 522
    :cond_17d
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    const-string v15, "fused"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18c

    .line 524
    const/4 v13, 0x3

    goto/16 :goto_7e

    .line 525
    :cond_18c
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    const-string v15, "GPS batch"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7e

    .line 527
    const/4 v13, 0x4

    goto/16 :goto_7e
.end method

.method public final parse([BI)I
    .registers 22
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 233
    move/from16 v13, p2

    .line 234
    .local v13, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, "names":[Ljava/lang/String;
    const-string v15, "LppApdr"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "parse:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p1

    array-length v15, v0

    sub-int/2addr v15, v13

    add-int/lit8 v15, v15, -0x1

    if-gez v15, :cond_36

    .line 238
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 239
    const/4 v14, -0x1

    .line 329
    :goto_35
    return v14

    .line 242
    :cond_36
    aget-byte v15, p1, v13

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_58

    .line 244
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    add-int/lit8 v13, v13, 0x1

    aget-byte v17, p1, v13

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 247
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 248
    add-int/lit8 v13, v13, 0x1

    move v14, v13

    goto :goto_35

    .line 251
    :cond_58
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .local v14, "tmpNext":I
    aget-byte v15, p1, v13

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_72

    .line 253
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 255
    const/4 v13, -0x1

    move/from16 v18, v14

    .end local v14    # "tmpNext":I
    .local v18, "tmpNext":I
    move v14, v13

    move/from16 v13, v18

    .end local v18    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    goto :goto_35

    .line 271
    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    :cond_72
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v3, p1, v14

    .line 272
    .local v3, "dataSize":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataSize:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 274
    if-gtz v3, :cond_99

    .line 275
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 277
    const/4 v14, -0x1

    goto :goto_35

    .line 281
    :cond_99
    move-object/from16 v0, p1

    array-length v15, v0

    sub-int/2addr v15, v13

    mul-int/lit8 v16, v3, 0x5

    add-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_d7

    .line 282
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "packet len:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " tmpNext:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 284
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 285
    const/4 v14, -0x1

    goto/16 :goto_35

    .line 288
    :cond_d7
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v5, p1, v13

    .line 289
    .local v5, "hour":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v9, p1, v14

    .line 290
    .local v9, "minute":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v11, p1, v13

    .line 291
    .local v11, "second":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v4, p1, v14

    .line 293
    .local v4, "doe":I
    new-array v12, v3, [J

    .line 294
    .local v12, "timeDiff":[J
    new-array v7, v3, [I

    .line 295
    .local v7, "incEast":[I
    new-array v8, v3, [I

    .line 296
    .local v8, "incNorth":[I
    new-array v2, v3, [I

    .line 298
    .local v2, "activityType":[I
    const/4 v6, 0x0

    .local v6, "i":I
    move v14, v13

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    :goto_f1
    if-ge v6, v3, :cond_14e

    .line 299
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "packet length:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  tmpNext:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 302
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v16, p1, v13

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/lit8 v15, v15, 0x64

    int-to-long v0, v15

    move-wide/from16 v16, v0

    aput-wide v16, v12, v6

    .line 303
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v15, p1, v14

    mul-int/lit8 v15, v15, 0xa

    aput v15, v7, v6

    .line 304
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v15, p1, v13

    mul-int/lit8 v15, v15, 0xa

    aput v15, v8, v6

    .line 305
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v15, p1, v14

    aput v15, v2, v6

    .line 298
    add-int/lit8 v6, v6, 0x1

    move v14, v13

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    goto :goto_f1

    .line 308
    :cond_14e
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 310
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 312
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 314
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 316
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 318
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 320
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 322
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 324
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 327
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v13, v14

    .line 329
    .end local v14    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    goto/16 :goto_35
.end method

.method public final sendSleepModeCmdToSensorHub([B)V
    .registers 7
    .param p1, "packet"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v2

    if-ltz v2, :cond_d

    if-eqz p1, :cond_d

    array-length v2, p1

    if-gtz v2, :cond_e

    .line 223
    :cond_d
    :goto_d
    return-void

    .line 217
    :cond_e
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    .line 218
    .local v0, "dataPacket":[B
    new-array v1, v3, [B

    aput-byte v3, v1, v4

    .line 219
    .local v1, "mode":[B
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 220
    array-length v2, v1

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 222
    const/16 v2, -0x4f

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v3

    invoke-super {p0, v2, v3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_d
.end method

.method public final setLppResolution(I)V
    .registers 7
    .param p1, "res"    # I

    .prologue
    const/16 v4, 0x1c

    const/16 v3, 0x17

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 461
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    .line 462
    if-nez p1, :cond_29

    .line 463
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    .line 464
    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    .line 474
    :cond_12
    :goto_12
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 479
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 483
    return-void

    .line 465
    :cond_29
    if-ne p1, v1, :cond_34

    .line 466
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    .line 467
    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_12

    .line 468
    :cond_34
    if-ne p1, v2, :cond_12

    .line 469
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    .line 470
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_12
.end method

.method public final setMagneticSensorOffset(III)V
    .registers 12
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "offsetZ"    # I

    .prologue
    const/4 v4, 0x2

    .line 565
    invoke-static {p1, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 566
    .local v1, "data1":[B
    invoke-static {p2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 567
    .local v2, "data2":[B
    invoke-static {p3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 568
    .local v3, "data3":[B
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 569
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 570
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 571
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 574
    const/16 v4, 0x17

    const/16 v5, 0x1c

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 578
    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    .line 194
    .local v1, "result":Z
    const/16 v2, 0x20

    if-ne p1, v2, :cond_17

    .line 195
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    .local v0, "resolution":I
    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    .line 199
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    .line 203
    .end local v0    # "resolution":I
    :goto_16
    return v1

    .line 201
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method
