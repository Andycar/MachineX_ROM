.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;
.super Ljava/lang/Object;
.source "PedoCalibrationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;
    }
.end annotation


# static fields
.field private static final PEDOCALIB_GPS_UPDATE:I = 0x2

.field private static final PEDOCALIB_PEDO_UPDATE:I = 0x1

.field private static final PEDO_FILE_DIR:Ljava/lang/String; = "/data/misc/CAE/Pedo"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDebugMsg:Ljava/lang/String;

.field private mGender:I

.field private mGpsTimeStamp:J

.field private final mHandler:Landroid/os/Handler;

.field private mHdop:F

.field private mHeight:D

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mLooper:Landroid/os/Looper;

.field private final mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

.field private final mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

.field private final mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

.field private mPedoReqTimeStamp:J

.field private final mSfTable:[D

.field private mStepCnt:J

.field private mTotalStepCnt:J

.field private mWeight:D

.field mfileOutDbgStream:Ljava/io/FileOutputStream;

.field private pedoStartFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "mPCalListener"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    .prologue
    const/16 v6, 0x14

    const/4 v1, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    .line 39
    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    .line 40
    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHdop:F

    .line 43
    new-array v1, v6, [D

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    .line 49
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGpsTimeStamp:J

    .line 50
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoReqTimeStamp:J

    .line 58
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mStepCnt:J

    .line 59
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mTotalStepCnt:J

    .line 204
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$3;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 225
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$4;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    .line 511
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mDebugMsg:Ljava/lang/String;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 102
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    .line 107
    iput-object p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    if-ge v0, v6, :cond_4f

    .line 111
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 114
    :cond_4f
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    .line 33
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHdop:F

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHdop:F

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)[D
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->storeSFToFile()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private debugFile(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 564
    return-void
.end method

.method private debugMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-static {p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private loadSFFromFile()V
    .registers 14

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x14

    .line 465
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 468
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/misc/CAE/Pedo/PedoCalib.inf"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v4, "file":Ljava/io/File;
    const-string v6, " "

    .line 470
    .local v6, "line":Ljava/lang/String;
    if-eqz v4, :cond_7c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7c

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 472
    :try_start_21
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2b} :catch_83
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_9e
    .catchall {:try_start_21 .. :try_end_2b} :catchall_cc

    .line 473
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_76

    .line 474
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_76

    .line 475
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 476
    .local v7, "temp":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    .line 477
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    .line 478
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    .line 479
    const/4 v5, 0x0

    .local v5, "inx":I
    :goto_61
    if-ge v5, v12, :cond_2d

    .line 480
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    add-int/lit8 v9, v5, 0x3

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_73} :catch_de
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_73} :catch_db
    .catchall {:try_start_2d .. :try_end_73} :catchall_d8

    .line 479
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 500
    .end local v5    # "inx":I
    .end local v7    # "temp":[Ljava/lang/String;
    :cond_76
    if-eqz v1, :cond_e1

    .line 502
    :try_start_78
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7d

    move-object v0, v1

    .line 509
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    :cond_7c
    :goto_7c
    return-void

    .line 503
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_7d
    move-exception v2

    .line 504
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 505
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_7c

    .line 485
    .end local v2    # "e":Ljava/io/IOException;
    :catch_83
    move-exception v3

    .line 487
    .local v3, "e1":Ljava/io/FileNotFoundException;
    :goto_84
    :try_start_84
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 488
    const/4 v5, 0x0

    .restart local v5    # "inx":I
    :goto_88
    if-ge v5, v12, :cond_93

    .line 489
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v5
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_cc

    .line 488
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    .line 500
    :cond_93
    if-eqz v0, :cond_7c

    .line 502
    :try_start_95
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_7c

    .line 503
    :catch_99
    move-exception v2

    .line 504
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    .line 492
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    .end local v5    # "inx":I
    :catch_9e
    move-exception v2

    .line 493
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_9f
    :try_start_9f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 495
    const/4 v5, 0x0

    .restart local v5    # "inx":I
    :goto_b6
    if-ge v5, v12, :cond_c1

    .line 496
    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v5
    :try_end_be
    .catchall {:try_start_9f .. :try_end_be} :catchall_cc

    .line 495
    add-int/lit8 v5, v5, 0x1

    goto :goto_b6

    .line 500
    :cond_c1
    if-eqz v0, :cond_7c

    .line 502
    :try_start_c3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7

    goto :goto_7c

    .line 503
    :catch_c7
    move-exception v2

    .line 504
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    .line 500
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "inx":I
    :catchall_cc
    move-exception v8

    :goto_cd
    if-eqz v0, :cond_d2

    .line 502
    :try_start_cf
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    .line 505
    :cond_d2
    :goto_d2
    throw v8

    .line 503
    :catch_d3
    move-exception v2

    .line 504
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d2

    .line 500
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_d8
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_cd

    .line 492
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_db
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_9f

    .line 485
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_de
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_84

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :cond_e1
    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_7c
.end method

.method private storeSFToFile()V
    .registers 13

    .prologue
    .line 427
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 430
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/misc/CAE/Pedo"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_14

    .line 432
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 435
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/misc/CAE/Pedo"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "PedoCalib.inf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, "saveFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v3, "fileout":Ljava/io/File;
    const/4 v1, 0x0

    .line 439
    .local v1, "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :try_start_35
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3a} :catch_a0
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_af
    .catchall {:try_start_35 .. :try_end_3a} :catchall_c2

    .line 440
    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .local v2, "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_93

    .line 441
    :try_start_3c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, "out":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "inx":I
    :goto_6a
    const/16 v8, 0x14

    if-ge v5, v8, :cond_8c

    .line 443
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    aget-wide v10, v9, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 445
    :cond_8c
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_93} :catch_d4
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_93} :catch_d1
    .catchall {:try_start_3c .. :try_end_93} :catchall_ce

    .line 454
    .end local v5    # "inx":I
    .end local v6    # "out":Ljava/lang/String;
    :cond_93
    if-eqz v2, :cond_d7

    .line 456
    :try_start_95
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9a

    move-object v1, v2

    .line 462
    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :cond_99
    :goto_99
    return-void

    .line 457
    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :catch_9a
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 459
    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_99

    .line 448
    .end local v0    # "e":Ljava/io/IOException;
    :catch_a0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_a1
    :try_start_a1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_c2

    .line 454
    if-eqz v1, :cond_99

    .line 456
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_99

    .line 457
    :catch_aa
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    :catch_af
    move-exception v0

    .line 452
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_b0
    :try_start_b0
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_c2

    .line 454
    if-eqz v1, :cond_99

    .line 456
    :try_start_b9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_99

    .line 457
    :catch_bd
    move-exception v0

    .line 458
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    .line 454
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c2
    move-exception v8

    :goto_c3
    if-eqz v1, :cond_c8

    .line 456
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 459
    :cond_c8
    :goto_c8
    throw v8

    .line 457
    :catch_c9
    move-exception v0

    .line 458
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c8

    .line 454
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :catchall_ce
    move-exception v8

    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_c3

    .line 451
    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :catch_d1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_b0

    .line 448
    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :catch_d4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_a1

    .end local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    :cond_d7
    move-object v1, v2

    .end local v2    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutTestEnvStream":Ljava/io/FileOutputStream;
    goto :goto_99
