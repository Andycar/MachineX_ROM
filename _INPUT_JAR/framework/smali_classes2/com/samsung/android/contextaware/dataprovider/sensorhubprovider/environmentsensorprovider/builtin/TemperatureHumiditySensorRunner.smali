.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "TemperatureHumiditySensorRunner.java"


# instance fields
.field private mHumidityData:[D

.field private mTemperatureData:[D


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 4
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 95
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    .line 97
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    .line 98
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    .line 99
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
    .line 64
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LoggingStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Humidity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/4 v2, 0x3

    new-array v1, v2, [B

    .line 77
    .local v1, "packet":[B
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 79
    .local v0, "data":[B
    const/4 v2, 0x6

    aput-byte v2, v1, v3

    .line 80
    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    .line 81
    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    .line 83
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->checkFaultDetectionResult()Z

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
    .registers 15
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/4 v6, -0x1

    .line 121
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 122
    .local v5, "tmpPacket":[B
    move v3, p2

    .line 124
    .local v3, "tmpNext":I
    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x2

    if-gez v7, :cond_1b

    .line 125
    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v6

    .line 157
    :goto_1a
    return v4

    .line 129
    :cond_1b
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v7, v5, v3

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v8, v5, v4

    and-int/lit16 v8, v8, 0xff

    add-int v2, v7, v8

    .line 131
    .local v2, "sensorCount":I
    if-gtz v2, :cond_36

    .line 132
    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_SENSOR_COUNT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v6

    .line 134
    goto :goto_1a

    .line 137
    :cond_36
    new-array v7, v2, [D

    iput-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    .line 138
    new-array v7, v2, [D

    iput-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :goto_40
    if-ge v0, v2, :cond_7d

    .line 141
    array-length v7, v5

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x2

    if-gez v7, :cond_54

    .line 142
    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    move v4, v6

    .line 143
    goto :goto_1a

    .line 146
    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_54
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v8, v5, v4

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v9, v5, v3

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-double v8, v8

    div-double/2addr v8, v10

    aput-wide v8, v7, v0

    .line 147
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v8, v5, v4

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v9, v5, v3

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-double v8, v8

    div-double/2addr v8, v10

    aput-wide v8, v7, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 150
    :cond_7d
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getLoggingStatus()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 152
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v1, v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 153
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 155
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->notifyObserver()V

    move v3, v4

    .line 157
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto/16 :goto_1a
.end method
