.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F


# instance fields
.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 369
    return-void
.end method

.method public static getAltitude(FF)F
    .registers 10
    .param p0, "p0"    # F
    .param p1, "p"    # F

    .prologue
    .line 1304
    const v0, 0x3e42dcae

    .line 1305
    .local v0, "coef":F
    const v1, 0x472d2a00    # 44330.0f

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p1, p0

    float-to-double v4, v3

    const-wide v6, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .registers 33
    .param p0, "angleChange"    # [F
    .param p1, "R"    # [F
    .param p2, "prevR"    # [F

    .prologue
    .line 1335
    const/4 v11, 0x0

    .local v11, "rd1":F
    const/4 v12, 0x0

    .local v12, "rd4":F
    const/4 v13, 0x0

    .local v13, "rd6":F
    const/4 v14, 0x0

    .local v14, "rd7":F
    const/4 v15, 0x0

    .line 1336
    .local v15, "rd8":F
    const/16 v16, 0x0

    .local v16, "ri0":F
    const/16 v17, 0x0

    .local v17, "ri1":F
    const/16 v18, 0x0

    .local v18, "ri2":F
    const/16 v19, 0x0

    .local v19, "ri3":F
    const/16 v20, 0x0

    .local v20, "ri4":F
    const/16 v21, 0x0

    .local v21, "ri5":F
    const/16 v22, 0x0

    .local v22, "ri6":F
    const/16 v23, 0x0

    .local v23, "ri7":F
    const/16 v24, 0x0

    .line 1337
    .local v24, "ri8":F
    const/4 v2, 0x0

    .local v2, "pri0":F
    const/4 v3, 0x0

    .local v3, "pri1":F
    const/4 v4, 0x0

    .local v4, "pri2":F
    const/4 v5, 0x0

    .local v5, "pri3":F
    const/4 v6, 0x0

    .local v6, "pri4":F
    const/4 v7, 0x0

    .local v7, "pri5":F
    const/4 v8, 0x0

    .local v8, "pri6":F
    const/4 v9, 0x0

    .local v9, "pri7":F
    const/4 v10, 0x0

    .line 1339
    .local v10, "pri8":F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f5

    .line 1340
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1341
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1342
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1343
    const/16 v25, 0x3

    aget v19, p1, v25

    .line 1344
    const/16 v25, 0x4

    aget v20, p1, v25

    .line 1345
    const/16 v25, 0x5

    aget v21, p1, v25

    .line 1346
    const/16 v25, 0x6

    aget v22, p1, v25

    .line 1347
    const/16 v25, 0x7

    aget v23, p1, v25

    .line 1348
    const/16 v25, 0x8

    aget v24, p1, v25

    .line 1361
    :cond_51
    :goto_51
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_128

    .line 1362
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1363
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1364
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1365
    const/16 v25, 0x3

    aget v5, p2, v25

    .line 1366
    const/16 v25, 0x4

    aget v6, p2, v25

    .line 1367
    const/16 v25, 0x5

    aget v7, p2, v25

    .line 1368
    const/16 v25, 0x6

    aget v8, p2, v25

    .line 1369
    const/16 v25, 0x7

    aget v9, p2, v25

    .line 1370
    const/16 v25, 0x8

    aget v10, p2, v25

    .line 1386
    :cond_82
    :goto_82
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    .line 1387
    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    .line 1388
    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    .line 1389
    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    .line 1390
    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    .line 1392
    const/16 v25, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1393
    const/16 v25, 0x1

    neg-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1394
    const/16 v25, 0x2

    neg-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1396
    return-void

    .line 1349
    :cond_f5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_51

    .line 1350
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1351
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1352
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1353
    const/16 v25, 0x4

    aget v19, p1, v25

    .line 1354
    const/16 v25, 0x5

    aget v20, p1, v25

    .line 1355
    const/16 v25, 0x6

    aget v21, p1, v25

    .line 1356
    const/16 v25, 0x8

    aget v22, p1, v25

    .line 1357
    const/16 v25, 0x9

    aget v23, p1, v25

    .line 1358
    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_51

    .line 1371
    :cond_128
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_82

    .line 1372
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1373
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1374
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1375
    const/16 v25, 0x4

    aget v5, p2, v25

    .line 1376
    const/16 v25, 0x5

    aget v6, p2, v25

    .line 1377
    const/16 v25, 0x6

    aget v7, p2, v25

    .line 1378
    const/16 v25, 0x8

    aget v8, p2, v25

    .line 1379
    const/16 v25, 0x9

    aget v9, p2, v25

    .line 1380
    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_82
