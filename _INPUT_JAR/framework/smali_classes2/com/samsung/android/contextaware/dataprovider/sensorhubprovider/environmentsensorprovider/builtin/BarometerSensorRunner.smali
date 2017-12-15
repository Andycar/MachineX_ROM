.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "BarometerSensorRunner.java"


# instance fields
.field private mBarometerData:[I

.field private mBarometerInitData:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 4
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 92
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 93
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    .line 97
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 205
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 206
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->disable()V

    .line 207
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 192
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 193
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->enable()V

    .line 194
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Barometer"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-array v1, v6, [B

    .line 75
    .local v1, "packet":[B
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 77
    .local v0, "data":[B
    aput-byte v6, v1, v3

    .line 78
    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    .line 79
    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    .line 81
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 219
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 168
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 180
    return-object p0
.end method

.method public final parse([BI)I
    .registers 13
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v6, -0x1

    .line 119
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 120
    .local v5, "tmpPacket":[B
    move v3, p2

    .line 122
    .local v3, "tmpNext":I
    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_10

    move v4, v6

    .line 157
    :goto_f
    return v4

    .line 126
    :cond_10
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, v5, v3

    .line 127
    .local v2, "sensorCount":I
    if-gtz v2, :cond_27

    .line 128
    mul-int/lit8 v2, v2, -0x1

    .line 130
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v7, v5, v4

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v8, v5, v3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    :cond_27
    move v3, v4

    .line 134
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    new-array v7, v2, [I

    iput-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :goto_2e
    if-ge v0, v2, :cond_60

    .line 137
    array-length v7, v5

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_39

    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    move v4, v6

    .line 138
    goto :goto_f

    .line 141
    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_39
    if-gtz v0, :cond_50

    .line 142
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v9, v5, v4

    add-int/2addr v8, v9

    aput v8, v7, v0

    .line 149
    :goto_46
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    aget v7, v7, v0

    iput v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    .line 136
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    goto :goto_2e

    .line 145
    :cond_50
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    add-int/lit8 v9, v0, -0x1

    aget v8, v8, v9

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v9, v5, v4

    add-int/2addr v8, v9

    aput v8, v7, v0

    goto :goto_46

    .line 152
    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_60
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 155
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->notifyObserver()V

    move v3, v4

    .line 157
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto :goto_f
.end method
