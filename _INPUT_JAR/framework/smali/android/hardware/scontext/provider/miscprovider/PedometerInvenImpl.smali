.class Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
.super Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    }
.end annotation


# static fields
.field private static final LOGGING_MAX_TIME:J = 0x124f80L

.field private static final PATH_CADENCE:Ljava/lang/String; = "/shealth_cadence"

.field private static final PATH_CADENCE_ENABLE:Ljava/lang/String; = "/shealth_cadence_enable"

.field private static final PATH_CADENCE_INTERRUPT:Ljava/lang/String; = "/event_shealth_int"

.field private static final PATH_FLUSH_CADENCE:Ljava/lang/String; = "/shealth_flush_cadence"

.field private static final PATH_PREFIX:Ljava/lang/String; = "/sys/bus/iio/devices/iio:device"

.field private static final PATH_STEPCOUNT:Ljava/lang/String; = "/pedometer_steps"

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerInvenImpl"


# instance fields
.field private mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

.field private final mIsBarometerAvailable:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

.field private final mPrefix:Ljava/lang/String;

.field private mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field private mPrevStepCnt:J

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    .line 66
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 68
    iput-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 72
    iput-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    .line 74
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_72

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    .line 78
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 80
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 417
    new-instance v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 86
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 87
    const-string/jumbo v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 88
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    .line 89
    new-instance v3, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    invoke-direct {v3}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;-><init>()V

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 91
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.sensor.barometer"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    .line 92
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->getDeviceNode()I

    move-result v0

    .line 93
    .local v0, "node":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    .line 96
    return-void

    .line 74
    :array_72
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 38
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .prologue
    .line 38
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    return-object p1
.end method