.end method

.method private static getDelay(I)I
    .registers 2
    .param p0, "rate"    # I

    .prologue
    .line 1566
    const/4 v0, -0x1

    .line 1567
    .local v0, "delay":I
    packed-switch p0, :pswitch_data_14

    .line 1581
    move v0, p0

    .line 1584
    :goto_5
    return v0

    .line 1569
    :pswitch_6
    const/4 v0, 0x0

    .line 1570
    goto :goto_5

    .line 1572
    :pswitch_8
    const/16 v0, 0x4e20

    .line 1573
    goto :goto_5

    .line 1575
    :pswitch_b
    const v0, 0x1046b

    .line 1576
    goto :goto_5

    .line 1578
    :pswitch_f
    const v0, 0x30d40

    .line 1579
    goto :goto_5

    .line 1567
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public static getInclination([F)F
    .registers 5
    .param p0, "I"    # [F

    .prologue
    const/4 v2, 0x5

    .line 1049
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    .line 1050
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1052
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_12
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .registers 4

    .prologue
    .line 1555
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1556
    :try_start_3
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v0, :cond_15

    .line 1557
    const-string v0, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    new-instance v0, Landroid/hardware/LegacySensorManager;

    invoke-direct {v0, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 1561
    :cond_15
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v1

    return-object v0

    .line 1562
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getOrientation([F[F)[F
    .registers 11
    .param p0, "R"    # [F
    .param p1, "values"    # [F

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1262
    array-length v0, p0

    if-ne v0, v8, :cond_34

    .line 1263
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1264
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1265
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1271
    :goto_33
    return-object p1

    .line 1267
    :cond_34
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1268
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1269
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_33
.end method

.method public static getQuaternionFromVector([F[F)V
    .registers 10
    .param p0, "Q"    # [F
    .param p1, "rv"    # [F

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1481
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1a

    .line 1482
    aget v0, p1, v7

    aput v0, p0, v4

    .line 1487
    :goto_d
    aget v0, p1, v4

    aput v0, p0, v5

    .line 1488
    aget v0, p1, v5

    aput v0, p0, v6

    .line 1489
    aget v0, p1, v6

    aput v0, p0, v7

    .line 1490
    return-void

    .line 1484
    :cond_1a
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p1, v4

    aget v3, p1, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v4

    .line 1485
    aget v1, p0, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3e

    aget v0, p0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_3e
    aput v0, p0, v4

    goto :goto_d
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .registers 31
    .param p0, "R"    # [F
    .param p1, "I"    # [F
    .param p2, "gravity"    # [F
    .param p3, "geomagnetic"    # [F

    .prologue
    .line 974
    const/16 v20, 0x0

    aget v2, p2, v20

    .line 975
    .local v2, "Ax":F
    const/16 v20, 0x1

    aget v3, p2, v20

    .line 976
    .local v3, "Ay":F
    const/16 v20, 0x2

    aget v4, p2, v20

    .line 977
    .local v4, "Az":F
    const/16 v20, 0x0

    aget v5, p3, v20

    .line 978
    .local v5, "Ex":F
    const/16 v20, 0x1

    aget v6, p3, v20

    .line 979
    .local v6, "Ey":F
    const/16 v20, 0x2

    aget v7, p3, v20

    .line 980
    .local v7, "Ez":F
    mul-float v20, v6, v4

    mul-float v21, v7, v3

    sub-float v8, v20, v21

    .line 981
    .local v8, "Hx":F
    mul-float v20, v7, v2

    mul-float v21, v5, v4

    sub-float v9, v20, v21

    .line 982
    .local v9, "Hy":F
    mul-float v20, v5, v3

    mul-float v21, v6, v2

    sub-float v10, v20, v21

    .line 983
    .local v10, "Hz":F
    mul-float v20, v8, v8

    mul-float v21, v9, v9

    add-float v20, v20, v21

    mul-float v21, v10, v10

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    .line 984
    .local v18, "normH":F
    const v20, 0x3dcccccd    # 0.1f

    cmpg-float v20, v18, v20

    if-gez v20, :cond_4c

    .line 987
    const/16 v20, 0x0

    .line 1031
    :goto_4b
    return v20

    .line 989
    :cond_4c
    const/high16 v20, 0x3f800000    # 1.0f

    div-float v17, v20, v18

    .line 990
    .local v17, "invH":F
    mul-float v8, v8, v17

    .line 991
    mul-float v9, v9, v17

    .line 992
    mul-float v10, v10, v17

    .line 993
    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v21, v2, v2

    mul-float v22, v3, v3

    add-float v21, v21, v22

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 994
    .local v15, "invA":F
    mul-float/2addr v2, v15

    .line 995
    mul-float/2addr v3, v15

    .line 996
    mul-float/2addr v4, v15

    .line 997
    mul-float v20, v3, v10

    mul-float v21, v4, v9

    sub-float v11, v20, v21

    .line 998
    .local v11, "Mx":F
    mul-float v20, v4, v8

    mul-float v21, v2, v10

    sub-float v12, v20, v21

    .line 999
    .local v12, "My":F
    mul-float v20, v2, v9

    mul-float v21, v3, v8

    sub-float v13, v20, v21

    .line 1000
    .local v13, "Mz":F
    if-eqz p0, :cond_ba

    .line 1001
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_134

    .line 1002
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    .line 1003
    const/16 v20, 0x3

    aput v11, p0, v20

    const/16 v20, 0x4

    aput v12, p0, v20

    const/16 v20, 0x5

    aput v13, p0, v20

    .line 1004
    const/16 v20, 0x6

    aput v2, p0, v20

    const/16 v20, 0x7

    aput v3, p0, v20

    const/16 v20, 0x8

    aput v4, p0, v20

    .line 1012
    :cond_ba
    :goto_ba
    if-eqz p1, :cond_130

    .line 1016
    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v21, v5, v5

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v7, v7

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 1017
    .local v16, "invE":F
    mul-float v20, v5, v11

    mul-float v21, v6, v12

    add-float v20, v20, v21

    mul-float v21, v7, v13

    add-float v20, v20, v21

    mul-float v14, v20, v16

    .line 1018
    .local v14, "c":F
    mul-float v20, v5, v2

    mul-float v21, v6, v3

    add-float v20, v20, v21

    mul-float v21, v7, v4

    add-float v20, v20, v21

    mul-float v19, v20, v16

    .line 1019
    .local v19, "s":F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_191

    .line 1020
    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1021
    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x4

    aput v14, p1, v20

    const/16 v20, 0x5

    aput v19, p1, v20

    .line 1022
    const/16 v20, 0x6

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x7

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0x8

    aput v14, p1, v20

    .line 1031
    .end local v14    # "c":F
    .end local v16    # "invE":F
    .end local v19    # "s":F
    :cond_130
    :goto_130
    const/16 v20, 0x1

    goto/16 :goto_4b

    .line 1005
    :cond_134
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ba

    .line 1006
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1007
    const/16 v20, 0x4

    aput v11, p0, v20

    const/16 v20, 0x5

    aput v12, p0, v20

    const/16 v20, 0x6

    aput v13, p0, v20

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1008
    const/16 v20, 0x8

    aput v2, p0, v20

    const/16 v20, 0x9

    aput v3, p0, v20

    const/16 v20, 0xa

    aput v4, p0, v20

    const/16 v20, 0xb

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1009
    const/16 v20, 0xc

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xd

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xf

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p0, v20

    goto/16 :goto_ba

    .line 1023
    .restart local v14    # "c":F
    .restart local v16    # "invE":F
    .restart local v19    # "s":F
    :cond_191
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_130

    .line 1024
    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1025
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x5

    aput v14, p1, v20

    const/16 v20, 0x6

    aput v19, p1, v20

    .line 1026
    const/16 v20, 0x8

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x9

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0xa

    aput v14, p1, v20

    .line 1027
    const/16 v20, 0x3

    const/16 v21, 0x7

    const/16 v22, 0xb

    const/16 v23, 0xc

    const/16 v24, 0xd

    const/16 v25, 0xe

    const/16 v26, 0x0

    aput v26, p1, v25

    aput v26, p1, v24

    aput v26, p1, v23

    aput v26, p1, v22

    aput v26, p1, v21

    aput v26, p1, v20

    .line 1028
    const/16 v20, 0xf

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    goto/16 :goto_130
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .registers 21
    .param p0, "R"    # [F
    .param p1, "rotationVector"    # [F

    .prologue
    .line 1420
    const/4 v15, 0x0

    aget v3, p1, v15

    .line 1421
    .local v3, "q1":F
    const/4 v15, 0x1

    aget v7, p1, v15

    .line 1422
    .local v7, "q2":F
    const/4 v15, 0x2

    aget v10, p1, v15

    .line 1424
    .local v10, "q3":F
    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_86

    .line 1425
    const/4 v15, 0x3

    aget v2, p1, v15

    .line 1431
    .local v2, "q0":F
    :goto_15
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v12, v15, v3

    .line 1432
    .local v12, "sq_q1":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v13, v15, v7

    .line 1433
    .local v13, "sq_q2":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v10

    mul-float v14, v15, v10

    .line 1434
    .local v14, "sq_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v5, v15, v7

    .line 1435
    .local v5, "q1_q2":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v10

    mul-float v11, v15, v2

    .line 1436
    .local v11, "q3_q0":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v6, v15, v10

    .line 1437
    .local v6, "q1_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v8, v15, v2

    .line 1438
    .local v8, "q2_q0":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v9, v15, v10

    .line 1439
    .local v9, "q2_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v4, v15, v2

    .line 1441
    .local v4, "q1_q0":F
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v15, v0, :cond_a7

    .line 1442
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 1443
    const/4 v15, 0x1

    sub-float v16, v5, v11

    aput v16, p0, v15

    .line 1444
    const/4 v15, 0x2

    add-float v16, v6, v8

    aput v16, p0, v15

    .line 1446
    const/4 v15, 0x3

    add-float v16, v5, v11

    aput v16, p0, v15

    .line 1447
    const/4 v15, 0x4

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 1448
    const/4 v15, 0x5

    sub-float v16, v9, v4

    aput v16, p0, v15

    .line 1450
    const/4 v15, 0x6

    sub-float v16, v6, v8

    aput v16, p0, v15

    .line 1451
    const/4 v15, 0x7

    add-float v16, v9, v4

    aput v16, p0, v15

    .line 1452
    const/16 v15, 0x8

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v13

    aput v16, p0, v15

    .line 1472
    :cond_85
    :goto_85
    return-void

    .line 1427
    .end local v2    # "q0":F
    .end local v4    # "q1_q0":F
    .end local v5    # "q1_q2":F
    .end local v6    # "q1_q3":F
    .end local v8    # "q2_q0":F
    .end local v9    # "q2_q3":F
    .end local v11    # "q3_q0":F
    .end local v12    # "sq_q1":F
    .end local v13    # "sq_q2":F
    .end local v14    # "sq_q3":F
    :cond_86
    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v16, v3, v3

    sub-float v15, v15, v16

    mul-float v16, v7, v7

    sub-float v15, v15, v16

    mul-float v16, v10, v10

    sub-float v2, v15, v16

    .line 1428
    .restart local v2    # "q0":F
    const/4 v15, 0x0

    cmpl-float v15, v2, v15

    if-lez v15, :cond_a5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    :goto_a3
    goto/16 :goto_15

    :cond_a5
    const/4 v2, 0x0

    goto :goto_a3

    .line 1453
    .restart local v4    # "q1_q0":F
    .restart local v5    # "q1_q2":F
    .restart local v6    # "q1_q3":F
    .restart local v8    # "q2_q0":F
    .restart local v9    # "q2_q3":F
    .restart local v11    # "q3_q0":F
    .restart local v12    # "sq_q1":F
    .restart local v13    # "sq_q2":F
    .restart local v14    # "sq_q3":F
    :cond_a7
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_85

    .line 1454
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 1455
    const/4 v15, 0x1

    sub-float v16, v5, v11

    aput v16, p0, v15

    .line 1456
    const/4 v15, 0x2

    add-float v16, v6, v8

    aput v16, p0, v15

    .line 1457
    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 1459
    const/4 v15, 0x4

    add-float v16, v5, v11

    aput v16, p0, v15

    .line 1460
    const/4 v15, 0x5

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 1461
    const/4 v15, 0x6

    sub-float v16, v9, v4

    aput v16, p0, v15

    .line 1462
    const/4 v15, 0x7

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 1464
    const/16 v15, 0x8

    sub-float v16, v6, v8

    aput v16, p0, v15

    .line 1465
    const/16 v15, 0x9

    add-float v16, v9, v4

    aput v16, p0, v15

    .line 1466
    const/16 v15, 0xa

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v13

    aput v16, p0, v15

    .line 1467
    const/16 v15, 0xb

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 1469
    const/16 v15, 0xc

    const/16 v16, 0xd

    const/16 v17, 0xe

    const/16 v18, 0x0

    aput v18, p0, v17

    aput v18, p0, v16

    aput v18, p0, v15

    .line 1470
    const/16 v15, 0xf

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, p0, v15

    goto/16 :goto_85
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .registers 8
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .prologue
    .line 1134
    if-ne p0, p3, :cond_1a

    .line 1135
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1136
    .local v2, "temp":[F
    monitor-enter v2

    .line 1138
    :try_start_5
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1139
    array-length v1, p3

    .line 1140
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_16

    .line 1141
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1140
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1142
    :cond_16
    const/4 v3, 0x1

    monitor-exit v2

    .line 1146
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "temp":[F
    :goto_18
    return v3

    .line 1144
    .restart local v2    # "temp":[F
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1f

    .line 1146
    .end local v2    # "temp":[F
    :cond_1a
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_18

    .line 1144
    .restart local v2    # "temp":[F
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .registers 26
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .prologue
    .line 1163
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1164
    .local v6, "length":I
    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_a

    .line 1165
    const/4 v15, 0x0

    .line 1207
    :goto_9
    return v15

    .line 1166
    :cond_a
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_12

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_14

    .line 1167
    :cond_12
    const/4 v15, 0x0

    goto :goto_9

    .line 1168
    :cond_14
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_1c

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_1e

    .line 1169
    :cond_1c
    const/4 v15, 0x0

    goto :goto_9

    .line 1170
    :cond_1e
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_28

    .line 1171
    const/4 v15, 0x0

    goto :goto_9

    .line 1176
    :cond_28
    xor-int v1, p1, p2

    .line 1179
    .local v1, "Z":I
    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    .line 1180
    .local v12, "x":I
    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    .line 1181
    .local v13, "y":I
    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    .line 1184
    .local v14, "z":I
    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    .line 1185
    .local v2, "axis_y":I
    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    .line 1186
    .local v3, "axis_z":I
    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_48

    .line 1187
    xor-int/lit16 v1, v1, 0x80

    .line 1189
    :cond_48
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_94

    const/4 v9, 0x1

    .line 1190
    .local v9, "sx":Z
    :goto_4f
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_96

    const/4 v10, 0x1

    .line 1191
    .local v10, "sy":Z
    :goto_56
    const/16 v15, 0x80

    if-lt v1, v15, :cond_98

    const/4 v11, 0x1

    .line 1194
    .local v11, "sz":Z
    :goto_5b
    const/16 v15, 0x10

    if-ne v6, v15, :cond_9a

    const/4 v8, 0x4

    .line 1195
    .local v8, "rowLength":I
    :goto_60
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_61
    const/4 v15, 0x3

    if-ge v5, v15, :cond_ae

    .line 1196
    mul-int v7, v5, v8

    .line 1197
    .local v7, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_67
    const/4 v15, 0x3

    if-ge v4, v15, :cond_ab

    .line 1198
    if-ne v12, v4, :cond_77

    add-int v16, v7, v4

    if-eqz v9, :cond_9c

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_75
    aput v15, p3, v16

    .line 1199
    :cond_77
    if-ne v13, v4, :cond_84

    add-int v16, v7, v4

    if-eqz v10, :cond_a1

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_82
    aput v15, p3, v16

    .line 1200
    :cond_84
    if-ne v14, v4, :cond_91

    add-int v16, v7, v4

    if-eqz v11, :cond_a6

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8f
    aput v15, p3, v16

    .line 1197
    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 1189
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "offset":I
    .end local v8    # "rowLength":I
    .end local v9    # "sx":Z
    .end local v10    # "sy":Z
    .end local v11    # "sz":Z
    :cond_94
    const/4 v9, 0x0

    goto :goto_4f

    .line 1190
    .restart local v9    # "sx":Z
    :cond_96
    const/4 v10, 0x0

    goto :goto_56

    .line 1191
    .restart local v10    # "sy":Z
    :cond_98
    const/4 v11, 0x0

    goto :goto_5b

    .line 1194
    .restart local v11    # "sz":Z
    :cond_9a
    const/4 v8, 0x3

    goto :goto_60

    .line 1198
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "offset":I
    .restart local v8    # "rowLength":I
    :cond_9c
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_75

    .line 1199
    :cond_a1
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_82

    .line 1200
    :cond_a6
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_8f

    .line 1195
    :cond_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 1203
    .end local v4    # "i":I
    .end local v7    # "offset":I
    :cond_ae
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d1

    .line 1204
    const/4 v15, 0x3

    const/16 v16, 0x7

    const/16 v17, 0xb

    const/16 v18, 0xc

    const/16 v19, 0xd

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p3, v20

    aput v21, p3, v19

    aput v21, p3, v18

    aput v21, p3, v17

    aput v21, p3, v16

    aput v21, p3, v15

    .line 1205
    const/16 v15, 0xf

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, p3, v15

    .line 1207
    :cond_d1
    const/4 v15, 0x1

    goto/16 :goto_9
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1544
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 448
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x0

    .line 452
    .local v3, "wakeUpSensor":Z
    const/16 v4, 0x8

    if-eq p1, v4, :cond_1d

    const/16 v4, 0x11

    if-eq p1, v4, :cond_1d

    const/16 v4, 0x16

    if-eq p1, v4, :cond_1d

    const/16 v4, 0x17

    if-eq p1, v4, :cond_1d

    const/16 v4, 0x18

    if-eq p1, v4, :cond_1d

    const/16 v4, 0x19

    if-ne p1, v4, :cond_1e

    .line 455
    :cond_1d
    const/4 v3, 0x1

    .line 458
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 459
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v4

    if-ne v4, v3, :cond_22

    .line 461
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :goto_34
    return-object v2

    :cond_35
    const/4 v2, 0x0

    goto :goto_34
.end method

.method public getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .registers 7
    .param p1, "type"    # I
    .param p2, "wakeUp"    # Z

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 492
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 493
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v3

    if-ne v3, p2, :cond_8

    .line 496
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :goto_1a
    return-object v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method protected abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .registers 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v5, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v5

    .line 412
    :try_start_7
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 413
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1e

    .line 414
    const/4 v4, -0x1

    if-ne p1, v4, :cond_20

    .line 415
    move-object v3, v0

    .line 423
    :cond_15
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 424
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 426
    :cond_1e
    monitor-exit v5

    .line 427
    return-object v3

    .line 417
    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 419
    .local v1, "i":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_29

    .line 420
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 426
    .end local v1    # "i":Landroid/hardware/Sensor;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v4
.end method

.method public getSensors()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rateUs"    # I

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .registers 12
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rateUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I

    .prologue
    .line 723
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 724
    .local v3, "delay":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rateUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 802
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 803
    .local v3, "delayUs":I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 12
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rateUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 771
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .local v3, "delay":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v6, v5

    .line 772
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 545
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1512
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 618
    if-nez p1, :cond_3

    .line 623
    :goto_2
    return-void

    .line 622
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_2
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 600
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 605
    :cond_4
    :goto_4
    return-void

    .line 604
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_4
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 560
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 561
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 579
    return-void
.end method

.method protected abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
