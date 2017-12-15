.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.source "ActivityTrackerBatchRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    }
.end annotation


# static fields
.field private static CHECK_PERIOD:J = 0x0L

.field private static DEFAULT_ACTIVITY_RECORDING_PERIOD:I = 0x0

.field private static final DEFAULT_BATCHING_PERIOD:I = 0x4b0


# instance fields
.field private final mBatchingPeriod:I

.field private final mListActivityInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    const v0, 0x1b7740

    sput v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    .line 51
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 54
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mBatchingPeriod:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method private getMostActivity()I
    .registers 15

    .prologue
    .line 187
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 190
    .local v5, "size":I
    const/4 v4, 0x1

    .line 193
    .local v4, "retActivity":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 195
    if-lez v5, :cond_3e

    .line 197
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    sget-wide v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_3f

    .line 199
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v4, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 233
    :cond_3e
    :goto_3e
    return v4

    .line 201
    :cond_3f
    const-wide/16 v6, 0x0

    .line 202
    .local v6, "sumDuration":J
    add-int/lit8 v1, v5, -0x1

    .line 203
    .local v1, "i":I
    const/4 v3, 0x0

    .line 204
    .local v3, "maxWeight":F
    const/4 v2, 0x1

    .line 205
    .local v2, "k":I
    add-int/lit8 v0, v5, -0x1

    .line 207
    .local v0, "actIndex":I
    :goto_47
    const-wide/16 v10, 0x7530

    cmp-long v9, v6, v10

    if-gtz v9, :cond_85

    if-ltz v1, :cond_85

    .line 210
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    const-wide/16 v12, 0xbb8

    cmp-long v9, v10, v12

    if-gez v9, :cond_62

    .line 211
    add-int/lit8 v1, v1, -0x1

    .line 212
    goto :goto_47

    .line 215
    :cond_62
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    int-to-long v12, v2

    div-long/2addr v10, v12

    long-to-float v8, v10

    .line 216
    .local v8, "weight":F
    cmpg-float v9, v3, v8

    if-gez v9, :cond_77

    .line 217
    move v3, v8

    .line 218
    move v0, v1

    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 222
    :cond_77
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    add-long/2addr v6, v10

    .line 223
    add-int/lit8 v1, v1, -0x1

    .line 224
    goto :goto_47

    .line 227
    .end local v8    # "weight":F
    :cond_85
    iget-object v9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v4, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    goto :goto_3e
.end method

.method private updateActivityInfo([I[J[II)V
    .registers 21
    .param p1, "activityType"    # [I
    .param p2, "duration"    # [J
    .param p3, "accuracy"    # [I
    .param p4, "totalCnt"    # I

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getTimeStamp()J

    move-result-wide v8

    .line 242
    .local v8, "timeStamp":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    move/from16 v0, p4

    if-ge v2, v0, :cond_74

    .line 245
    aget v10, p1, v2

    if-eqz v10, :cond_11

    aget v10, p3, v2

    if-nez v10, :cond_14

    .line 242
    :cond_11
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 253
    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 254
    .local v5, "size":I
    if-eqz v5, :cond_44

    .line 255
    aget v11, p1, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v10, v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    if-ne v11, v10, :cond_44

    .line 256
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v12, v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    aget-wide v14, p2, v2

    add-long/2addr v12, v14

    iput-wide v12, v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    goto :goto_11

    .line 262
    :cond_44
    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;)V

    .line 263
    .local v3, "info":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    aget v10, p1, v2

    iput v10, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 264
    iget v10, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_58

    .line 265
    const/4 v10, 0x1

    iput v10, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 268
    :cond_58
    aget-wide v10, p2, v2

    iput-wide v10, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    .line 269
    aget v10, p3, v2

    iput v10, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->accuracy:I

    .line 270
    if-nez v2, :cond_6c

    .line 271
    iput-wide v8, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    .line 275
    :goto_64
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 273
    :cond_6c
    add-int/lit8 v10, v2, -0x1

    aget-wide v10, p2, v10

    add-long/2addr v10, v8

    iput-wide v10, v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    goto :goto_64

    .line 279
    .end local v3    # "info":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    .end local v5    # "size":I
    :cond_74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    int-to-long v12, v12

    sub-long v6, v10, v12

    .line 283
    .local v6, "startTime":J
    const/4 v2, 0x0

    :goto_7e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_98

    .line 284
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    cmp-long v10, v10, v6

    if-ltz v10, :cond_a6

    .line 289
    :cond_98
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_99
    if-ge v4, v2, :cond_a9

    .line 290
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_99

    .line 283
    .end local v4    # "j":I
    :cond_a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 292
    .restart local v4    # "j":I
    :cond_a9
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 326
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->clear()V

    .line 329
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 314
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 315
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->disable()V

    .line 316
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 302
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 303
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->enable()V

    .line 304
    return-void
.end method

.method protected final getBatchingPeriod()I
    .registers 2

    .prologue
    .line 94
    const/16 v0, 0x4b0

    return v0
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OperationMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MostActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 363
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getModeType()B
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x2

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 339
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 351
    return-object p0
.end method

.method protected final parseData([BI)I
    .registers 15
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 141
    move v5, p2

    .line 143
    .local v5, "tmpNext":I
    array-length v9, p1

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_13

    .line 144
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v8

    .line 181
    :goto_12
    return v6

    .line 148
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "names":[Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v7, p1, v5

    .line 151
    .local v7, "totalCnt":I
    if-gtz v7, :cond_29

    .line 152
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_BATCH_DATA_COUNT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v5, v6

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    move v6, v8

    .line 153
    goto :goto_12

    .line 155
    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_29
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 157
    new-array v1, v7, [I

    .line 158
    .local v1, "activityType":[I
    new-array v0, v7, [I

    .line 159
    .local v0, "accuracy":[I
    new-array v2, v7, [J

    .line 161
    .local v2, "duration":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    if-ge v3, v7, :cond_79

    .line 162
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x5

    if-gez v9, :cond_4e

    .line 163
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v5, v6

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    move v6, v8

    .line 164
    goto :goto_12

    .line 167
    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_4e
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v9, p1, v6

    aput v9, v1, v3

    .line 168
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v9, p1, v5

    aput v9, v0, v3

    .line 169
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v9, p1, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v10, p1, v6

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    int-to-long v10, v9

    aput-wide v10, v2, v3

    .line 161
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_3a

    .line 174
    :cond_79
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x5

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 178
    invoke-direct {p0, v1, v2, v0, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->updateActivityInfo([I[J[II)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x6

    aget-object v9, v4, v9

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getMostActivity()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v5, v6

    .line 181
    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    goto/16 :goto_12
.end method
