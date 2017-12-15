.class public Lcom/android/internal/os/BatteryStatsDumper;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDumper$1;,
        Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatsDumper"

.field public static db:Lcom/android/internal/os/BatteryStatsDBHelper;

.field static mIsOnBattery:Z

.field private static sPrevBatteryLevel:I

.field public static sScreenOn:Z


# instance fields
.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mStatsType:I

.field private pm:Landroid/content/pm/PackageManager;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStatsType:I

    .line 54
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->pm:Landroid/content/pm/PackageManager;

    .line 56
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 57
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 59
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    .line 60
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    .line 61
    sget-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4a

    .line 62
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    .line 64
    :cond_4a
    return-void
.end method

.method private addScreenUsage(J)D
    .registers 26
    .param p1, "rawRealtime"    # J

    .prologue
    .line 382
    const-wide/16 v10, 0x0

    .line 383
    .local v10, "power":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 384
    .local v16, "screenOnTimeMs":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v20, "screen.on"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v10, v10, v18

    .line 385
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "screen.full"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    .line 388
    .local v14, "screenFullPower":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_38
    const/4 v7, 0x5

    if-ge v6, v7, :cond_a1

    .line 389
    int-to-float v7, v6

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v7, v7, v18

    float-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    div-double v12, v18, v20

    .line 391
    .local v12, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .line 393
    .local v4, "brightnessTime":J
    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v8, v12, v18

    .line 394
    .local v8, "p":D
    const-string v7, "BatteryStatsDumper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Screen bin #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " power="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide v20, 0x414b774000000000L    # 3600000.0

    div-double v20, v8, v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    add-double/2addr v10, v8

    .line 388
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 398
    .end local v4    # "brightnessTime":J
    .end local v8    # "p":D
    .end local v12    # "screenBinPower":D
    :cond_a1
    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v10, v10, v18

    return-wide v10
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 421
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_30
    .catchall {:try_start_1 .. :try_end_d} :catchall_3d

    .line 422
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 423
    .local v4, "s":Ljava/lang/String;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 424
    if-eqz v4, :cond_18

    .line 425
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 427
    :cond_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 428
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_4c
    .catchall {:try_start_e .. :try_end_22} :catchall_49

    move-result v3

    .line 433
    .local v3, "ret":B
    if-eqz v2, :cond_28

    .line 434
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v1, v2

    .line 440
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_29
    :goto_29
    return v3

    .line 436
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 439
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_29

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    .end local v4    # "s":Ljava/lang/String;
    :catch_30
    move-exception v0

    .line 430
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_31
    const/4 v3, -0x1

    .line 433
    .restart local v3    # "ret":B
    if-eqz v1, :cond_29

    .line 434
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_29

    .line 436
    :catch_38
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    :catchall_3d
    move-exception v5

    .line 433
    :goto_3e
    if-eqz v1, :cond_43

    .line 434
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 438
    :cond_43
    :goto_43
    throw v5

    .line 436
    :catch_44
    move-exception v0

    .line 437
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_49
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 429
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_31
.end method

.method private getMobilePowerPerMs()D
    .registers 5

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket(J)D
    .registers 26
    .param p1, "rawRealtime"    # J

    .prologue
    .line 351
    const-wide/32 v4, 0x30d40

    .line 352
    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    .line 354
    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 355
    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 356
    .local v14, "mobileTx":J
    add-long v8, v12, v14

    .line 357
    .local v8, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 359
    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_6b

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_6b

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 361
    .local v10, "mobilePps":D
    :goto_61
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    .line 359
    .end local v10    # "mobilePps":D
    :cond_6b
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_61
.end method

