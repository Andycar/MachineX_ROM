.class Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
.super Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.source "PedometerAdspImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    }
.end annotation


# static fields
.field private static final LOGGING_MAX_TIME:J = 0x124f80L

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerAdspImpl"

.field private static TYPE_PEDOMETER_LOGGING:I

.field private static TYPE_PEDOMETER_NORMAL:I


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private mFlushEnabled:Z

.field private final mIsBarometerAvailable:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mLoggingPedometer:Landroid/hardware/Sensor;

.field private mNormalPedometer:Landroid/hardware/Sensor;

.field private mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

.field private mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

.field private mPrevStepCnt:J

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const v0, 0x10020

    sput v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_NORMAL:I

    .line 40
    const v0, 0x10021

    sput v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_LOGGING:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    .line 64
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_64

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    .line 68
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 70
    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 411
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;

    invoke-direct {v1, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 74
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 75
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    sget v2, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_LOGGING:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mLoggingPedometer:Landroid/hardware/Sensor;

    .line 77
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    sget v2, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_NORMAL:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 79
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.barometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    .line 80
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mDisplay:Landroid/view/Display;

    .line 81
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    invoke-direct {v1}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 82
    return-void

    .line 64
    :array_64
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->parseEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private bytesToLong([B)J
    .registers 6
    .param p1, "bytes"    # [B

    .prologue
    .line 405
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 406
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 408
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    return-wide v2
.end method

.method private convertFloatToByteArray(FI)[B
    .registers 7
    .param p1, "value"    # F
    .param p2, "size"    # I

    .prologue
    .line 394
    new-array v0, p2, [B

    .line 395
    .local v0, "array":[B
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 396
    .local v1, "bits":I
    add-int/lit8 v2, p2, -0x4

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 397
    add-int/lit8 v2, p2, -0x3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 398
    add-int/lit8 v2, p2, -0x2

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 399
    add-int/lit8 v2, p2, -0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 401
    return-object v0
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
    .line 159
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v2, "context":Landroid/os/Bundle;
    move/from16 v0, p4

    new-array v12, v0, [J

    .line 162
    .local v12, "totalStepCountArray":[J
    move/from16 v0, p4

    new-array v10, v0, [J

    .line 163
    .local v10, "walkFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v32, v0

    .line 164
    .local v32, "walkUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 165
    .local v30, "walkDownStepCountArray":[J
    move/from16 v0, p4

    new-array v11, v0, [J

    .line 166
    .local v11, "runFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v26, v0

    .line 167
    .local v26, "runUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v24, v0

    .line 168
    .local v24, "runDownStepCountArray":[J
    move/from16 v0, p4

    new-array v13, v0, [D

    .line 169
    .local v13, "calorieArray":[D
    move/from16 v0, p4

    new-array v14, v0, [D

    .line 170
    .local v14, "distanceArray":[D
    move/from16 v0, p4

    new-array v15, v0, [D

    .line 171
    .local v15, "speedArray":[D
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 172
    .local v18, "totalStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v16, v0

    .line 173
    .local v16, "walkFlatStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v33, v0

    .line 174
    .local v33, "walkUpStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v31, v0

    .line 175
    .local v31, "walkDownStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v17, v0

    .line 176
    .local v17, "runFlatStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v27, v0

    .line 177
    .local v27, "runUpStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v25, v0

    .line 178
    .local v25, "runDownStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v19, v0

    .line 179
    .local v19, "calorieTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v20, v0

    .line 180
    .local v20, "distanceTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v22, v0

    .line 181
    .local v22, "walkingFrequencyTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 183
    .local v21, "statusTemp":[I
    if-eqz p2, :cond_70

    if-nez p3, :cond_153

    .line 184
    :cond_70
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v21, v3

    .line 195
    :cond_74
    :goto_74
    const-string v3, "Mode"

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v3, "StepStatus"

    const/4 v4, 0x0

    aget v4, v21, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v3, "CalorieDiff"

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 198
    const-string v3, "DistanceDiff"

    const/4 v4, 0x0

    aget-wide v4, v20, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 199
    const-string v3, "Speed"

    const/4 v4, 0x0

    aget-wide v4, v15, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 200
    const-string v3, "WalkingFrequency"

    const/4 v4, 0x0

    aget-wide v4, v22, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 201
    const-string v3, "TotalStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 202
    const-string v3, "WalkStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    const-string v3, "WalkUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v33, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 204
    const-string v3, "WalkDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v31, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 205
    const-string v3, "RunStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v17, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 206
    const-string v3, "RunUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v27, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 207
    const-string v3, "RunDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 208
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

    .line 210
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_17a

    .line 211
    const-string v3, "LoggingCount"

    move/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v3, "TimeStampArray"

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 213
    const-string v3, "CalorieDiffArray"

    invoke-virtual {v2, v3, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 214
    const-string v3, "DistanceDiffArray"

    invoke-virtual {v2, v3, v14}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 215
    const-string v3, "SpeedArray"

    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 216
    const-string v3, "TotalStepCountDiffArray"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 217
    const-string v3, "WalkStepCountDiffArray"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 218
    const-string v3, "WalkUpStepCountDiffArray"

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 219
    const-string v3, "WalkDownStepCountDiffArray"

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 220
    const-string v3, "RunStepCountDiffArray"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 221
    const-string v3, "RunUpStepCountDiffArray"

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 222
    const-string v3, "RunDownStepCountDiffArray"

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 223
    const-string v3, "StepStatus"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-wide/16 v28, 0x0

    .line 225
    .local v28, "speed":D
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_146
    move/from16 v0, v23

    move/from16 v1, p4

    if-ge v0, v1, :cond_16c

    .line 226
    aget-wide v4, v15, v23

    add-double v28, v28, v4

    .line 225
    add-int/lit8 v23, v23, 0x1

    goto :goto_146

    .line 186
    .end local v23    # "i":I
    .end local v28    # "speed":D
    :cond_153
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    if-nez v3, :cond_74

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v22}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V

    goto/16 :goto_74

    .line 228
    .restart local v23    # "i":I
    .restart local v28    # "speed":D
    :cond_16c
    if-lez p4, :cond_173

    .line 229
    move/from16 v0, p4

    int-to-double v4, v0

    div-double v28, v28, v4

    .line 231
    :cond_173
    const-string v3, "Speed"

    move-wide/from16 v0, v28

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 233
    .end local v23    # "i":I
    .end local v28    # "speed":D
    :cond_17a
    return-object v2
.end method

.method private parseEvent(Landroid/hardware/SensorEvent;)V
    .registers 40
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 237
    if-nez p1, :cond_3

    .line 391
    :goto_2
    return-void

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v34, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    aput-wide v36, v5, v34

    .line 241
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "parseEvent() : event type = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Sensor;->getType()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", mTimeStamp[0] = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-wide v36, v35, v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", mTimeStamp[1] = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-wide v36, v35, v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v7, 0x0

    .line 245
    .local v7, "walkStepCount":[J
    const/4 v8, 0x0

    .line 246
    .local v8, "runStepCount":[J
    const/4 v12, 0x0

    .line 247
    .local v12, "timeStamp":[J
    const-wide/16 v10, 0x0

    .line 248
    .local v10, "interval":J
    const/4 v9, 0x0

    .line 249
    .local v9, "dataSize":I
    const/4 v6, 0x0

    .line 250
    .local v6, "mode":I
    sget-object v23, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 252
    .local v23, "interruptMode":Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    sget v34, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_NORMAL:I

    move/from16 v0, v34

    if-ne v5, v0, :cond_18b

    .line 253
    const/4 v6, 0x0

    .line 254
    const/4 v9, 0x1

    .line 255
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v34, 0x0

    aget v5, v5, v34

    float-to-int v0, v5

    move/from16 v28, v0

    .line 256
    .local v28, "status":I
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v34, 0x1

    aget v5, v5, v34

    float-to-int v0, v5

    move/from16 v29, v0

    .line 257
    .local v29, "step_cnt":I
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "parseEvent() : status = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", stepCnt : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sparse-switch v28, :sswitch_data_3ec

    .line 269
    :goto_c3
    const/16 v5, 0x8

    move/from16 v0, v28

    if-eq v0, v5, :cond_111

    .line 270
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    move-wide/from16 v36, v0

    sub-long v16, v34, v36

    .line 271
    .local v16, "diffStepCnt":J
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 272
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "parseEvent() : diffStepCnt = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-array v7, v9, [J

    .line 274
    new-array v8, v9, [J

    .line 276
    const/4 v5, 0x6

    move/from16 v0, v28

    if-ne v0, v5, :cond_14e

    const-wide/16 v34, 0x6

    cmp-long v5, v16, v34

    if-nez v5, :cond_14e

    .line 277
    const-wide/16 v10, 0x0

    .line 383
    .end local v16    # "diffStepCnt":J
    .end local v28    # "status":I
    .end local v29    # "step_cnt":I
    :cond_111
    :goto_111
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 384
    if-lez v9, :cond_12e

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-interface {v0, v1, v5}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 390
    :cond_12e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-wide v36, v35, v36

    aput-wide v36, v5, v34

    goto/16 :goto_2

    .line 260
    .restart local v28    # "status":I
    .restart local v29    # "step_cnt":I
    :sswitch_142
    sget-object v23, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 261
    goto/16 :goto_c3

    .line 263
    :sswitch_146
    sget-object v23, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 264
    goto/16 :goto_c3

    .line 266
    :sswitch_14a
    sget-object v23, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    goto/16 :goto_c3

    .line 279
    .restart local v16    # "diffStepCnt":J
    :cond_14e
    const-wide/16 v34, 0x0

    cmp-long v5, v16, v34

    if-lez v5, :cond_111

    .line 280
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v34, 0x1

    aget-wide v34, v5, v34

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v36, 0x0

    aget-wide v36, v5, v36

    sub-long v10, v34, v36

    .line 281
    const-wide/16 v34, 0x6

    cmp-long v5, v16, v34

    if-lez v5, :cond_17c

    .line 282
    const/4 v5, 0x6

    move/from16 v0, v28

    if-ne v0, v5, :cond_179

    .line 283
    const-wide/16 v16, 0x6

    .line 284
    const-wide/16 v10, 0x0

    .line 291
    :cond_175
    :goto_175
    const/4 v5, 0x0

    aput-wide v16, v7, v5

    goto :goto_111

    .line 286
    :cond_179
    const-wide/16 v16, 0x1

    goto :goto_175

    .line 288
    :cond_17c
    const-wide/16 v34, 0x2

    cmp-long v5, v16, v34

    if-lez v5, :cond_175

    const-wide/16 v34, 0x6

    cmp-long v5, v16, v34

    if-gez v5, :cond_175

    .line 289
    const-wide/16 v16, 0x1

    goto :goto_175

    .line 295
    .end local v16    # "diffStepCnt":J
    .end local v28    # "status":I
    .end local v29    # "step_cnt":I
    :cond_18b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    sget v34, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_LOGGING:I

    move/from16 v0, v34

    if-ne v5, v0, :cond_111

    .line 296
    const/4 v6, 0x1

    .line 297
    sget-object v23, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 299
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->values:[F

    array-length v5, v5

    const/16 v34, 0xd

    move/from16 v0, v34

    if-eq v5, v0, :cond_1b2

    .line 300
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    const-string v34, "Invalid event value length!!"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 304
    :cond_1b2
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "parseEvent()    "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Sensor;->getType()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1d9
    const/16 v5, 0xd

    move/from16 v0, v22

    if-ge v0, v5, :cond_213

    .line 306
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "parseEvent()    data "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " :  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v35, v0

    aget v35, v35, v22

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    add-int/lit8 v22, v22, 0x1

    goto :goto_1d9

    .line 309
    :cond_213
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v34, 0x1

    aget v5, v5, v34

    const/16 v34, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v5, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v15

    .line 310
    .local v15, "end_time_values":[B
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v34, 0x2

    aget v5, v5, v34

    const/16 v34, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v5, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v14

    .line 312
    .local v14, "data_size":[B
    const-wide/16 v26, 0x0

    .line 313
    .local v26, "start_timestamp":J
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->bytesToLong([B)J

    move-result-wide v20

    .line 314
    .local v20, "end_timestamp":J
    sub-long v30, v20, v26

    .line 315
    .local v30, "total_interval":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->bytesToLong([B)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v9, v0

    .line 317
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "parseEvent() start_timestamp : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " end_timestamp : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " total_interval : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " datasize : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-array v7, v9, [J

    .line 322
    new-array v8, v9, [J

    .line 323
    new-array v12, v9, [J

    .line 325
    const-wide/32 v34, 0x124f80

    cmp-long v5, v30, v34

    if-ltz v5, :cond_316

    .line 326
    const-wide/32 v10, 0xea60

    .line 331
    :goto_2a1
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "parseEvent() interval "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v34, 0x1

    aget-wide v34, v5, v34

    sub-long v24, v34, v30

    .line 334
    .local v24, "start_time":J
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v34, 0x0

    aget-wide v34, v5, v34

    cmp-long v5, v24, v34

    if-gez v5, :cond_2e0

    .line 335
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v34, 0x0

    aget-wide v34, v5, v34

    const-wide/16 v36, 0x1

    add-long v24, v34, v36

    .line 337
    :cond_2e0
    const v5, 0xea60

    add-int/lit8 v34, v9, -0x1

    mul-int v5, v5, v34

    int-to-long v0, v5

    move-wide/from16 v34, v0

    add-long v34, v34, v24

    const-wide/32 v36, 0xea60

    div-long v34, v34, v36

    const-wide/32 v36, 0xea60

    mul-long v18, v34, v36

    .line 339
    .local v18, "end_time":J
    div-int/lit8 v5, v9, 0x2

    add-int/lit8 v33, v5, 0x1

    .line 341
    .local v33, "values_array_size":I
    const/16 v5, 0xb

    move/from16 v0, v33

    if-ne v0, v5, :cond_302

    .line 342
    const/16 v33, 0xa

    .line 344
    :cond_302
    const/16 v5, 0xa

    move/from16 v0, v33

    if-gt v0, v5, :cond_30a

    if-gez v33, :cond_31c

    .line 345
    :cond_30a
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    const-string/jumbo v34, "parseEvent() : Invalid byte array data size!!"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 328
    .end local v18    # "end_time":J
    .end local v24    # "start_time":J
    .end local v33    # "values_array_size":I
    :cond_316
    const-wide/32 v34, 0xea60

    rem-long v10, v30, v34

    goto :goto_2a1

    .line 348
    .restart local v18    # "end_time":J
    .restart local v24    # "start_time":J
    .restart local v33    # "values_array_size":I
    :cond_31c
    mul-int/lit8 v5, v33, 0x4

    new-array v0, v5, [B

    move-object/from16 v32, v0

    .line 350
    .local v32, "values":[B
    const/16 v22, 0x0

    :goto_324
    move/from16 v0, v22

    move/from16 v1, v33

    if-ge v0, v1, :cond_365

    .line 351
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->values:[F

    add-int/lit8 v34, v22, 0x3

    aget v5, v5, v34

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v5, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v4

    .line 352
    .local v4, "array":[B
    mul-int/lit8 v5, v22, 0x4

    const/16 v34, 0x0

    aget-byte v34, v4, v34

    aput-byte v34, v32, v5

    .line 353
    mul-int/lit8 v5, v22, 0x4

    add-int/lit8 v5, v5, 0x1

    const/16 v34, 0x1

    aget-byte v34, v4, v34

    aput-byte v34, v32, v5

    .line 354
    mul-int/lit8 v5, v22, 0x4

    add-int/lit8 v5, v5, 0x2

    const/16 v34, 0x2

    aget-byte v34, v4, v34

    aput-byte v34, v32, v5

    .line 355
    mul-int/lit8 v5, v22, 0x4

    add-int/lit8 v5, v5, 0x3

    const/16 v34, 0x3

    aget-byte v34, v4, v34

    aput-byte v34, v32, v5

    .line 350
    add-int/lit8 v22, v22, 0x1

    goto :goto_324

    .line 358
    .end local v4    # "array":[B
    :cond_365
    const/16 v5, 0x14

    if-gt v9, v5, :cond_36b

    if-gez v9, :cond_377

    .line 359
    :cond_36b
    const-string v5, "SContext.MiscProvider.PedometerAdspImpl"

    const-string/jumbo v34, "parseEvent() : Invalid logging data size!!"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 363
    :cond_377
    add-int/lit8 v13, v9, -0x1

    .line 364
    .local v13, "count":I
    const/16 v22, 0x0

    :goto_37b
    move/from16 v0, v22

    if-ge v0, v9, :cond_111

    .line 365
    mul-int/lit8 v5, v22, 0x2

    aget-byte v5, v32, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v0, v5

    move-wide/from16 v34, v0

    aput-wide v34, v8, v13

    .line 366
    mul-int/lit8 v5, v22, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v32, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v0, v5

    move-wide/from16 v34, v0

    aput-wide v34, v7, v13

    .line 367
    if-nez v13, :cond_3d9

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    sget-object v34, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    move-object/from16 v0, v34

    if-eq v5, v0, :cond_3d9

    .line 368
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v34, 0x0

    aget-wide v34, v5, v34

    cmp-long v5, v24, v34

    if-gez v5, :cond_3d6

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v34, 0x0

    aget-wide v34, v5, v34

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    aput-wide v34, v12, v13

    .line 378
    :goto_3bd
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    move-wide/from16 v34, v0

    aget-wide v36, v8, v13

    add-long v34, v34, v36

    aget-wide v36, v7, v13

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 379
    add-int/lit8 v13, v13, -0x1

    .line 364
    add-int/lit8 v22, v22, 0x1

    goto :goto_37b

    .line 371
    :cond_3d6
    aput-wide v24, v12, v13

    goto :goto_3bd

    .line 373
    :cond_3d9
    add-int/lit8 v5, v9, -0x1

    if-ne v13, v5, :cond_3e0

    .line 374
    aput-wide v18, v12, v13

    goto :goto_3bd

    .line 376
    :cond_3e0
    add-int/lit8 v5, v13, 0x1

    aget-wide v34, v12, v5

    const-wide/32 v36, 0xea60

    sub-long v34, v34, v36

    aput-wide v34, v12, v13

    goto :goto_3bd

    .line 258
    :sswitch_data_3ec
    .sparse-switch
        0x2 -> :sswitch_14a
        0x6 -> :sswitch_146
        0x8 -> :sswitch_142
    .end sparse-switch
.end method


# virtual methods
.method register()Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mLoggingPedometer:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 91
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 92
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 94
    const/4 v0, 0x1

    .line 100
    :cond_24
    :goto_24
    return v0

    .line 97
    :cond_25
    const/4 v0, 0x1

    goto :goto_24
.end method

.method declared-synchronized requestToUpdate()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_21

    .line 120
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    if-eqz v0, :cond_21

    .line 121
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    .line 122
    const-string v0, "SContext.MiscProvider.PedometerAdspImpl"

    const-string v1, "flush()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 126
    :cond_21
    monitor-exit p0

    return-void

    .line 119
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLoggingMode(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1d

    .line 132
    if-eqz p1, :cond_1f

    .line 133
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    .line 140
    :goto_13
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2d

    .line 143
    :cond_1d
    monitor-exit p0

    return-void

    .line 136
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2d

    goto :goto_13

    .line 131
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setProperty(IDD)V
    .registers 12
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    .line 112
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_pedometer_initialize(IDD)V

    .line 113
    return-void
.end method

.method unregister()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 107
    return-void
.end method