.method private getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;
    .registers 43
    .param p1, "mode"    # I
    .param p2, "walkCadence"    # [J
    .param p3, "runCadence"    # [J
    .param p4, "dataSize"    # I
    .param p5, "interval"    # J
    .param p7, "timeStampArray"    # [J

    .prologue
    .line 209
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v2, "context":Landroid/os/Bundle;
    move/from16 v0, p4

    new-array v12, v0, [J

    .line 212
    .local v12, "totalStepCountArray":[J
    move/from16 v0, p4

    new-array v10, v0, [J

    .line 213
    .local v10, "walkFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v32, v0

    .line 214
    .local v32, "walkUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 215
    .local v30, "walkDownStepCountArray":[J
    move/from16 v0, p4

    new-array v11, v0, [J

    .line 216
    .local v11, "runFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v26, v0

    .line 217
    .local v26, "runUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v24, v0

    .line 218
    .local v24, "runDownStepCountArray":[J
    move/from16 v0, p4

    new-array v13, v0, [D

    .line 219
    .local v13, "calorieArray":[D
    move/from16 v0, p4

    new-array v14, v0, [D

    .line 220
    .local v14, "distanceArray":[D
    move/from16 v0, p4

    new-array v15, v0, [D

    .line 221
    .local v15, "speedArray":[D
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 222
    .local v18, "totalStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v16, v0

    .line 223
    .local v16, "walkFlatStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v33, v0

    .line 224
    .local v33, "walkUpStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v31, v0

    .line 225
    .local v31, "walkDownStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v17, v0

    .line 226
    .local v17, "runFlatStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v27, v0

    .line 227
    .local v27, "runUpStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v25, v0

    .line 228
    .local v25, "runDownStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v19, v0

    .line 229
    .local v19, "calorieTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v20, v0

    .line 230
    .local v20, "distanceTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v22, v0

    .line 231
    .local v22, "walkingFrequencyTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 233
    .local v21, "statusTemp":[I
    if-eqz p2, :cond_70

    if-nez p3, :cond_153

    .line 234
    :cond_70
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v21, v3

    .line 245
    :cond_74
    :goto_74
    const-string v3, "Mode"

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v3, "StepStatus"

    const/4 v4, 0x0

    aget v4, v21, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string v3, "CalorieDiff"

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 248
    const-string v3, "DistanceDiff"

    const/4 v4, 0x0

    aget-wide v4, v20, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 249
    const-string v3, "Speed"

    const/4 v4, 0x0

    aget-wide v4, v15, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 250
    const-string v3, "WalkingFrequency"

    const/4 v4, 0x0

    aget-wide v4, v22, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 251
    const-string v3, "TotalStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 252
    const-string v3, "WalkStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    const-string v3, "WalkUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v33, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 254
    const-string v3, "WalkDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v31, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 255
    const-string v3, "RunStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v17, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 256
    const-string v3, "RunUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v27, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 257
    const-string v3, "RunDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 258
    const-string v3, "UpDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v33, v4

    const/4 v6, 0x0

    aget-wide v6, v31, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v27, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v25, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 260
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_17a

    .line 261
    const-string v3, "LoggingCount"

    move/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string v3, "TimeStampArray"

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 263
    const-string v3, "CalorieDiffArray"

    invoke-virtual {v2, v3, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 264
    const-string v3, "DistanceDiffArray"

    invoke-virtual {v2, v3, v14}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 265
    const-string v3, "SpeedArray"

    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 266
    const-string v3, "TotalStepCountDiffArray"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 267
    const-string v3, "WalkStepCountDiffArray"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 268
    const-string v3, "WalkUpStepCountDiffArray"

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 269
    const-string v3, "WalkDownStepCountDiffArray"

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 270
    const-string v3, "RunStepCountDiffArray"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 271
    const-string v3, "RunUpStepCountDiffArray"

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 272
    const-string v3, "RunDownStepCountDiffArray"

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 273
    const-string v3, "StepStatus"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-wide/16 v28, 0x0

    .line 275
    .local v28, "speed":D
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_146
    move/from16 v0, v23

    move/from16 v1, p4

    if-ge v0, v1, :cond_16c

    .line 276
    aget-wide v4, v15, v23

    add-double v28, v28, v4

    .line 275
    add-int/lit8 v23, v23, 0x1

    goto :goto_146

    .line 236
    .end local v23    # "i":I
    .end local v28    # "speed":D
    :cond_153
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    if-nez v3, :cond_74

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v22}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V

    goto/16 :goto_74

    .line 278
    .restart local v23    # "i":I
    .restart local v28    # "speed":D
    :cond_16c
    if-lez p4, :cond_173

    .line 279
    move/from16 v0, p4

    int-to-double v4, v0

    div-double v28, v28, v4

    .line 281
    :cond_173
    const-string v3, "Speed"

    move-wide/from16 v0, v28

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 283
    .end local v23    # "i":I
    .end local v28    # "speed":D
    :cond_17a
    return-object v2
.end method

.method private getDeviceNode()I
    .registers 6

    .prologue
    .line 401
    const/4 v2, 0x0

    .line 402
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 403
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .line 404
    .local v1, "node":I
    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_35

    .line 405
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 406
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v3, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 408
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/shealth_cadence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 414
    :cond_35
    return v1

    .line 412
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .registers 39
    .param p1, "interruptMode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p2, :cond_9

    sget-object v5, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_9

    .line 398
    :cond_8
    :goto_8
    return-void

    .line 290
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v30, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    aput-wide v32, v5, v30

    .line 291
    const-string v5, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "parseCadence() : Interrupt Mode = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", mTimeStamp[0] = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-wide v32, v31, v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", mTimeStamp[1] = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-wide v32, v31, v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v7, 0x0

    .line 295
    .local v7, "walkStepCount":[J
    const/4 v8, 0x0

    .line 296
    .local v8, "runStepCount":[J
    const/4 v12, 0x0

    .line 297
    .local v12, "timeStamp":[J
    const-wide/16 v10, 0x0

    .line 298
    .local v10, "interval":J
    const/4 v9, 0x0

    .line 299
    .local v9, "dataSize":I
    const/4 v6, 0x0

    .line 300
    .local v6, "mode":I
    sget-object v5, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_8c

    .line 301
    const/4 v6, 0x0

    .line 302
    const/4 v9, 0x1

    .line 392
    :cond_73
    :goto_73
    if-lez v9, :cond_8

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v0, v1, v5}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_8

    .line 303
    :cond_8c
    sget-object v5, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_98

    sget-object v5, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_10a

    .line 305
    :cond_98
    const/4 v6, 0x0

    .line 307
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    move-wide/from16 v32, v0

    sub-long v14, v30, v32

    .line 308
    .local v14, "diffStepCnt":J
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 309
    const/4 v9, 0x1

    .line 310
    new-array v7, v9, [J

    .line 311
    new-array v8, v9, [J

    .line 313
    sget-object v5, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_cb

    const-wide/16 v30, 0x6

    cmp-long v5, v14, v30

    if-nez v5, :cond_cb

    .line 314
    const-wide/16 v10, 0x0

    goto :goto_73

    .line 316
    :cond_cb
    const-wide/16 v30, 0x0

    cmp-long v5, v14, v30

    if-lez v5, :cond_73

    .line 317
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v30, 0x1

    aget-wide v30, v5, v30

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v32, 0x0

    aget-wide v32, v5, v32

    sub-long v10, v30, v32

    .line 318
    const-wide/16 v30, 0x6

    cmp-long v5, v14, v30

    if-lez v5, :cond_fb

    .line 319
    sget-object v5, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_f8

    .line 320
    const-wide/16 v14, 0x6

    .line 321
    const-wide/16 v10, 0x0

    .line 328
    :cond_f3
    :goto_f3
    const/4 v5, 0x0

    aput-wide v14, v7, v5

    goto/16 :goto_73

    .line 323
    :cond_f8
    const-wide/16 v14, 0x1

    goto :goto_f3

    .line 325
    :cond_fb
    const-wide/16 v30, 0x2

    cmp-long v5, v14, v30

    if-lez v5, :cond_f3

    const-wide/16 v30, 0x6

    cmp-long v5, v14, v30

    if-gez v5, :cond_f3

    .line 326
    const-wide/16 v14, 0x1

    goto :goto_f3

    .line 331
    .end local v14    # "diffStepCnt":J
    :cond_10a
    sget-object v5, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_73

    .line 332
    const/4 v6, 0x1

    .line 333
    new-instance v27, Ljava/util/StringTokenizer;

    const-string v5, ","

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v27, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v20, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_121
    invoke-virtual/range {v27 .. v27}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_139

    .line 336
    invoke-virtual/range {v27 .. v27}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    .line 337
    .local v21, "strToken":Ljava/lang/String;
    const-string v5, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_139

    .line 338
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_121

    .line 344
    .end local v21    # "strToken":Ljava/lang/String;
    :cond_139
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v30, 0x3

    move/from16 v0, v30

    if-lt v5, v0, :cond_8

    .line 348
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 349
    .local v22, "start_mpu_nano_time":J
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 350
    .local v16, "end_mpu_nano_time":J
    sub-long v30, v16, v22

    const-wide/32 v32, 0xf4240

    div-long v28, v30, v32

    .line 351
    .local v28, "total_interval":J
    const-wide/32 v30, 0x124f80

    cmp-long v5, v28, v30

    if-ltz v5, :cond_1a1

    .line 352
    const-wide/32 v10, 0xea60

    .line 356
    :goto_16e
    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 357
    const/4 v5, 0x1

    if-lt v9, v5, :cond_182

    const/16 v5, 0x14

    if-le v9, v5, :cond_1a7

    .line 358
    :cond_182
    const-string v5, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "the size of cadence is wrong. : size = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 354
    :cond_1a1
    const-wide/32 v30, 0xea60

    rem-long v10, v28, v30

    goto :goto_16e

    .line 362
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v30, 0x1

    aget-wide v30, v5, v30

    sub-long v32, v16, v22

    const-wide/32 v34, 0xf4240

    div-long v32, v32, v34

    sub-long v24, v30, v32

    .line 363
    .local v24, "start_time":J
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v30, 0x0

    aget-wide v30, v5, v30

    cmp-long v5, v24, v30

    if-gez v5, :cond_1d0

    .line 364
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v30, 0x0

    aget-wide v30, v5, v30

    const-wide/16 v32, 0x1

    add-long v24, v30, v32

    .line 366
    :cond_1d0
    const v5, 0xea60

    add-int/lit8 v30, v9, -0x1

    mul-int v5, v5, v30

    int-to-long v0, v5

    move-wide/from16 v30, v0

    add-long v30, v30, v24

    const-wide/32 v32, 0xea60

    div-long v30, v30, v32

    const-wide/32 v32, 0xea60

    mul-long v18, v30, v32

    .line 367
    .local v18, "end_time":J
    new-array v7, v9, [J

    .line 368
    new-array v8, v9, [J

    .line 369
    new-array v12, v9, [J

    .line 371
    add-int/lit8 v4, v9, -0x1

    .line 372
    .local v4, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1ef
    if-ge v13, v9, :cond_73

    .line 373
    add-int/lit8 v5, v13, 0x3

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 374
    .local v26, "temp":I
    shr-int/lit8 v5, v26, 0x8

    int-to-long v0, v5

    move-wide/from16 v30, v0

    aput-wide v30, v8, v4

    .line 375
    move/from16 v0, v26

    and-int/lit16 v5, v0, 0xff

    int-to-long v0, v5

    move-wide/from16 v30, v0

    aput-wide v30, v7, v4

    .line 376
    if-nez v4, :cond_251

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v30, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, v30

    if-eq v5, v0, :cond_251

    .line 377
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v30, 0x0

    aget-wide v30, v5, v30

    cmp-long v5, v24, v30

    if-gez v5, :cond_24e

    .line 378
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v30, 0x0

    aget-wide v30, v5, v30

    const-wide/16 v32, 0x1

    add-long v30, v30, v32

    aput-wide v30, v12, v4

    .line 387
    :goto_235
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    move-wide/from16 v30, v0

    aget-wide v32, v8, v4

    add-long v30, v30, v32

    aget-wide v32, v7, v4

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 388
    add-int/lit8 v4, v4, -0x1

    .line 372
    add-int/lit8 v13, v13, 0x1

    goto :goto_1ef

    .line 380
    :cond_24e
    aput-wide v24, v12, v4

    goto :goto_235

    .line 382
    :cond_251
    add-int/lit8 v5, v9, -0x1

    if-ne v4, v5, :cond_258

    .line 383
    aput-wide v18, v12, v4

    goto :goto_235

    .line 385
    :cond_258
    add-int/lit8 v5, v4, 0x1

    aget-wide v30, v12, v5

    const-wide/32 v32, 0xea60

    sub-long v30, v30, v32

    aput-wide v30, v12, v4

    goto :goto_235
.end method


# virtual methods
.method register()Z
    .registers 7

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 104
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    if-nez v1, :cond_1f

    .line 105
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    .line 106
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    invoke-virtual {v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->start()V

    .line 108
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 109
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v2

    .line 110
    const/4 v0, 0x1

    .line 112
    :cond_2a
    return v0
.end method

.method requestToUpdate()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "cadFile":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    :try_start_5
    new-array v0, v6, [C

    .line 134
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/shealth_flush_cadence"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_26} :catch_58
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_6f
    .catchall {:try_start_5 .. :try_end_26} :catchall_86

    .line 135
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .local v2, "cadFile":Ljava/io/BufferedReader;
    if-eqz v2, :cond_43

    if-eqz v0, :cond_43

    .line 136
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 137
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .line 138
    .local v4, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_43

    .line 139
    const/4 v6, 0x0

    add-int/lit8 v7, v4, -0x1

    invoke-static {v0, v6, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "strCad":Ljava/lang/String;
    sget-object v6, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    invoke-direct {p0, v6, v5}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_43} :catch_a0
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_43} :catch_9d
    .catchall {:try_start_2a .. :try_end_43} :catchall_9a

    .line 149
    .end local v4    # "len":I
    .end local v5    # "strCad":Ljava/lang/String;
    :cond_43
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v8, v7, v9

    aput-wide v8, v6, v10

    .line 150
    if-eqz v2, :cond_a3

    .line 152
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_52

    move-object v1, v2

    .line 159
    .end local v0    # "buffer":[C
    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    :cond_51
    :goto_51
    return-void

    .line 153
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":[C
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_52
    move-exception v3

    .line 155
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 156
    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_51

    .line 144
    .end local v0    # "buffer":[C
    .end local v3    # "e":Ljava/io/IOException;
    :catch_58
    move-exception v3

    .line 145
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_59
    :try_start_59
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_86

    .line 149
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v8, v7, v9

    aput-wide v8, v6, v10

    .line 150
    if-eqz v1, :cond_51

    .line 152
    :try_start_66
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_51

    .line 153
    :catch_6a
    move-exception v3

    .line 155
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 146
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6f
    move-exception v3

    .line 147
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_70
    :try_start_70
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_86

    .line 149
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v8, v7, v9

    aput-wide v8, v6, v10

    .line 150
    if-eqz v1, :cond_51

    .line 152
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_51

    .line 153
    :catch_81
    move-exception v3

    .line 155
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 149
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_86
    move-exception v6

    :goto_87
    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v8, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v8, v8, v9

    aput-wide v8, v7, v10

    .line 150
    if-eqz v1, :cond_94

    .line 152
    :try_start_91
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    .line 156
    :cond_94
    :goto_94
    throw v6

    .line 153
    :catch_95
    move-exception v3

    .line 155
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_94

    .line 149
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[C
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catchall_9a
    move-exception v6

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_87

    .line 146
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_9d
    move-exception v3

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_70

    .line 144
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_a0
    move-exception v3

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_59

    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :cond_a3
    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_51
.end method

.method setLoggingMode(Z)V
    .registers 11
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 164
    const-string v4, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLoggingMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shealth_cadence_enable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 168
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_36
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3b} :catch_a8
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_77
    .catchall {:try_start_36 .. :try_end_3b} :catchall_8e

    .line 169
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_44

    .line 170
    if-eqz p1, :cond_53

    .line 171
    const/16 v4, 0x31

    :try_start_41
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_44} :catch_59
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_a5
    .catchall {:try_start_41 .. :try_end_44} :catchall_a2

    .line 183
    :cond_44
    :goto_44
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v6, v5, v7

    aput-wide v6, v4, v8

    .line 184
    if-eqz v3, :cond_aa

    .line 186
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_71

    move-object v2, v3

    .line 193
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_52
    :goto_52
    return-void

    .line 173
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_53
    const/16 v4, 0x30

    :try_start_55
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_59
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_a5
    .catchall {:try_start_55 .. :try_end_58} :catchall_a2

    goto :goto_44

    .line 176
    :catch_59
    move-exception v0

    move-object v2, v3

    .line 178
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_5b
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_8e

    .line 183
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v6, v5, v7

    aput-wide v6, v4, v8

    .line 184
    if-eqz v2, :cond_52

    .line 186
    :try_start_68
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_52

    .line 187
    :catch_6c
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_71
    move-exception v0

    .line 189
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 190
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_52

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catch_77
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_78
    :try_start_78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_8e

    .line 183
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v6, v5, v7

    aput-wide v6, v4, v8

    .line 184
    if-eqz v2, :cond_52

    .line 186
    :try_start_85
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_52

    .line 187
    :catch_89
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_8e
    move-exception v4

    :goto_8f
    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v6, v6, v7

    aput-wide v6, v5, v8

    .line 184
    if-eqz v2, :cond_9c

    .line 186
    :try_start_99
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 190
    :cond_9c
    :goto_9c
    throw v4

    .line 187
    :catch_9d
    move-exception v0

    .line 189
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9c

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_a2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8f

    .line 179
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_a5
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_78

    .line 176
    :catch_a8
    move-exception v0

    goto :goto_5b

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_aa
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_52
.end method

.method setProperty(IDD)V
    .registers 12
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    .line 125
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_pedometer_initialize(IDD)V

    .line 126
    return-void
.end method

.method unregister()V
    .registers 4

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 119
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 120
    return-void
.end method