.method private getWifiPowerPerPacket()D
    .registers 9

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 375
    const-wide/32 v0, 0xf4240

    .line 376
    .local v0, "WIFI_BPS":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    .line 378
    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private load()V
    .registers 6

    .prologue
    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 69
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 70
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 73
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    .line 74
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    .line 78
    .end local v0    # "data":[B
    .end local v2    # "parcel":Landroid/os/Parcel;
    :goto_26
    return-void

    .line 75
    :catch_27
    move-exception v1

    .line 76
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_26
.end method


# virtual methods
.method public computeSavedTimeAfterKillingPackage(Ljava/lang/String;)J
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 454
    const-wide/16 v6, 0x0

    .line 456
    .local v6, "consumptionRateTotal":D
    const/4 v3, 0x0

    .line 457
    .local v3, "dischageSteps":[J
    const/4 v8, 0x0

    .line 459
    .local v8, "dischageStepsNum":I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_5e

    .line 460
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl;->getNumDischargeStepDurations()I

    move-result v8

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStepDurationsArray()[J

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 464
    .local v2, "batteryLevel":I
    monitor-exit v19
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_5b

    .line 466
    :try_start_30
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: batteryLevel:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dischageStepsNum: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_56} :catch_5e

    .line 467
    if-gtz v8, :cond_69

    .line 468
    const-wide/16 v10, -0x1

    .line 502
    .end local v2    # "batteryLevel":I
    :goto_5a
    return-wide v10

    .line 464
    :catchall_5b
    move-exception v18

    :try_start_5c
    monitor-exit v19
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v18
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5e} :catch_5e

    .line 500
    :catch_5e
    move-exception v9

    .line 501
    .local v9, "e":Ljava/lang/Exception;
    const-string v18, "BatteryStatsDumper"

    const-string v19, "computeSavedTimeAfterKillingPackage::  Exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-wide/16 v10, 0x0

    goto :goto_5a

    .line 471
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "batteryLevel":I
    :cond_69
    const-wide/16 v16, 0x0

    .line 472
    .local v16, "total":J
    const-wide v14, 0xffffffffffL

    .line 474
    .local v14, "stepLevelTimeMask":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_71
    if-ge v10, v8, :cond_7c

    .line 477
    :try_start_73
    aget-wide v18, v3, v10

    and-long v18, v18, v14

    add-long v16, v16, v18

    .line 474
    add-int/lit8 v10, v10, 0x1

    goto :goto_71

    .line 480
    :cond_7c
    mul-int/lit16 v0, v8, 0xe10

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-double v6, v0

    .line 481
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: consumptionRateTotal:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_b3

    .line 484
    const-wide/16 v10, -0x1

    goto :goto_5a

    .line 487
    :cond_b3
    sget-object v18, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAverageLevelDropPerHour(Ljava/lang/String;)D

    move-result-wide v4

    .line 488
    .local v4, "consumptionRateOfPackage":D
    const-wide/16 v12, 0x0

    .line 490
    .local v12, "newConsumptionRateTotal":D
    cmpl-double v18, v6, v4

    if-lez v18, :cond_121

    .line 491
    sub-double v12, v6, v4

    .line 495
    :goto_c5
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "New battery consumption rate = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Previous consumptionRateOfPackage: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    int-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    mul-double v20, v6, v12

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v10, v0

    .line 498
    .local v10, "i":J
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: returning i:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_11f} :catch_5e

    goto/16 :goto_5a

    .line 493
    .local v10, "i":I
    :cond_121
    sub-double v12, v4, v6

    goto :goto_c5
.end method

.method public deleteRecordsExceptLatest(I)V
    .registers 3
    .param p1, "maxNumOfItems"    # I

    .prologue
    .line 541
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_9

    .line 542
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteRecordsExceptLatest(I)V

    .line 544
    :cond_9
    return-void
.end method