.end method


# virtual methods
.method public disable()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 141
    const-string v0, "PCM disable"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    if-nez v0, :cond_d

    .line 168
    :goto_c
    return-void

    .line 146
    :cond_d
    iput-boolean v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    .line 147
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugFile(I)V

    .line 166
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mStepCnt:J

    .line 167
    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mTotalStepCnt:J

    goto :goto_c
.end method

.method public enable(I)V
    .registers 7
    .param p1, "walkStatus"    # I

    .prologue
    const/4 v4, 0x1

    .line 284
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    if-eqz v0, :cond_6

    .line 319
    :goto_5
    return-void

    .line 288
    :cond_6
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 293
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->registerListener(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalInitialize()V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoSetDefaultStateMachine()V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoSetScaleFactorArray([D)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateMachine()V

    .line 317
    iput-boolean v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->pedoStartFlag:Z

    .line 318
    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugFile(I)V

    goto :goto_5
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 173
    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 175
    iget-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGpsTimeStamp:J

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_8d

    .line 176
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGpsTimeStamp:J

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLocationChanged TimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Gps Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;)V

    .line 181
    .local v0, "gpsMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iput v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->accuracy:F

    .line 182
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->latitude:D

    .line 183
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->longitude:D

    .line 184
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->altitude:D

    .line 185
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->timestamp:J

    .line 186
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 187
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "satellites"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->usedSat:I

    .line 193
    :goto_7d
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 194
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 195
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .end local v0    # "gpsMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8d
    return-void

    .line 190
    .restart local v0    # "gpsMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;
    :cond_8e
    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$GpsInfoMessage;->usedSat:I

    goto :goto_7d
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 268
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 273
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 278
    return-void
.end method

.method public onStepInfoUpdate(JJJDDJ)V
    .registers 20
    .param p1, "totalStepCnt"    # J
    .param p3, "walkStepCnt"    # J
    .param p5, "runStepCnt"    # J
    .param p7, "distance"    # D
    .param p9, "speed"    # D
    .param p11, "upDownStepCnt"    # J

    .prologue
    .line 348
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalibration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;

    if-eqz v4, :cond_3a

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoReqTimeStamp:J

    .line 350
    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$1;)V

    .line 351
    .local v3, "pedoMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;
    iput-wide p7, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->distance:D

    .line 352
    move-wide/from16 v0, p9

    iput-wide v0, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->speed:D

    .line 353
    long-to-int v4, p1

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->totalStepCnt:I

    .line 354
    long-to-int v4, p3

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->walkStepCnt:I

    .line 355
    long-to-int v4, p5

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->runStepCnt:I

    .line 356
    move-wide/from16 v0, p11

    long-to-int v4, v0

    iput v4, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;->upDownStepCnt:I

    .line 358
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 359
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 360
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 361
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    .line 362
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 363
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "pedoMsg":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$PedoInfoMessage;
    :cond_3a
    return-void
