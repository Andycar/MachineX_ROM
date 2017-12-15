.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationMgr:Landroid/location/LocationManager;

.field private mLooper:Landroid/os/Looper;

.field private mPassiveListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 73
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLocationMgr:Landroid/location/LocationManager;

    .line 75
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    .line 76
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mPassiveListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    .line 94
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mPassiveListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLocationMgr:Landroid/location/LocationManager;

    .line 96
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLocationMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mPassiveListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BBB[B)Z
    .registers 6
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
    .param p1, "x1"    # B
    .param p2, "x2"    # B
    .param p3, "x3"    # B
    .param p4, "x4"    # [B

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BBB[B)Z
    .registers 6
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
    .param p1, "x1"    # B
    .param p2, "x2"    # B
    .param p3, "x3"    # B
    .param p4, "x4"    # [B

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 471
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 472
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 473
    return-void
.end method

.method public final disable()V
    .registers 5

    .prologue
    .line 445
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 446
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 462
    return-void
.end method

.method public final enable()V
    .registers 5

    .prologue
    .line 416
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 417
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 434
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 130
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DataCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LatitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LongitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AltitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PressureArray"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "StepCountDiffArray"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PedoDistanceDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PedoSpeedArray"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SpeedArray"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 486
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 117
    const/16 v0, 0x2e

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 392
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 404
    return-object p0
.end method