.method public deleteTableForApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 444
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteTableForApp(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public dumpConsumingAppDetails(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 534
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpConsumingAppDetails(Ljava/io/PrintWriter;)V

    .line 535
    return-void
.end method

.method public getBatteryLevel()I
    .registers 4

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "battValue":I
    const/4 v1, -0x1

    .line 409
    .local v1, "batteryLevel":B
    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDumper;->getByteFromFile(Ljava/lang/String;)B

    move-result v1

    .line 410
    if-gez v1, :cond_d

    .line 411
    const/16 v0, 0x64

    .line 414
    :goto_c
    return v0

    .line 413
    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public getBatteryTotalCapacity()I
    .registers 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public handleTimeChange()V
    .registers 2

    .prologue
    .line 530
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->handleTimeChange()V

    .line 531
    return-void
.end method

.method public modifyThresholdIfNecessary()V
    .registers 2

    .prologue
    .line 448
    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->modifyThresholdIfNecessary()V

    .line 449
    return-void
.end method

.method public refreshStats(ZZ)V
    .registers 119
    .param p1, "isWriteReasonScreenChange"    # Z
    .param p2, "screenOn"    # Z

    .prologue
    .line 81
    const-string v15, "BatteryStatsDumper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "In refreshStats isReason Screen ON/OFF: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->load()V

    .line 84
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v15, v15, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    sput-boolean v15, Lcom/android/internal/os/BatteryStatsDumper;->mIsOnBattery:Z

    .line 86
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v15, :cond_3e

    .line 87
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "sensor"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    .line 90
    :cond_3e
    const/16 v101, 0x0

    .line 91
    .local v101, "which":I
    const-wide/16 v32, 0x0

    .line 92
    .local v32, "computedPower":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v15}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v82

    .line 93
    .local v82, "speedSteps":I
    move/from16 v0, v82

    new-array v0, v0, [D

    move-object/from16 v66, v0

    .line 94
    .local v66, "powerCpuNormal":[D
    move/from16 v0, v82

    new-array v0, v0, [J

    move-object/from16 v31, v0

    .line 96
    .local v31, "cpuSpeedStepTimes":[J
    const/16 v60, 0x0

    .local v60, "p":I
    :goto_58
    move/from16 v0, v60

    move/from16 v1, v82

    if-ge v0, v1, :cond_71

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "cpu.active"

    move-object/from16 v0, v16

    move/from16 v1, v60

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v16

    aput-wide v16, v66, v60

    .line 96
    add-int/lit8 v60, v60, 0x1

    goto :goto_58

    .line 103
    :cond_71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    mul-long v48, v16, v114

    .line 104
    .local v48, "mRawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDumper;->getMobilePowerPerPacket(J)D

    move-result-wide v52

    .line 105
    .local v52, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->getWifiPowerPerPacket()D

    move-result-wide v104

    .line 107
    .local v104, "wifiPowerPerPacket":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 109
    .local v19, "time":J
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v21, "powerEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v92

    .line 112
    .local v92, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v92 .. v92}, Landroid/util/SparseArray;->size()I

    move-result v27

    .line 114
    .local v27, "NU":I
    const/16 v45, 0x0

    .end local v60    # "p":I
    .local v45, "iu":I
    :goto_9c
    move/from16 v0, v45

    move/from16 v1, v27

    if-ge v0, v1, :cond_3e9

    .line 115
    move-object/from16 v0, v92

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/os/BatteryStats$Uid;

    .line 117
    .local v91, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v6, 0x0

    .line 118
    .local v6, "power":D
    const-wide/16 v42, 0x0

    .line 119
    .local v42, "highestDrain":D
    const/16 v64, 0x0

    .line 121
    .local v64, "packageWithHighestDrain":Ljava/lang/String;
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v67

    .line 123
    .local v67, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v36, 0x0

    .line 124
    .local v36, "cpuTime":J
    const-wide/16 v34, 0x0

    .line 125
    .local v34, "cpuFgTime":J
    const-wide/16 v102, 0x0

    .line 126
    .local v102, "wakelockTime":J
    const-wide/16 v12, 0x0

    .line 127
    .local v12, "uidUsageTime":J
    const/4 v14, 0x0

    .line 128
    .local v14, "wakeUpCount":I
    const-wide/16 v94, 0x0

    .line 130
    .local v94, "uidWakeUpPower":D
    invoke-interface/range {v67 .. v67}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_190

    .line 132
    invoke-interface/range {v67 .. v67}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "i$":Ljava/util/Iterator;
    :cond_cf
    :goto_cf
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_190

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/Map$Entry;

    .line 134
    .local v38, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/os/BatteryStats$Uid$Proc;

    .line 135
    .local v72, "ps":Landroid/os/BatteryStats$Uid$Proc;
    const/4 v15, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v96

    .line 136
    .local v96, "userTime":J
    const/4 v15, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v84

    .line 137
    .local v84, "systemTime":J
    const/4 v15, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v40

    .line 138
    .local v40, "foregroundTime":J
    const-wide/16 v16, 0xa

    mul-long v16, v16, v40

    add-long v34, v34, v16

    .line 139
    add-long v16, v96, v84

    const-wide/16 v114, 0xa

    mul-long v88, v16, v114

    .line 140
    .local v88, "tmpCpuTime":J
    const/16 v90, 0x0

    .line 143
    .local v90, "totalTimeAtSpeeds":I
    const/16 v83, 0x0

    .local v83, "step":I
    :goto_106
    move/from16 v0, v83

    move/from16 v1, v82

    if-ge v0, v1, :cond_128

    .line 144
    const/4 v15, 0x0

    move-object/from16 v0, v72

    move/from16 v1, v83

    invoke-virtual {v0, v1, v15}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v16

    aput-wide v16, v31, v83

    .line 145
    move/from16 v0, v90

    int-to-long v0, v0

    move-wide/from16 v16, v0

    aget-wide v114, v31, v83

    add-long v16, v16, v114

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v90, v0

    .line 143
    add-int/lit8 v83, v83, 0x1

    goto :goto_106

    .line 148
    :cond_128
    if-nez v90, :cond_12c

    .line 149
    const/16 v90, 0x1

    .line 152
    :cond_12c
    const-wide/16 v70, 0x0

    .line 153
    .local v70, "processPower":D
    const/16 v83, 0x0

    :goto_130
    move/from16 v0, v83

    move/from16 v1, v82

    if-ge v0, v1, :cond_154

    .line 154
    aget-wide v16, v31, v83

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v90

    int-to-double v0, v0

    move-wide/from16 v114, v0

    div-double v74, v16, v114

    .line 155
    .local v74, "ratio":D
    move-wide/from16 v0, v88

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v74

    aget-wide v114, v66, v83

    mul-double v16, v16, v114

    add-double v70, v70, v16

    .line 153
    add-int/lit8 v83, v83, 0x1

    goto :goto_130

    .line 158
    .end local v74    # "ratio":D
    :cond_154
    add-long v36, v36, v88

    .line 160
    const-wide/16 v16, 0x0

    cmpl-double v15, v70, v16

    if-eqz v15, :cond_cf

    .line 161
    add-double v6, v6, v70

    .line 162
    if-eqz v64, :cond_16a

    const-string v15, "*"

    move-object/from16 v0, v64

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_174

    .line 164
    :cond_16a
    move-wide/from16 v42, v70

    .line 165
    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v64

    .end local v64    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v64, Ljava/lang/String;

    .restart local v64    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_cf

    .line 166
    :cond_174
    cmpg-double v15, v42, v70

    if-gez v15, :cond_cf

    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v16, "*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_cf

    .line 168
    move-wide/from16 v42, v70

    .line 169
    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v64

    .end local v64    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v64, Ljava/lang/String;

    .restart local v64    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_cf

    .line 175
    .end local v38    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v39    # "i$":Ljava/util/Iterator;
    .end local v40    # "foregroundTime":J
    .end local v70    # "processPower":D
    .end local v72    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v83    # "step":I
    .end local v84    # "systemTime":J
    .end local v88    # "tmpCpuTime":J
    .end local v90    # "totalTimeAtSpeeds":I
    .end local v96    # "userTime":J
    :cond_190
    cmp-long v15, v34, v36

    if-lez v15, :cond_1a5

    .line 176
    const-wide/16 v16, 0x2710

    add-long v16, v16, v36

    cmp-long v15, v34, v16

    if-lez v15, :cond_1a3

    .line 177
    const-string v15, "BatteryStatsDumper"

    const-string v16, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1a3
    move-wide/from16 v36, v34

    .line 181
    :cond_1a5
    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v6, v6, v16

    .line 183
    add-long v12, v12, v36

    .line 186
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v100

    .line 188
    .local v100, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v100 .. v100}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .restart local v39    # "i$":Ljava/util/Iterator;
    :cond_1ba
    :goto_1ba
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1e1

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Ljava/util/Map$Entry;

    .line 189
    .local v99, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v99 .. v99}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 192
    .local v98, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v15, 0x0

    move-object/from16 v0, v98

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v87

    .line 193
    .local v87, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v87, :cond_1ba

    .line 194
    const/4 v15, 0x0

    move-object/from16 v0, v87

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v102, v102, v16

    goto :goto_1ba

    .line 198
    .end local v87    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v98    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v99    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_1e1
    const-wide/16 v16, 0x3e8

    div-long v102, v102, v16

    .line 201
    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v18, "cpu.awake"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    .line 203
    .local v60, "p":D
    add-double v6, v6, v60

    .line 205
    add-long v12, v12, v102

    .line 208
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v54

    .line 209
    .local v54, "mobileRx":J
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v56

    .line 210
    .local v56, "mobileTx":J
    const/4 v15, 0x0

    move-object/from16 v0, v91

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v50

    .line 211
    .local v50, "mobileActive":J
    add-long v16, v54, v56

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v60, v16, v52

    .line 212
    add-double v6, v6, v60

    .line 214
    add-long v12, v12, v50

    .line 217
    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v108

    .line 218
    .local v108, "wifiRx":J
    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v112

    .line 219
    .local v112, "wifiTx":J
    add-long v16, v108, v112

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v60, v16, v104

    .line 220
    add-double v6, v6, v60

    .line 223
    const/4 v15, 0x0

    move-object/from16 v0, v91

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    div-long v106, v16, v114

    .line 224
    .local v106, "wifiRunningTimeMs":J
    move-wide/from16 v0, v106

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.on"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    .line 226
    add-double v6, v6, v60

    .line 228
    add-long v12, v12, v106

    .line 231
    const/4 v15, 0x0

    move-object/from16 v0, v91

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    div-long v110, v16, v114

    .line 232
    .local v110, "wifiScanTimeMs":J
    move-wide/from16 v0, v110

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.scan"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    .line 234
    add-double v6, v6, v60

    .line 236
    add-long v12, v12, v110

    .line 238
    const/16 v30, 0x0

    .local v30, "bin":I
    :goto_2a8
    const/4 v15, 0x5

    move/from16 v0, v30

    if-ge v0, v15, :cond_2e0

    .line 239
    const/4 v15, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v30

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    div-long v28, v16, v114

    .line 240
    .local v28, "batchScanTimeMs":J
    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.batchedscan"

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    .line 243
    add-double v6, v6, v60

    .line 245
    add-long v12, v12, v28

    .line 238
    add-int/lit8 v30, v30, 0x1

    goto :goto_2a8

    .line 249
    .end local v28    # "batchScanTimeMs":J
    :cond_2e0
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v79

    .line 250
    .local v79, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v79 .. v79}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 251
    .local v4, "NSE":I
    const/16 v44, 0x0

    .local v44, "ise":I
    :goto_2ea
    move/from16 v0, v44

    if-ge v0, v4, :cond_35f

    .line 252
    move-object/from16 v0, v79

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/os/BatteryStats$Uid$Sensor;

    .line 253
    .local v76, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v79

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v77

    .line 254
    .local v77, "sensorHandle":I
    invoke-virtual/range {v76 .. v76}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v87

    .line 255
    .restart local v87    # "timer":Landroid/os/BatteryStats$Timer;
    const/4 v15, 0x0

    move-object/from16 v0, v87

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    div-long v80, v16, v114

    .line 256
    .local v80, "sensorTime":J
    const-wide/16 v58, 0x0

    .line 258
    .local v58, "multiplier":D
    packed-switch v77, :pswitch_data_476

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v78

    .line 265
    .local v78, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v78 .. v78}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_324
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_33f

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/hardware/Sensor;

    .line 266
    .local v73, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v73 .. v73}, Landroid/hardware/Sensor;->getHandle()I

    move-result v15

    move/from16 v0, v77

    if-ne v15, v0, :cond_324

    .line 267
    invoke-virtual/range {v73 .. v73}, Landroid/hardware/Sensor;->getPower()F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v58, v0

    .line 273
    .end local v73    # "s":Landroid/hardware/Sensor;
    .end local v78    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_33f
    :goto_33f
    move-wide/from16 v0, v80

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v58

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    .line 274
    add-double v6, v6, v60

    .line 276
    add-long v12, v12, v80

    .line 251
    add-int/lit8 v44, v44, 0x1

    goto :goto_2ea

    .line 260
    :pswitch_354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "gps.on"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v58

    .line 261
    goto :goto_33f

    .line 279
    .end local v58    # "multiplier":D
    .end local v76    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v77    # "sensorHandle":I
    .end local v80    # "sensorTime":J
    .end local v87    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_35f
    const-wide/16 v16, 0x0

    cmpg-double v15, v6, v16

    if-gez v15, :cond_36e

    .line 280
    const-string v15, "BatteryStatsDumper"

    const-string v16, " calculated power is negative"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-wide/16 v6, 0x0

    .line 284
    :cond_36e
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v86

    .line 285
    .local v86, "thisUid":I
    const/4 v8, 0x0

    .line 286
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->pm:Landroid/content/pm/PackageManager;

    move/from16 v0, v86

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v65

    .line 287
    .local v65, "packages":[Ljava/lang/String;
    if-eqz v65, :cond_3ca

    move-object/from16 v0, v65

    array-length v15, v0

    if-lez v15, :cond_3ca

    .line 288
    const/4 v15, 0x0

    aget-object v8, v65, v15

    .line 293
    :goto_387
    invoke-static/range {v86 .. v86}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v93

    .line 295
    .local v93, "userId":I
    const/4 v9, 0x0

    .line 296
    .local v9, "isSystem":Z
    const/16 v15, 0x2710

    move/from16 v0, v86

    if-ge v0, v15, :cond_393

    .line 297
    const/4 v9, 0x1

    .line 300
    :cond_393
    add-long v16, v108, v112

    add-long v16, v16, v54

    add-long v10, v16, v56

    .line 303
    .local v10, "totalNetworkUsage":J
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v63

    .line 304
    .local v63, "packageStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v16, "wakeup.power"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v68

    .line 307
    .local v68, "powerPerWakeUp":D
    invoke-interface/range {v63 .. v63}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_3b0
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3cd

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/Map$Entry;

    .line 308
    .local v62, "packageEntries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v62 .. v62}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Pkg;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v15

    add-int/2addr v14, v15

    .line 309
    goto :goto_3b0

    .line 290
    .end local v9    # "isSystem":Z
    .end local v10    # "totalNetworkUsage":J
    .end local v62    # "packageEntries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v63    # "packageStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v68    # "powerPerWakeUp":D
    .end local v93    # "userId":I
    :cond_3ca
    move-object/from16 v8, v64

    goto :goto_387

    .line 310
    .restart local v9    # "isSystem":Z
    .restart local v10    # "totalNetworkUsage":J
    .restart local v63    # "packageStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v68    # "powerPerWakeUp":D
    .restart local v93    # "userId":I
    :cond_3cd
    int-to-double v0, v14

    move-wide/from16 v16, v0

    mul-double v94, v16, v68

    .line 311
    add-double v6, v6, v94

    .line 313
    add-double v32, v32, v6

    .line 315
    if-eqz v8, :cond_3e5

    if-nez v93, :cond_3e5

    .line 316
    new-instance v5, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    const/4 v15, 0x0

    invoke-direct/range {v5 .. v15}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(DLjava/lang/String;ZJJILcom/android/internal/os/BatteryStatsDumper$1;)V

    .line 318
    .local v5, "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v5    # "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    :cond_3e5
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_9c

    .line 322
    .end local v4    # "NSE":I
    .end local v6    # "power":D
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "isSystem":Z
    .end local v10    # "totalNetworkUsage":J
    .end local v12    # "uidUsageTime":J
    .end local v14    # "wakeUpCount":I
    .end local v30    # "bin":I
    .end local v34    # "cpuFgTime":J
    .end local v36    # "cpuTime":J
    .end local v39    # "i$":Ljava/util/Iterator;
    .end local v42    # "highestDrain":D
    .end local v44    # "ise":I
    .end local v50    # "mobileActive":J
    .end local v54    # "mobileRx":J
    .end local v56    # "mobileTx":J
    .end local v60    # "p":D
    .end local v63    # "packageStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v64    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v65    # "packages":[Ljava/lang/String;
    .end local v67    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v68    # "powerPerWakeUp":D
    .end local v79    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v86    # "thisUid":I
    .end local v91    # "u":Landroid/os/BatteryStats$Uid;
    .end local v93    # "userId":I
    .end local v94    # "uidWakeUpPower":D
    .end local v100    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v102    # "wakelockTime":J
    .end local v106    # "wifiRunningTimeMs":J
    .end local v108    # "wifiRx":J
    .end local v110    # "wifiScanTimeMs":J
    .end local v112    # "wifiTx":J
    :cond_3e9
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDumper;->addScreenUsage(J)D

    move-result-wide v16

    add-double v32, v32, v16

    .line 323
    move-wide/from16 v24, v32

    .line 324
    .local v24, "totalPower":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v15}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide/high16 v114, 0x4059000000000000L    # 100.0

    div-double v46, v16, v114

    .line 327
    .local v46, "mMinDrainedPower":D
    cmpl-double v15, v46, v32

    if-lez v15, :cond_414

    .line 328
    move-wide/from16 v24, v46

    .line 331
    :cond_414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v0, v15, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v23, v0

    .line 332
    .local v23, "currentBatteryLevel":I
    sget v15, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    sub-int v22, v15, v23

    .line 333
    .local v22, "delta":I
    const-string v15, "BatteryStatsDumper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Previous Battery Level: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Current Level: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Delta: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-gez v22, :cond_45a

    .line 336
    const/16 v22, 0x0

    .line 338
    :cond_45a
    sput v23, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    .line 341
    sget-object v16, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v26

    move/from16 v17, p1

    move/from16 v18, p2

    invoke-virtual/range {v16 .. v26}, Lcom/android/internal/os/BatteryStatsDBHelper;->addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V

    .line 343
    const-string v15, "BatteryStatsDumper"

    const-string v16, "Writing to database completed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 258
    nop

    :pswitch_data_476
    .packed-switch -0x2710
        :pswitch_354
    .end packed-switch
.end method

.method public updatePrevBatteryValue()V
    .registers 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDumper;->getBatteryLevel()I

    move-result v0

    sput v0, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    .line 404
    return-void
.end method