.end method

.method public requestScaleFactorUpdate()[I
    .registers 8

    .prologue
    const/16 v6, 0x14

    .line 322
    const-string v2, "PCM : requestSFUpdate."

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    .line 324
    new-array v1, v6, [I

    .line 325
    .local v1, "nArray":[I
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    if-eqz v2, :cond_38

    .line 326
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_11
    if-ge v0, v6, :cond_23

    .line 327
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    aget-wide v2, v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 330
    :cond_23
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    if-eqz v2, :cond_32

    .line 331
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;->onUpdateScaleFactor([I)V

    .line 332
    const-string v2, "PCM : getSFArray() is ok."

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    .line 343
    :cond_31
    :goto_31
    return-object v1

    .line 334
    :cond_32
    const-string v2, "PCM : Listener is null"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    goto :goto_31

    .line 338
    .end local v0    # "inx":I
    :cond_38
    const/4 v0, 0x0

    .restart local v0    # "inx":I
    :goto_39
    if-ge v0, v6, :cond_31

    .line 339
    const/16 v2, 0x3e8

    aput v2, v1, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_39
.end method

.method protected sendSFToPedoRunner()V
    .registers 8

    .prologue
    const/16 v6, 0x14

    .line 249
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    if-eqz v2, :cond_29

    .line 250
    new-array v1, v6, [I

    .line 252
    .local v1, "nArray":[I
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_9
    if-ge v0, v6, :cond_1b

    .line 253
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    aget-wide v2, v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 256
    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    if-eqz v2, :cond_2a

    .line 257
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;->onUpdateScaleFactor([I)V

    .line 258
    const-string v2, "PCM : sendSFToPDRunner() is ok."

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    .line 263
    .end local v0    # "inx":I
    .end local v1    # "nArray":[I
    :cond_29
    :goto_29
    return-void

    .line 260
    .restart local v0    # "inx":I
    .restart local v1    # "nArray":[I
    :cond_2a
    const-string v2, "PCM : Listener is null"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public setUserProfileGender(D)V
    .registers 6
    .param p1, "gender"    # D

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    .line 419
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    int-to-double v0, v0

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_10

    .line 421
    double-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mGender:I

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->sfReset()V

    .line 424
    :cond_10
    return-void
.end method

.method public setUserProfileHeight(D)V
    .registers 8
    .param p1, "height"    # D

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    .line 400
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_18

    .line 402
    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mHeight:D

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->sfReset()V

    .line 405
    :cond_18
    return-void
.end method

.method public setUserProfileWeight(D)V
    .registers 8
    .param p1, "weight"    # D

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->loadSFFromFile()V

    .line 409
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_18

    .line 411
    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mWeight:D

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->sfReset()V

    .line 415
    :cond_18
    return-void
.end method

.method public sfReset()V
    .registers 7

    .prologue
    const/16 v3, 0x14

    .line 383
    new-array v1, v3, [I

    .line 385
    .local v1, "nArray":[I
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_5
    if-ge v0, v3, :cond_14

    .line 386
    const/16 v2, 0x3e8

    aput v2, v1, v0

    .line 387
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mSfTable:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v0

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 389
    :cond_14
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->storeSFToFile()V

    .line 390
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    if-eqz v2, :cond_26

    .line 391
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mPedoCalListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;->onUpdateScaleFactor([I)V

    .line 392
    const-string v2, "PCM :sfReset() is ok."

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    .line 396
    :goto_25
    return-void

    .line 394
    :cond_26
    const-string v2, "PCM : Listener is null"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->debugMsg(Ljava/lang/String;)V

    goto :goto_25
.end method
