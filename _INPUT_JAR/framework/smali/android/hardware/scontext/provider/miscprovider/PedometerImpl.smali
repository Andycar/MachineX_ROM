.class public Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
.super Landroid/hardware/scontext/provider/miscprovider/MiscProvider;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    }
.end annotation


# static fields
.field private static final MAXIMUM_WAITING_TIME:I = 0xea60

.field private static final PEDOMETER_VENDOR_ADSP:I = 0x3

.field private static final PEDOMETER_VENDOR_INVENSENSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerImpl"

.field private static mCumulativeInfo:Landroid/os/Bundle;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentInfo:Landroid/os/Bundle;

.field private mDiffInfo:Landroid/os/Bundle;

.field private final mDisplay:Landroid/view/Display;

.field private mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

.field private mGender:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:D

.field private mIsParsingNecessary:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;
    .param p3, "vendor"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/MiscProvider;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 67
    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    .line 71
    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 75
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 77
    iput v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    .line 79
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    .line 81
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    .line 85
    iput-boolean v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 591
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 99
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 100
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

    .line 102
    const/4 v0, 0x2

    if-ne p3, v0, :cond_60

    .line 103
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    .line 107
    :cond_54
    :goto_54
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    if-nez v0, :cond_5f

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 110
    :cond_5f
    return-void

    .line 104
    :cond_60
    const/4 v0, 0x3

    if-ne p3, v0, :cond_54

    .line 105
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    goto :goto_54
.end method

.method static synthetic access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    return-object p1
.end method

.method static synthetic access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    return-object v0
.end method

.method private convertContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .registers 13
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
    .param p4, "mode2"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    .line 525
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "names1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, "names2":[Ljava/lang/String;
    move-object v0, p1

    .line 530
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v2, :cond_d

    if-nez v3, :cond_f

    .line 531
    :cond_d
    const/4 v0, 0x0

    .line 547
    .end local v0    # "context":Landroid/os/Bundle;
    :cond_e
    return-object v0

    .line 534
    .restart local v0    # "context":Landroid/os/Bundle;
    :cond_f
    const/4 v4, 0x0

    .line 535
    .local v4, "size":I
    array-length v5, v2

    array-length v6, v3

    if-gt v5, v6, :cond_29

    .line 536
    array-length v4, v2

    .line 540
    :goto_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v4, :cond_e

    .line 541
    const/4 v5, 0x2

    if-ge v1, v5, :cond_2b

    .line 542
    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 540
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 538
    .end local v1    # "i":I
    :cond_29
    array-length v4, v3

    goto :goto_15

    .line 544
    .restart local v1    # "i":I
    :cond_2b
    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_26
.end method

