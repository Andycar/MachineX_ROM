.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;
.source "WakeUpVoiceRunner.java"


# static fields
.field private static final DEFAULT_WAKE_UP_VOICE_MODE:I = 0x1


# instance fields
.field private mMode:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;->mMode:I

    .line 57
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 254
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 255
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;->clear()V

    .line 256
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 242
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 243
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;->disable()V

    .line 244
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 229
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 230
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;->enable()V

    .line 231
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WAKE_UP_VOICE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 4

    .prologue
    .line 89
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 90
    .local v0, "packet":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;->mMode:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 268
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 205
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 217
    return-object p0
.end method

.method public final parse([BI)I
    .registers 9
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 180
    move v2, p2

    .line 182
    .local v2, "tmpNext":I
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_12

    .line 183
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 184
    const/4 v3, -0x1

    .line 194
    :goto_11
    return v3

    .line 187
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "names":[Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p1, v2

    .line 190
    .local v0, "action":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 192
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;->notifyObserver()V

    move v2, v3

    .line 194
    .end local v3    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    goto :goto_11
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 10
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 103
    const/4 v2, 0x1

    .line 105
    .local v2, "result":Z
    const/16 v5, 0x10

    if-ne p1, v5, :cond_51

    .line 106
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 110
    :cond_17
    const-string/jumbo v5, "value is null"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 158
    .end local v3    # "str":Ljava/lang/String;
    :goto_1d
    return v4

    .line 114
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1e
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 115
    .local v0, "dataPacket":[B
    if-eqz v0, :cond_27

    array-length v5, v0

    if-gtz v5, :cond_35

    .line 116
    :cond_27
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1d

    .line 122
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v6, v6, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;->sendPropertyValueToSensorHub(BB[B)Z

    move-result v2

    .end local v0    # "dataPacket":[B
    .end local v3    # "str":Ljava/lang/String;
    :goto_4f
    move v4, v2

    .line 158
    goto :goto_1d

    .line 127
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_51
    const/16 v5, 0x12

    if-ne p1, v5, :cond_9f

    .line 128
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .restart local v3    # "str":Ljava/lang/String;
    if-eqz v3, :cond_65

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 132
    :cond_65
    const-string/jumbo v5, "value is null"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1d

    .line 136
    :cond_6c
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 137
    .restart local v0    # "dataPacket":[B
    if-eqz v0, :cond_75

    array-length v5, v0

    if-gtz v5, :cond_83

    .line 138
    :cond_75
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1d

    .line 144
    :cond_83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GRAMMER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 145
    const/4 v4, 0x2

    invoke-virtual {p0, v6, v4, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;->sendPropertyValueToSensorHub(BB[B)Z

    move-result v2

    .line 149
    goto :goto_4f

    .end local v0    # "dataPacket":[B
    .end local v3    # "str":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_9f
    const/16 v4, 0x35

    if-ne p1, v4, :cond_ce

    .line 150
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 152
    .local v1, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 153
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/WakeUpVoiceRunner;->mMode:I

    goto :goto_4f

    .line 155
    .end local v1    # "mode":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_ce
    const/4 v2, 0x0

    goto :goto_4f
.end method