.method public final parse([BI)I
    .registers 41
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 191
    move/from16 v27, p2

    .line 193
    .local v27, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v20

    .line 196
    .local v20, "names":[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    sub-int v29, v29, v27

    add-int/lit8 v29, v29, -0x6

    if-gez v29, :cond_1d

    .line 197
    sget-object v29, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 198
    const/16 v28, -0x1

    .line 381
    :goto_1c
    return v28

    .line 202
    :cond_1d
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v29

    const/16 v34, 0x8

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    aput-byte v36, v34, v35

    const/16 v35, 0x1

    const/16 v36, 0x0

    aput-byte v36, v34, v35

    const/16 v35, 0x2

    const/16 v36, 0x0

    aput-byte v36, v34, v35

    const/16 v35, 0x3

    const/16 v36, 0x0

    aput-byte v36, v34, v35

    const/16 v35, 0x4

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .local v28, "tmpNext":I
    aget-byte v36, p1, v27

    aput-byte v36, v34, v35

    const/16 v35, 0x5

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v36, p1, v28

    aput-byte v36, v34, v35

    const/16 v35, 0x6

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v36, p1, v27

    aput-byte v36, v34, v35

    const/16 v35, 0x7

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v36, p1, v28

    aput-byte v36, v34, v35

    invoke-static/range {v34 .. v34}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v34

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v6

    .line 216
    .local v6, "baseTimeStamp":J
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v35, p1, v27

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v35, p1, v28

    aput-byte v35, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 223
    .local v11, "dataSize":I
    if-gtz v11, :cond_ac

    .line 224
    sget-object v29, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 226
    const/16 v28, -0x1

    goto/16 :goto_1c

    .line 230
    :cond_ac
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    sub-int v29, v29, v27

    mul-int/lit8 v34, v11, 0x15

    sub-int v29, v29, v34

    if-gez v29, :cond_c6

    .line 231
    sget-object v29, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 232
    const/16 v28, -0x1

    goto/16 :goto_1c

    .line 237
    :cond_c6
    new-array v0, v11, [J

    move-object/from16 v26, v0

    .line 238
    .local v26, "timeStamp":[J
    new-array v13, v11, [D

    .line 239
    .local v13, "latitude":[D
    new-array v0, v11, [D

    move-object/from16 v18, v0

    .line 240
    .local v18, "longitude":[D
    new-array v4, v11, [F

    .line 241
    .local v4, "altitude":[F
    new-array v0, v11, [F

    move-object/from16 v23, v0

    .line 242
    .local v23, "pressure":[F
    new-array v0, v11, [J

    move-object/from16 v25, v0

    .line 243
    .local v25, "stepCountDiff":[J
    const-wide/16 v32, 0x0

    .line 244
    .local v32, "totalStepCount":J
    new-array v0, v11, [D

    move-object/from16 v21, v0

    .line 245
    .local v21, "pedoDistanceDiff":[D
    const-wide/16 v30, 0x0

    .line 246
    .local v30, "totalDistance":D
    new-array v0, v11, [D

    move-object/from16 v22, v0

    .line 247
    .local v22, "pedoSpeed":[D
    new-array v0, v11, [F

    move-object/from16 v24, v0

    .line 249
    .local v24, "speed":[F
    const/4 v12, 0x0

    .local v12, "i":I
    move/from16 v28, v27

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    :goto_ed
    if-ge v12, v11, :cond_38b

    .line 252
    mul-int/lit16 v0, v12, 0x3e8

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v34, v34, v6

    aput-wide v34, v26, v12

    .line 255
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v5, p1, v28

    .line 256
    .local v5, "byte1":B
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v8, p1, v27

    .line 257
    .local v8, "byte2":B
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v9, p1, v28

    .line 258
    .local v9, "byte3":B
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v10, p1, v27

    .line 260
    .local v10, "byte4":B
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v19, p1, v28

    .line 262
    .local v19, "midByte":B
    and-int/lit16 v0, v5, 0x80

    move/from16 v29, v0

    const/16 v34, 0x80

    move/from16 v0, v29

    move/from16 v1, v34

    if-ne v0, v1, :cond_310

    .line 263
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, -0x1

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    const/16 v35, -0x1

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    const/16 v35, -0x1

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    aput-byte v5, v29, v34

    const/16 v34, 0x4

    aput-byte v8, v29, v34

    const/16 v34, 0x5

    aput-byte v9, v29, v34

    const/16 v34, 0x6

    aput-byte v10, v29, v34

    const/16 v34, 0x7

    aput-byte v19, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v34

    const/16 v29, 0x4

    shr-long v14, v34, v29

    .line 286
    .local v14, "lat":J
    :goto_156
    long-to-double v0, v14

    move-wide/from16 v34, v0

    const-wide v36, 0x4197d78400000000L    # 1.0E8

    div-double v34, v34, v36

    aput-wide v34, v13, v12

    .line 289
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v5, p1, v27

    .line 290
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v8, p1, v28

    .line 291
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v9, p1, v27

    .line 292
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v10, p1, v28

    .line 294
    and-int/lit8 v29, v19, 0x8

    const/16 v34, 0x8

    move/from16 v0, v29

    move/from16 v1, v34

    if-ne v0, v1, :cond_34c

    .line 295
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, -0x1

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    const/16 v35, -0x1

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    const/16 v35, -0x1

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    and-int/lit8 v35, v19, 0xf

    move/from16 v0, v35

    or-int/lit16 v0, v0, 0xf0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-byte v0, v0

    move/from16 v35, v0

    aput-byte v35, v29, v34

    const/16 v34, 0x4

    aput-byte v5, v29, v34

    const/16 v34, 0x5

    aput-byte v8, v29, v34

    const/16 v34, 0x6

    aput-byte v9, v29, v34

    const/16 v34, 0x7

    aput-byte v10, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v16

    .line 318
    .local v16, "lon":J
    :goto_1bf
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x4197d78400000000L    # 1.0E8

    div-double v34, v34, v36

    aput-wide v34, v18, v12

    .line 321
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v35, p1, v27

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v35, p1, v28

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v35, p1, v27

    aput-byte v35, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v29, v0

    aput v29, v4, v12

    .line 329
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v35, p1, v28

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v35, p1, v27

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v35, p1, v28

    aput-byte v35, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x408f400000000000L    # 1000.0

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v29, v0

    aput v29, v23, v12

    .line 337
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v29, p1, v27

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    .line 338
    aput-wide v32, v25, v12

    .line 341
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v35, p1, v28

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v35, p1, v27

    aput-byte v35, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    div-double v34, v34, v36

    add-double v30, v30, v34

    .line 347
    aput-wide v30, v21, v12

    .line 350
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v5, p1, v28

    .line 351
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v19, p1, v27

    .line 352
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    aput-byte v5, v29, v34

    const/16 v34, 0x3

    aput-byte v19, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    shr-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    div-double v34, v34, v36

    aput-wide v34, v22, v12

    .line 360
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    and-int/lit8 v35, v19, 0xf

    move/from16 v0, v35

    int-to-byte v0, v0

    move/from16 v35, v0

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v35, p1, v28

    aput-byte v35, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v29, v0

    aput v29, v24, v12

    .line 249
    add-int/lit8 v12, v12, 0x1

    move/from16 v28, v27

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    goto/16 :goto_ed

    .line 274
    .end local v14    # "lat":J
    .end local v16    # "lon":J
    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    :cond_310
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    aput-byte v5, v29, v34

    const/16 v34, 0x4

    aput-byte v8, v29, v34

    const/16 v34, 0x5

    aput-byte v9, v29, v34

    const/16 v34, 0x6

    aput-byte v10, v29, v34

    const/16 v34, 0x7

    aput-byte v19, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v34

    const/16 v29, 0x4

    shr-long v14, v34, v29

    .restart local v14    # "lat":J
    goto/16 :goto_156

    .line 307
    :cond_34c
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x2

    const/16 v35, 0x0

    aput-byte v35, v29, v34

    const/16 v34, 0x3

    and-int/lit8 v35, v19, 0xf

    move/from16 v0, v35

    int-to-byte v0, v0

    move/from16 v35, v0

    aput-byte v35, v29, v34

    const/16 v34, 0x4

    aput-byte v5, v29, v34

    const/16 v34, 0x5

    aput-byte v8, v29, v34

    const/16 v34, 0x6

    aput-byte v9, v29, v34

    const/16 v34, 0x7

    aput-byte v10, v29, v34

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v16

    .restart local v16    # "lon":J
    goto/16 :goto_1bf

    .line 368
    .end local v5    # "byte1":B
    .end local v8    # "byte2":B
    .end local v9    # "byte3":B
    .end local v10    # "byte4":B
    .end local v14    # "lat":J
    .end local v16    # "lon":J
    .end local v19    # "midByte":B
    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    :cond_38b
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 369
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 370
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 371
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 372
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 373
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 374
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 375
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 376
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 377
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v34, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v34

    aget-object v34, v20, v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 379
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v27, v28

    .line 381
    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    goto/16 :goto_1c
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 14
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 153
    const/4 v3, 0x1

    .line 154
    .local v3, "result":Z
    const/16 v4, 0x3f

    if-ne p1, v4, :cond_51

    .line 155
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, "dataType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exercise data type = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 160
    .local v2, "manager":Landroid/location/LocationManager;
    const-string v4, "gps"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 171
    .local v1, "gpsStatus":Z
    const/16 v7, 0x17

    const/16 v8, 0x2e

    const/16 v9, 0x25

    new-array v10, v5, [B

    if-ne v1, v5, :cond_4f

    move v4, v5

    :goto_48
    int-to-byte v4, v4

    aput-byte v4, v10, v6

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 179
    .end local v0    # "dataType":I
    .end local v1    # "gpsStatus":Z
    .end local v2    # "manager":Landroid/location/LocationManager;
    :goto_4e
    return v3

    .restart local v0    # "dataType":I
    .restart local v1    # "gpsStatus":Z
    .restart local v2    # "manager":Landroid/location/LocationManager;
    :cond_4f
    move v4, v6

    .line 171
    goto :goto_48

    .line 177
    .end local v0    # "dataType":I
    .end local v1    # "gpsStatus":Z
    .end local v2    # "manager":Landroid/location/LocationManager;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_51
    const/4 v3, 0x0

    goto :goto_4e
.end method
