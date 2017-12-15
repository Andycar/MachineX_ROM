.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CarryingStatusMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "CarryingStatusMonitorRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 210
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 211
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 212
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 199
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 200
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 201
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 186
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 187
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 188
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARRYING_STATUS_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 83
    .local v0, "packet":[B
    aput-byte v2, v0, v2

    .line 84
    aput-byte v3, v0, v3

    .line 86
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 97
    new-array v0, v2, [B

    .line 100
    .local v0, "packet":[B
    aput-byte v1, v0, v1

    .line 101
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 103
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CarryingStatusMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 224
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 70
    const/16 v0, 0x66

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 162
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 174
    return-object p0
.end method

.method public parse([BI)I
    .registers 9
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 131
    move v1, p2

    .line 133
    .local v1, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CarryingStatusMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "names":[Ljava/lang/String;
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x5

    if-gez v3, :cond_19

    .line 138
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 139
    const/4 v3, -0x1

    .line 151
    :goto_18
    return v3

    .line 142
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 146
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v5, p1, v1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 147
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v5, p1, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 149
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v3, v1

    .line 151
    goto :goto_18
.end method
