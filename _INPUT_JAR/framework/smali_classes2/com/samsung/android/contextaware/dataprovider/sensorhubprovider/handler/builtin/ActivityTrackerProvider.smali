.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityTrackerProvider.java"


# instance fields
.field private mTimeStamp:J


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 56
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected final byteArrayToLong([B)J
    .registers 8
    .param p1, "bytes"    # [B

    .prologue
    const/16 v4, 0x8

    .line 295
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 296
    .local v0, "byte_buf":Ljava/nio/ByteBuffer;
    new-array v1, v4, [B

    .line 297
    .local v1, "change":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v4, :cond_11

    .line 298
    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 300
    :cond_11
    const/4 v2, 0x0

    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_22

    .line 301
    rsub-int/lit8 v3, v2, 0x7

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 303
    :cond_22
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 304
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    return-wide v4
.end method

.method public disable()V
    .registers 2

    .prologue
    .line 178
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->disable()V

    .line 179
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 180
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 166
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->enable()V

    .line 167
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 168
    return-void
.end method

.method protected getAccuracyType()B
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method protected getActivityType()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected getBatchingPeriod()I
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OperationMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 90
    const/16 v7, 0xb

    new-array v4, v7, [B

    .line 92
    .local v4, "packet":[B
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v7

    aput-byte v7, v4, v9

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v7

    if-gez v7, :cond_17

    .line 95
    const/4 v4, 0x0

    .line 122
    .end local v4    # "packet":[B
    :goto_16
    return-object v4

    .line 98
    .restart local v4    # "packet":[B
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v7

    invoke-static {v7, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 101
    .local v0, "activityType":[B
    aget-byte v7, v0, v9

    aput-byte v7, v4, v10

    .line 102
    aget-byte v7, v0, v10

    aput-byte v7, v4, v11

    .line 103
    aget-byte v7, v0, v11

    aput-byte v7, v4, v8

    .line 104
    aget-byte v7, v0, v8

    aput-byte v7, v4, v12

    .line 106
    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v8

    aput-byte v8, v4, v7

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v7

    invoke-static {v7, v11}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 110
    .local v1, "arBatchingPeriod":[B
    const/4 v7, 0x6

    aget-byte v8, v1, v9

    aput-byte v8, v4, v7

    .line 111
    const/4 v7, 0x7

    aget-byte v8, v1, v10

    aput-byte v8, v4, v7

    .line 113
    new-instance v7, Ljava/util/SimpleTimeZone;

    const-string v8, "GMT"

    invoke-direct {v7, v9, v8}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 115
    .local v6, "temp":Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 116
    .local v2, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 117
    .local v3, "minute":I
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 118
    .local v5, "second":I
    const/16 v7, 0x8

    int-to-byte v8, v2

    aput-byte v8, v4, v7

    .line 119
    const/16 v7, 0x9

    int-to-byte v8, v3

    aput-byte v8, v4, v7

    .line 120
    const/16 v7, 0xa

    int-to-byte v8, v5

    aput-byte v8, v4, v7

    goto :goto_16
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 133
    const/16 v3, 0x8

    new-array v2, v3, [B

    .line 135
    .local v2, "packet":[B
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v3

    aput-byte v3, v2, v5

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v3

    if-gez v3, :cond_17

    .line 138
    const/4 v2, 0x0

    .line 155
    .end local v2    # "packet":[B
    :goto_16
    return-object v2

    .line 141
    .restart local v2    # "packet":[B
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v3

    invoke-static {v3, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 143
    .local v0, "activityType":[B
    aget-byte v3, v0, v5

    aput-byte v3, v2, v6

    .line 144
    aget-byte v3, v0, v6

    aput-byte v3, v2, v7

    .line 145
    aget-byte v3, v0, v7

    aput-byte v3, v2, v4

    .line 146
    aget-byte v3, v0, v4

    aput-byte v3, v2, v8

    .line 148
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v4

    aput-byte v4, v2, v3

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v3

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 152
    .local v1, "arBatchingPeriod":[B
    const/4 v3, 0x6

    aget-byte v4, v1, v5

    aput-byte v4, v2, v3

    .line 153
    const/4 v3, 0x7

    aget-byte v4, v1, v6

    aput-byte v4, v2, v3

    goto :goto_16
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 67
    const/16 v0, 0x1a

    return v0
.end method

.method protected abstract getModeType()B
.end method

.method protected getTimeStamp()J
    .registers 3

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mTimeStamp:J

    return-wide v0
.end method

.method public parse([BI)I
    .registers 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 217
    move v4, p2

    .line 219
    .local v4, "tmpNext":I
    array-length v6, p1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x4

    if-gez v6, :cond_14

    .line 220
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 221
    const/4 v6, -0x1

    .line 245
    :goto_13
    return v6

    .line 224
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "names":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 228
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 229
    .local v1, "timeTemp":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v6, p1, v4

    aput-byte v6, v1, v9

    .line 230
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v6, p1, v5

    aput-byte v6, v1, v10

    .line 231
    const/4 v6, 0x2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v7, p1, v4

    aput-byte v7, v1, v6

    .line 232
    const/4 v6, 0x3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v7, p1, v5

    aput-byte v7, v1, v6

    .line 233
    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->byteArrayToLong([B)J

    move-result-wide v2

    .line 234
    .local v2, "time_tempdata":J
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v10

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 237
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mTimeStamp:J

    .line 239
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->parseData([BI)I

    move-result v4

    .line 241
    if-lez v4, :cond_6a

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->notifyObserver()V

    :cond_6a
    move v6, v4

    .line 245
    goto :goto_13
.end method

.method protected parseData([BI)I
    .registers 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 258
    move v3, p2

    .line 260
    .local v3, "tmpNext":I
    array-length v5, p1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_12

    .line 261
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 262
    const/4 v5, -0x1

    .line 273
    :goto_11
    return v5

    .line 265
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "names":[Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v1, p1, v3

    .line 268
    .local v1, "activityType":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 270
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v0, p1, v4

    .line 271
    .local v0, "accuracy":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v5, v3

    .line 273
    goto :goto_11
.end method