.method private display(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 354
    if-nez p1, :cond_3

    .line 428
    :goto_2
    return-void

    .line 358
    :cond_3
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 359
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v15, "mode = ["

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    const-string v15, "Mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 361
    .local v7, "mode":I
    packed-switch v7, :pswitch_data_1fc

    .line 372
    :goto_19
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "], status = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "StepStatus"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], c = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "CalorieDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], d = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "DistanceDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], wf = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "WalkingFrequency"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], tsc = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "TotalStepCountDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], wsc = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "WalkStepCountDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], rsc = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "RunStepCountDiff"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], ctsc = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "CumulativeTotalStepCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v15, "LoggingCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1de

    .line 380
    const-string v15, "LoggingCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 381
    .local v6, "loggingCnt":I
    const-string v15, "TimeStampArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v12

    .line 382
    .local v12, "timestamp":[J
    const-string v15, "CalorieDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    .line 383
    .local v2, "calorie":[D
    const-string v15, "DistanceDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v3

    .line 384
    .local v3, "distance":[D
    const-string v15, "SpeedArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v10

    .line 385
    .local v10, "speed":[D
    const-string v15, "TotalStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v13

    .line 386
    .local v13, "totalStepCnt":[J
    const-string v15, "WalkStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v14

    .line 387
    .local v14, "walkStepCnt":[J
    const-string v15, "RunStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 388
    .local v8, "runStepCnt":[J
    const/4 v15, 0x7

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "TimeStampArray"

    aput-object v16, v11, v15

    const/4 v15, 0x1

    const-string v16, "cDiffArray"

    aput-object v16, v11, v15

    const/4 v15, 0x2

    const-string v16, "dDiffArray step"

    aput-object v16, v11, v15

    const/4 v15, 0x3

    const-string v16, "SpeedArray"

    aput-object v16, v11, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "tscDiffArray"

    aput-object v16, v11, v15

    const/4 v15, 0x5

    const-string/jumbo v16, "wscDiffArray"

    aput-object v16, v11, v15

    const/4 v15, 0x6

    const-string/jumbo v16, "rscDiffArray"

    aput-object v16, v11, v15

    .line 392
    .local v11, "str_array":[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ", LoggingCnt = ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15b
    array-length v15, v11

    if-ge v4, v15, :cond_1de

    .line 394
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v11, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " = [ "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_17d
    if-ge v5, v6, :cond_1d5

    .line 396
    packed-switch v4, :pswitch_data_204

    .line 421
    :goto_182
    add-int/lit8 v15, v6, -0x1

    if-ge v5, v15, :cond_18b

    .line 422
    const-string v15, ","

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    :cond_18b
    add-int/lit8 v5, v5, 0x1

    goto :goto_17d

    .line 363
    .end local v2    # "calorie":[D
    .end local v3    # "distance":[D
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "loggingCnt":I
    .end local v8    # "runStepCnt":[J
    .end local v10    # "speed":[D
    .end local v11    # "str_array":[Ljava/lang/String;
    .end local v12    # "timestamp":[J
    .end local v13    # "totalStepCnt":[J
    .end local v14    # "walkStepCnt":[J
    :pswitch_18e
    const-string/jumbo v15, "normal"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_19

    .line 366
    :pswitch_196
    const-string v15, "logging"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_19

    .line 398
    .restart local v2    # "calorie":[D
    .restart local v3    # "distance":[D
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "loggingCnt":I
    .restart local v8    # "runStepCnt":[J
    .restart local v10    # "speed":[D
    .restart local v11    # "str_array":[Ljava/lang/String;
    .restart local v12    # "timestamp":[J
    .restart local v13    # "totalStepCnt":[J
    .restart local v14    # "walkStepCnt":[J
    :pswitch_19d
    aget-wide v16, v12, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_182

    .line 401
    :pswitch_1a5
    aget-wide v16, v2, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_182

    .line 404
    :pswitch_1ad
    aget-wide v16, v3, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_182

    .line 407
    :pswitch_1b5
    aget-wide v16, v10, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_182

    .line 410
    :pswitch_1bd
    aget-wide v16, v13, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_182

    .line 413
    :pswitch_1c5
    aget-wide v16, v14, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_182

    .line 416
    :pswitch_1cd
    aget-wide v16, v8, v5

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_182

    .line 424
    :cond_1d5
    const-string v15, "]"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15b

    .line 427
    .end local v2    # "calorie":[D
    .end local v3    # "distance":[D
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "loggingCnt":I
    .end local v8    # "runStepCnt":[J
    .end local v10    # "speed":[D
    .end local v11    # "str_array":[Ljava/lang/String;
    .end local v12    # "timestamp":[J
    .end local v13    # "totalStepCnt":[J
    .end local v14    # "walkStepCnt":[J
    :cond_1de
    const-string v15, "SContext.MiscProvider.PedometerImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "display() : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 361
    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_18e
        :pswitch_196
    .end packed-switch

    .line 396
    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_19d
        :pswitch_1a5
        :pswitch_1ad
        :pswitch_1b5
        :pswitch_1bd
        :pswitch_1c5
        :pswitch_1cd
    .end packed-switch
.end method

.method private getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;
    .registers 13
    .param p1, "mode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, "names":[Ljava/lang/String;
    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "CalorieDiff"

    aput-object v4, v1, v6

    const-string v4, "DistanceDiff"

    aput-object v4, v1, v7

    const-string v4, "TotalStepCountDiff"

    aput-object v4, v1, v8

    const-string v4, "WalkStepCountDiff"

    aput-object v4, v1, v9

    const-string v4, "WalkUpStepCountDiff"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string v5, "WalkDownStepCountDiff"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "RunStepCountDiff"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "RunUpStepCountDiff"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "RunDownStepCountDiff"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "UpDownStepCountDiff"

    aput-object v5, v1, v4

    .line 437
    .local v1, "diffNames":[Ljava/lang/String;
    const/16 v4, 0xa

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "Calorie"

    aput-object v4, v3, v6

    const-string v4, "Distance"

    aput-object v4, v3, v7

    const-string v4, "TotalStepCount"

    aput-object v4, v3, v8

    const-string v4, "WalkStepCount"

    aput-object v4, v3, v9

    const-string v4, "WalkUpStepCount"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "WalkDownStepCount"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "RunStepCount"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "RunUpStepCount"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "RunDownStepCount"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "UpDownStepCount"

    aput-object v5, v3, v4

    .line 442
    .local v3, "sumNames":[Ljava/lang/String;
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "CumulativeCalorie"

    aput-object v4, v0, v6

    const-string v4, "CumulativeDistance"

    aput-object v4, v0, v7

    const-string v4, "CumulativeTotalStepCount"

    aput-object v4, v0, v8

    const-string v4, "CumulativeWalkFlatStepCount"

    aput-object v4, v0, v9

    const-string v4, "CumulativeWalkUpStepCount"

    aput-object v4, v0, v10

    const/4 v4, 0x5

    const-string v5, "CumulativeWalkDownStepCount"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "CumulativeRunFlatStepCount"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "CumulativeRunUpStepCount"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "CumulativeRunDownStepCount"

    aput-object v5, v0, v4

    .line 448
    .local v0, "cumulativeNames":[Ljava/lang/String;
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_9f

    .line 449
    move-object v2, v1

    .line 455
    :cond_9e
    :goto_9e
    return-object v2

    .line 450
    :cond_9f
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_a5

    .line 451
    move-object v2, v3

    goto :goto_9e

    .line 452
    :cond_a5
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_9e

    .line 453
    move-object v2, v0

    goto :goto_9e
.end method

.method private getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .registers 15
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
    .param p4, "mode2"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v5, 0x0

    .line 460
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-nez p4, :cond_b

    :cond_9
    move-object v0, v5

    .line 488
    :cond_a
    :goto_a
    return-object v0

    .line 464
    :cond_b
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "names1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "names2":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 469
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v2, :cond_1c

    if-nez v3, :cond_1e

    :cond_1c
    move-object v0, v5

    .line 470
    goto :goto_a

    .line 473
    :cond_1e
    const/4 v4, 0x0

    .line 474
    .local v4, "size":I
    array-length v5, v2

    array-length v6, v3

    if-gt v5, v6, :cond_3f

    .line 475
    array-length v4, v2

    .line 479
    :goto_24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v4, :cond_a

    .line 480
    const/4 v5, 0x2

    if-ge v1, v5, :cond_41

    .line 481
    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v3, v1

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 479
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 477
    .end local v1    # "i":I
    :cond_3f
    array-length v4, v3

    goto :goto_24

    .line 484
    .restart local v1    # "i":I
    :cond_41
    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    aget-object v8, v3, v1

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3c
.end method

.method private getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .registers 11
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    .line 493
    if-eqz p1, :cond_6

    if-nez p3, :cond_7

    .line 520
    :cond_6
    return-object v0

    .line 497
    :cond_7
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 502
    move-object v0, p1

    .line 503
    .local v0, "context":Landroid/os/Bundle;
    if-nez p2, :cond_28

    .line 504
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 505
    if-ge v1, v6, :cond_20

    .line 506
    aget-object v3, v2, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 504
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 508
    :cond_20
    aget-object v3, v2, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1d

    .line 512
    .end local v1    # "i":I
    :cond_28
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_29
    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 513
    if-ge v1, v6, :cond_3c

    .line 514
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 512
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 516
    :cond_3c
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_39
.end method

.method private initializeCurrentInfo()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    .line 294
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 295
    const/4 v3, 0x0

    .line 296
    .local v3, "mode":I
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "WalkingFrequency"

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 297
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "StepStatus"

    invoke-virtual {v6, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v7, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v8, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v6, v7, v8}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 299
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const/4 v7, 0x0

    sget-object v8, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v6, v7, v8}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 300
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    if-nez v6, :cond_38

    .line 330
    :goto_37
    return-void

    .line 304
    :cond_38
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_ae

    .line 305
    const/16 v6, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "CalorieDiffArray"

    aput-object v6, v4, v13

    const-string v6, "DistanceDiffArray"

    aput-object v6, v4, v9

    const-string v6, "TotalStepCountDiffArray"

    aput-object v6, v4, v14

    const/4 v6, 0x3

    const-string v7, "WalkStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "WalkUpStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "WalkDownStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "RunStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "RunUpStepCountDiffArray"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "RunDownStepCountDiffArray"

    aput-object v7, v4, v6

    .line 311
    .local v4, "names":[Ljava/lang/String;
    new-array v2, v9, [J

    .line 312
    .local v2, "longArray":[J
    new-array v0, v9, [D

    .line 313
    .local v0, "doubleArray":[D
    new-array v5, v9, [J

    .line 314
    .local v5, "timestampArray":[J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v5, v13

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7a
    array-length v6, v4

    if-ge v1, v6, :cond_91

    .line 317
    if-ge v1, v14, :cond_89

    .line 318
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 316
    :goto_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 320
    :cond_89
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_86

    .line 323
    :cond_91
    const/4 v3, 0x1

    .line 324
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "LoggingCount"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "TimeStampArray"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 326
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "Speed"

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 327
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "StepStatus"

    invoke-virtual {v6, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    .end local v0    # "doubleArray":[D
    .end local v1    # "i":I
    .end local v2    # "longArray":[J
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "timestampArray":[J
    :cond_ae
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "Mode"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_37
.end method

.method private isScreenOn()Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 553
    const/4 v0, 0x1

    .line 555
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private registerScreenReceiver()V
    .registers 4

    .prologue
    .line 336
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    return-void
.end method

.method private unregisterScreenReceiver()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    if-eqz v0, :cond_e

    .line 348
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 351
    :cond_e
    return-void
.end method


# virtual methods
.method public add()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 121
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_c

    .line 122
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 137
    :cond_b
    :goto_b
    return-void

    .line 124
    :cond_c
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->register()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 125
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->initializeCurrentInfo()V

    .line 126
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_24

    .line 127
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    .line 129
    :cond_24
    iput-boolean v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 130
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->registerScreenReceiver()V

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    .line 132
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 133
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->requestToUpdate()V

    goto :goto_b
.end method

.method public handleDiedBinder()V
    .registers 5

    .prologue
    .line 266
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v1, v2, :cond_17

    .line 267
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 268
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 270
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_17
    return-void
.end method

.method public onBinderDied()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    .line 249
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() : mExceptionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 254
    :goto_2d
    return-void

    .line 252
    :cond_2e
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->remove()V

    goto :goto_2d
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    if-eqz p1, :cond_62

    .line 190
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    if-eqz v0, :cond_69

    .line 192
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 196
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 199
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->convertContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 202
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-eq v0, v1, :cond_4a

    .line 204
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    .line 207
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 209
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_4a

    .line 210
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 213
    :cond_4a
    if-eqz p1, :cond_5b

    .line 214
    const-string v0, "LoggingCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 215
    const-string v0, "Mode"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    :goto_59
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 228
    :cond_5b
    :goto_5b
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_7a

    .line 229
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->display(Landroid/os/Bundle;)V

    .line 234
    :cond_62
    :goto_62
    return-object p1

    .line 217
    :cond_63
    const-string v0, "Mode"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_59

    .line 222
    :cond_69
    iput-boolean v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 223
    const/4 v0, 0x0

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 224
    if-eqz p1, :cond_5b

    .line 225
    const-string v0, "StepStatus"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5b

    .line 231
    :cond_7a
    const/4 p1, 0x0

    goto :goto_62
.end method

.method public remove()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 150
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->requestToUpdate()V

    .line 151
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_13

    .line 152
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    .line 154
    :cond_13
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->unregister()V

    .line 155
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->unregisterScreenReceiver()V

    .line 156
    return-void
.end method

.method public requestToUpdate()V
    .registers 4

    .prologue
    .line 282
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string/jumbo v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 285
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_1d

    .line 286
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 291
    :cond_1d
    :goto_1d
    return-void

    .line 289
    :cond_1e
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->requestToUpdate()V

    goto :goto_1d
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .registers 10
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    .line 168
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v6

    .line 169
    .local v6, "bundle":Landroid/os/Bundle;
    if-nez v6, :cond_10

    .line 170
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string/jumbo v1, "setProperty() : attribute is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_f
    return-void

    .line 173
    :cond_10
    const-string v0, "gender"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    .line 174
    const-string v0, "height"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    .line 175
    const-string/jumbo v0, "weight"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    .line 176
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    iget v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    iget-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    iget-wide v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setProperty(IDD)V

    .line 177
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string/jumbo v1, "setProperty()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
